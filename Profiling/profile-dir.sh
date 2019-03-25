#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

ROOT_PATH="$SCRIPT_PATH/.."
BENCHMARKS_PATH="$ROOT_PATH"/Benchmarks

if [ "$#" -lt 1 ]; then
    ERR "The script expects at least one argument: the name of the benchmark directory to be profiled"
    exit 1
fi

OUT_PATH="$SCRIPT_PATH/Benchmarks_$1.csv"

echo "Time (s),Local RIR,Master RIR,GNUR" > "$OUT_PATH"
find $BENCHMARKS_PATH/$1 -name "*.[Rr]" -type f -exec ./profile-local.sh {} $* \;

