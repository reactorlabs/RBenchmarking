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

CONTAINER_ID=`get_container_version`
if [[ -z $CONTAINER_ID ]]; then
    echo get_container_version
    ERR "There is no master container in the registry"
    exit 0
fi
PREVIOUS_CONTAINER_ID=`head -1 "$DATA_PATH/$LAST_CONTAINER_FILENAME"`
if [[ "$CONTAINER_ID" != "$PREVIOUS_CONTAINER_ID" ]]; then
    R_UPDATED=1
else
    R_UPDATED=0
fi

exit $R_UPDATED
