#!/bin/bash
set -e # make script fail on first error

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

BRANCH=$1
git checkout $1
git pull origin $1

INFO "Updating $RIR_NAME"
    pushd $IMPLEMENTATIONS_PATH/R/$RIR_NAME
    git pull origin $RIR_BRANCH
    tools/sync.sh --vanilla
    make
    popd > /dev/null
OK $NAME Update Completed.

INFO "UPDATING Benchmarks"
    pushd $BENCHMARKS_DIR/AreWeFast
    git pull origin RBenchs    
    popd > /dev/null
OK "Benchmarks Update Completed." 