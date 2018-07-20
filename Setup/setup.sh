#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`
BUILDSCRIPTS=$SCRIPT_PATH/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

## Check for requirements
check_for_tools git ant make mv uname cc c++
check_for_node    "non-fatal"

$BUILDSCRIPTS/build-r.sh "$RIR_NAME" "https://github.com/reactorlabs/rir.git"
#$BUILDSCRIPTS/build-pharo.sh
#$BUILDSCRIPTS/build-benchmarks.sh

OK done.
