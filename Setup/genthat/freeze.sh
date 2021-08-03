#!/usr/bin/env bash
set -u

CWD="$(dirname "$(readlink -f "$0")")"
cd "$CWD" || exit 1

if [[ $# -ne 2 ]]; then
  > /dev/stderr printf "ERROR: Requires two arguments\n"
  > /dev/stderr printf "freeze.sh <packages.txt> <lockfile.txt>\n\n"
  exit 1
fi;

export PKG_TXT="$1"
export LOCKFILE="$2"


process_pkg () {
  IFS=, read PKG VERSION <<< "$1"
  VERSION="$(Rscript -e "cat(as.character(packageVersion(\"$PKG\")))" || echo NULL)"

  printf "%s,%s\n" "$PKG" "$VERSION"
}
export -f process_pkg


{
  < "$PKG_TXT" xargs -r -n1 bash -c 'process_pkg "$@"' _
} > "$LOCKFILE"
