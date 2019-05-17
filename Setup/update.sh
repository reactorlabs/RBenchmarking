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

if [[ "$1" == "--docker" ]]; then
    COMMIT_ID=`git ls-remote https://github.com/reactorlabs/rir HEAD | cut -f1`
    PREVIOUS_COMMIT_ID=`head -1 "$DATA_PATH/$LAST_COMMIT_FILENAME"`
    if [[ "$COMMIT_ID" != "PREVIOUS_COMMIT_ID" ]]; then
        R_UPDATED=1
    else
        R_UPDATED=0
    fi
else
    $SCRIPT_PATH/updateR.sh
    R_UPDATED=$?
fi

exit $R_UPDATED