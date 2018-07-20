#!/bin/bash
#set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/basicFunctions.inc

INFO Building Benchmarks
if [ ! -d $BENCHMARKS_DIR ]
then
  mkdir $BENCHMARKS_DIR
fi
checkout $BENCHMARKS_DIR/AreWeFast "https://github.com/charig/are-we-fast-yet.git" "RBenchs" "benchmarks"
OK Benchmarks Build Completed.
