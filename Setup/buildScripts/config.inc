#!/bin/bash

# make SCRIPT_PATH absolute
pushd `dirname $0` > /dev/null
SCRIPT_PATH=`pwd`
popd > /dev/null

if [ -z $ROOT_PATH ]
then
  ROOT_PATH="$SCRIPT_PATH/../.."
fi

RIR_NAME="RIR"
IMPLEMENTATIONS_PATH=$ROOT_PATH/Implementations
DATA_DIR=$ROOT_PATH/Data
BENCHMARKS_DIR=$ROOT_PATH/Benchmarks

