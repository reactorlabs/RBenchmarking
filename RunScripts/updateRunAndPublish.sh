#!/bin/bash

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/../Setup/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

export PATH="$PATH:/usr/local/bin" 

$SCRIPT_PATH/../Setup/update.sh

R_UPDATED=$?
if [[ ! "$R_UPDATED" -eq 0 ]]; then
    "$SCRIPT_PATH/runAndPublish.sh"
else
    WARN "RIR has not changed. Benchmarks were not run!"
fi
