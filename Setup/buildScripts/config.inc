#!/bin/bash

CONFIG_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

if [ -z $ROOT_PATH ]
then
  ROOT_PATH="$CONFIG_PATH/../.."
fi

RIR_NAME="RIR"
RIR_BRANCH="master"
DATA_DIR_NAME="Data"
DATA_FILENAME="areWeFast.data"
DOCKER_OUT_VOL_NAME="/output"
LAST_COMMIT_FILENAME=".lastMeasure"
REBENCH_FILENAME="rebench.conf"

# Paths
IMPLEMENTATIONS_PATH="$ROOT_PATH/Implementations"
DATA_PATH="$ROOT_PATH/$DATA_DIR_NAME"
BENCHMARKS_PATH="$ROOT_PATH/Benchmarks"
DOCKER_DATA_PATH="$DOCKER_OUT_VOL_NAME/$DATA_DIR_NAME" 
DOCKER_ROOT_PATH="/opt"
