#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/../Setup/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

pushd $IMPLEMENTATIONS_PATH/R/RIR
COMMIT=`git rev-parse HEAD`
BRANCH=`git symbolic-ref --short HEAD`
popd > /dev/null

TIMESTAMP=$(timestamp)

pushd $SCRIPT_PATH/../
./Setup/run.sh rebench.conf Implementations/R/RIR Implementations/R/RIR/external/vanilla-r Benchmarks/ e:PIR e:RIR e:GNU-R --commit-id=$COMMIT --branch=$BRANCH --environment="PragueDesktop"

if [ ! -d $DATA_DIR ]
then
    mkdir $DATA_DIR
fi 
mv $DATA_FILENAME $DATA_DIR/$DATA_FILENAME-$TIMESTAMP

popd > /dev/null
