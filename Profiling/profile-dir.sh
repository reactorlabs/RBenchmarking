#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

ROOT_PATH="$SCRIPT_PATH/.."
BENCHMARKS_PATH="$ROOT_PATH"/Benchmarks
OUT_PATH="$SCRIPT_PATH/Benchmarks.csv"

if [ "$#" -lt 1 ]; then
    ERR "The script expects at least one argument: the name of the benchmark directory to be profiled"
    exit 1
fi

echo "Time (s),Bytecode,AST,RIR,PIR" > "$OUT_PATH"
find $BENCHMARKS_PATH/$1 -name "*.R" -type f -exec ./profile-local.sh {} $2 $3 \;

