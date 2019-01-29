#!/bin/bash
set -e

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

ROOT_PATH="$SCRIPT_PATH/.."
BUILDSCRIPTS_PATH="$ROOT_PATH"/Setup/buildScripts
source $BUILDSCRIPTS_PATH/basicFunctions.inc
BENCHMARKS_PATH="$ROOT_PATH"/Benchmarks
RIR_PATH=$ROOT_PATH/../rir/build/release
VANILLA_PATH=/usr
R_CMD="bin/R"
OUT_PATH="$SCRIPT_PATH/Benchmarks.csv"

if [ "$#" -lt 1 ]; then
    ERR "The script expects at least one argument: the name of the benchmark to be profiled"
    exit 1
fi

BENCH_FULLPATH="$1"
if [ "$2" == "+all" ]; then
BENCH_SIZE=""
BENCH_OPT="$2"
else
BENCH_SIZE="$2"
BENCH_OPT="$3"
fi
BENCH_NAME=$(basename $BENCH_FULLPATH)

## Copy the benchmark and enable the profiler
if [ -e "$BENCH_FULLPATH" ]; then
cp "$BENCH_FULLPATH" .
else
cp "$BENCHMARKS_PATH/$BENCH_FULLPATH" .
fi

BENCH="source(\"$SCRIPT_PATH/$BENCH_NAME\"); time <- system.time(replicate(100, execute($BENCH_SIZE))); text <- readLines(\"$OUT_PATH\"); text[[length(text)]] <- sprintf(\"%s,%f\", text[[length(text)]], time[[1]]); write(text, \"$OUT_PATH\");"

## Run the benchmark with R profiling enabled
if [ "$BENCH_OPT" != "+cprof" ]
then
echo "$BENCH_NAME" >> "$OUT_PATH"
R_ENABLE_JIT=3 "$VANILLA_PATH/$R_CMD" -q -e "$BENCH"
R_ENABLE_JIT=0 "$VANILLA_PATH/$R_CMD" -q -e "$BENCH"
R_ENABLE_JIT=3 PIR_ENABLE=off "$RIR_PATH/$R_CMD" -q -e "$BENCH"
R_ENABLE_JIT=3 "$RIR_PATH/$R_CMD" -q -e "$BENCH"
fi

## Run the benchmark with C profiling (callgrind)
if [ "$BENCH_OPT" == "+cprof" ] || [ "$BENCH_OPT" == "+all" ]
then
    R_ENABLE_JIT=0 "$VANILLA_PATH/$R_CMD" --slave -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($BENCH_SIZE)" -d "valgrind --tool=callgrind"
    R_ENABLE_JIT=3 "$RIR_PATH/$R_CMD" --slave -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($BENCH_SIZE)" -d "valgrind --tool=callgrind"
fi

# Cleanup
rm $BENCH_NAME
