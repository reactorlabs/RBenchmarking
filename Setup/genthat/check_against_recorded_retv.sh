#!/usr/bin/env bash
set -u

log () {
  > /dev/stderr printf "$@"
}
export -f log

if [[ $# != 2 ]]; then
  log "check_against_recorded_retv.sh <harness.r> <genthat_benchmarks_dir>\n"
  exit 1
fi


export HARNESS="$(realpath "$1")"
export BENCHDIR="$(realpath "$2")"

export OUTER_ITERATIONS=1
export INNER_ITERATIONS=10


# Running the scripts sometimes creates files
TMP="$(mktemp -d)"
pushd "$TMP"

process_benchmark () {
  EXTFILE="$1"
  CLASSNAME="${EXTFILE%.*}"
  BENCHMARK="$CLASSNAME.R"

  log "Checking %s\n" "$BENCHMARK"

  "$HARNESS" "$CLASSNAME" "$OUTER_ITERATIONS" "$INNER_ITERATIONS" > /dev/null 2> /dev/null || {
    FAILED_BENCH="$BENCHMARK.failed_harness"
    FAILED_EXT="$EXTFILE.failed_harness"
    log "%s: failed to run, or returns wrong retv in one of the iterations. Renaming to %s.\n" "$BENCHMARK" "$FAILED"
    mv "$BENCHMARK" "$FAILED_BENCH"
    mv "$EXTFILE" "$FAILED_EXT"
  }
}
export -f process_benchmark

find "$BENCHDIR" -name "*.ext" -type f -print0 |
  sort -z |
  xargs -P16 -r0 -n1 bash -c 'process_benchmark "$@"' _
