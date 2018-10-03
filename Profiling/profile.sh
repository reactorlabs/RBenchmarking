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
RIR_PATH=$ROOT_PATH/Implementations/R/RIR
VANILLA_PATH=$RIR_PATH/external/vanilla-r
R_CMD="bin/R"

if [ "$#" < 2 ]; then
    ERR "The scripts expects at least two arguments: the name of the benchmark to be profiled and the size of the benchmark"
    exit 1
fi

BENCH_FULLPATH="$1"
BENCH_SIZE="$2"
BENCH_NAME=$(basename $BENCH_FULLPATH)

## Copy the benchmark and enable the profiler
cp "$BENCHMARKS_PATH/$BENCH_FULLPATH" .
sed -i.bak "/execute <- function(/a\\
Rprof(filename = \"$BENCH_NAME-prof\", interval = 0.02, line.profiling = TRUE, memory.profiling = TRUE)
" $BENCH_NAME
rm $BENCH_NAME.bak

## Run the benchmark with R profiling enabled
R_ENABLE_JIT=3 "$VANILLA_PATH/$R_CMD" -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($2)"
mv "$BENCH_NAME-prof" "$BENCH_NAME-profVanilla"
R_ENABLE_JIT=3 PIR_ENABLE=off "$RIR_PATH/$R_CMD" -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($2)"
mv "$BENCH_NAME-prof" "$BENCH_NAME-profRIR"
R_ENABLE_JIT=3 "$RIR_PATH/$R_CMD" -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($2)"
mv "$BENCH_NAME-prof" "$BENCH_NAME-profPIR"

## Run the benchmark with C profiling (callgrind)
if [ "$3" == "+cprof" ]
then
    R_ENABLE_JIT=3 "$VANILLA_PATH/$R_CMD" --slave -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($2)" -d "valgrind --tool=callgrind"
    R_ENABLE_JIT=3 "$RIR_PATH/$R_CMD" --slave -e "source(\"$SCRIPT_PATH/$BENCH_NAME\"); execute($2)" -d "valgrind --tool=callgrind"
fi
