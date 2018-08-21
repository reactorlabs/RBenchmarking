#!/bin/bash
set -e # make script fail on first error

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc


INFO "Updating $RIR_NAME"
    update_git_repo $IMPLEMENTATIONS_PATH/R/$RIR_NAME
    R_UPDATED=$dirty
    if [ $R_UPDATED = "1" ] 
    then
        pushd $IMPLEMENTATIONS_PATH/R/$RIR_NAME
        tools/sync.sh --vanilla
        cmake .; make; make vanilla-gnur
        popd > /dev/null
    fi
OK $RIR_NAME Update Completed.

exit $R_UPDATED
