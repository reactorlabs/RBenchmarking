#!/bin/bash
set -e # make script fail on first error

SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi


$SCRIPT_PATH/../Setup/update.sh
R_UPDATED=$?

if [ $R_UPDATED = "1" ]
then
    $SCRIPT_PATH/runAndPublish.sh
fi