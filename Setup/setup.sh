#!/bin/bash
set -e # make script fail on first error

SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
BUILD_SCRIPTS=$SCRIPT_PATH/buildScripts

source $BUILD_SCRIPTS/basicFunctions.inc

## Check for requirements
check_for_tools git ant make mv uname cc c++ rebench pdflatex
check_for_libs libpcre libbz2 libcurl libreadline
check_for_node    "non-fatal"

if [ ! -d "$IMPLEMENTATIONS_PATH" ]
then
        mkdir "$IMPLEMENTATIONS_PATH"
fi

$BUILD_SCRIPTS/build-r.sh "$RIR_NAME" "https://github.com/reactorlabs/rir.git" "$RIR_BRANCH"
#$BUILDSCRIPTS/build-pharo.sh
$BUILD_SCRIPTS/build-benchmarks.sh

OK done.
