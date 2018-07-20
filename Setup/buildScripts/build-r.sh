#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/basicFunctions.inc

INFO Building R 
NAME="$1"
REPO_URL="$2"

if [ ! -z "$3" ]
then
  BRANCH="$3"
else
  BRANCH="master"
fi

if [ ! -d $IMPLEMENTATIONS_PATH/R ]
then
  mkdir $IMPLEMENTATIONS_PATH/R
fi
#checkout $IMPLEMENTATIONS_PATH/R/$NAME $REPO_URL $BRANCH
pushd $IMPLEMENTATIONS_PATH/R/$NAME
INFO Compiling $NAME
cmake .; make setup; make
OK $NAME Compilation Completed.
popd > /dev/null
OK R Build Completed