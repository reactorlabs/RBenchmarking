#!/usr/bin/env bash
set -u

log () {
  printf "$@" > /dev/stderr
}
export -f log

if [[ $# -ne 2 ]]; then
  log "pick_one_testcase.sh <testcases_dir_src> <testcases_dir_dest>\n"
  exit 1
fi

export SRC="$(realpath "$1")"
export DEST="$(realpath "$2")"

process_subdir () {
  SUBDIR="$1"

  log "Processing subdir %s\n" "$SUBDIR"
  
  # Extract name of first file from stream listing all the files in the subdir
  TESTFILE="$(find "$SUBDIR" -type f -name "*.R" -print0 | sort -z | sed "s/\x0.*//")"

  if [[ -z "$TESTFILE"  ]]; then
    log "No testcase in %s\n" "$SUBDIR"
    return
  else
    REL="$(realpath --relative-to="$SRC" "$TESTFILE")"

    DEST_TESTFILE="$DEST/$REL"

    log "Copying %s to %s\n" "$TESTFILE" "$DEST_TESTFILE"
    mkdir -p "$(dirname "$DEST_TESTFILE")"
    cp "$TESTFILE" "$DEST_TESTFILE"
  fi
}
export -f process_subdir

find "$SRC" -mindepth 2 -maxdepth 2 -print0 | xargs -r0 -n1 bash -c 'process_subdir "$@"' _

