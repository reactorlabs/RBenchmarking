#!/usr/bin/env bash

log () {
  > /dev/stderr printf "$@"
}


if [[ $# -ne 1 ]]; then
  log "count_tests.sh <testcases_dir>\n"
  exit 1
fi

find "$1" -mindepth 1 -maxdepth 1 -type d -print0 | \
  sort -z | \
  xargs -r0 -n1 bash -c 'printf "%s: %s\n" "$(basename "$1")" "$(find "$1" -name "*.R" -printf . | wc -c)"' _

printf "\nTOTAL: %s\n" "$(find "$1" -name "*.R" -printf . | wc -c)"
