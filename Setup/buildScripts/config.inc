#!/bin/bash

CONFIG_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ -z $ROOT_PATH ]
then
  ROOT_PATH="$CONFIG_PATH/../.."
fi

RIR_NAME="RIR"
IMPLEMENTATIONS_PATH="$ROOT_PATH/Implementations"
DATA_DIR=$ROOT_PATH/Data
BENCHMARKS_DIR=$ROOT_PATH/Benchmarks

