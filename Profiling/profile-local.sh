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
LOCAL_PATH=$ROOT_PATH/../rir/build/release
MASTER_PATH=$ROOT_PATH/../rir/build/master
R_PATH=$ROOT_PATH/../rir/external/vanilla-r
R_CMD="bin/R"

if [ "$#" -lt 1 ]; then
    ERR "The script expects at least one argument: the name of the benchmark to be profiled"
    exit 1
fi

BENCH_FULLPATH="$1"
OUT_PATH="$SCRIPT_PATH/Benchmarks_$2.csv"
if [ "$3" == "-l" ]; then
BENCH_SIZE=""
LOOP="$3"
else
BENCH_SIZE="$3"
LOOP="$4"
fi
BENCH_NAME=$(basename $BENCH_FULLPATH)

## Copy the benchmark and enable the profiler
if [ -e "$BENCH_FULLPATH" ]; then
cp "$BENCH_FULLPATH" .
else
cp "$BENCHMARKS_PATH/$BENCH_FULLPATH" .
fi

if [ "$LOOP" == "-l" ]; then
  BENCH="source(\"$SCRIPT_PATH/$BENCH_NAME\"); time <- system.time(for (i in 1:10) { execute($BENCH_SIZE) }); text <- readLines(\"$OUT_PATH\"); text[[length(text)]] <- sprintf(\"%s,%f\", text[[length(text)]], time[[1]]); write(text, \"$OUT_PATH\");"
else
  BENCH="source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute(1); execute(1); execute(1); time <- system.time(for (i in 1:10) { execute($BENCH_SIZE) }); text <- readLines(\"$OUT_PATH\"); text[[length(text)]] <- sprintf(\"%s,%f\", text[[length(text)]], time[[1]]); write(text, \"$OUT_PATH\");"
fi

EARLY_EXIT="rm $BENCH_NAME"

## Run the benchmark with R profiling enabled
echo "Running $BENCH_NAME"
echo "$BENCH_NAME" >> "$OUT_PATH"
# R_ENABLE_JIT=3 "$LOCAL_PATH/$R_CMD" -q -e "$BENCH" -d gdb || ($EARLY_EXIT)
# R_ENABLE_JIT=3 "$MASTER_PATH/$R_CMD" -q -e "$BENCH" > /dev/null || ($EARLY_EXIT)
R_ENABLE_JIT=3 PIR_ENABLE=off SKIP_PROFILE=1 "$LOCAL_PATH/$R_CMD" -q -e "$BENCH" > /dev/null || ($EARLY_EXIT)
R_ENABLE_JIT=3 PIR_ENABLE=off SKIP_PROFILE=1 "$MASTER_PATH/$R_CMD" -q -e "$BENCH" > /dev/null || ($EARLY_EXIT)
"$R_PATH/$R_CMD" -q -e "$BENCH" > /dev/null || ($EARLY_EXIT)

# Cleanup
rm $BENCH_NAME
