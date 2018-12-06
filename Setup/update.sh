#!/bin/bash
set -e # make script fail on first error

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

INFO "Updating Benchmarking Setup"
    pushd $SCRIPT_PATH/../
    git pull origin master
    popd > /dev/null
OK "Benchmarks Update Completed." 

$SCRIPT_PATH/updateR.sh
R_UPDATED=$?

exit $R_UPDATED