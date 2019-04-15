#!/bin/bash
set -e # make script fail on first error

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILD_SCRIPTS=$SCRIPT_PATH/buildScripts
source $BUILD_SCRIPTS/basicFunctions.inc

if [ "$1" == "--installRebench" ]
then
    ## We use a patched version that supports the usage of env variables
    ## in commands. Otherwise pip install --user ReBench
    git clone https://github.com/charig/ReBench.git -b envVarsSupport
    pushd ReBench > /dev/null
    pip install --user .
    popd > /dev/null
fi


## Check for requirements
check_for_tools git ant make mv uname cc c++ rebench pdflatex
check_for_libs pcre bz2 curl readline
check_for_node    "non-fatal"

if [ ! -d "$IMPLEMENTATIONS_PATH" ]
then
        mkdir "$IMPLEMENTATIONS_PATH"
fi

$BUILD_SCRIPTS/build-r.sh "$RIR_NAME" "https://github.com/reactorlabs/rir.git" "$RIR_BRANCH"
#$BUILDSCRIPTS/build-pharo.sh
$BUILD_SCRIPTS/build-benchmarks.sh

OK done.
