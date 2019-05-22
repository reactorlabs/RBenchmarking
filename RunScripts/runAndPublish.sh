#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/../Setup/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

if [[ "$1" == "--docker" ]]; then
    RIR_PATH="$DOCKER_ROOT_PATH/rir"
    RIR_BUILD_PATH="$RIR_PATH/build/release"
    GNU_R_PATH="$RIR_PATH/external/custom-r"
    BENCHS_PATH="$DOCKER_ROOT_PATH/rbenchmarking/Benchmarks"
    PERSIST_IN="$DOCKER_DATA_PATH/$DATA_FILENAME"
    COMMIT=`git ls-remote https://github.com/reactorlabs/rir HEAD | cut -f1`
    BRANCH="master"
    REBENCH_CONF_PATH="$DOCKER_ROOT_PATH/rbenchmarking/$REBENCH_FILENAME"
    docker pull registry.gitlab.com/rirvm/rir_mirror/benchmark-baseline
else
    RIR_PATH="$IMPLEMENTATIONS_PATH/R/RIR"
    RIR_BUILD_PATH="$RIR_PATH"
    GNU_R_PATH="$RIR_PATH/external/vanilla-r"
    BENCHS_PATH="$ROOT_PATH/Benchmarks"
    PERSIST_IN="$DATA_PATH/$DATA_FILENAME" 
    pushd "$RIR_PATH"
        COMMIT=`git rev-parse HEAD`
        BRANCH=`git symbolic-ref --short HEAD`
    popd 
    REBENCH_CONF_PATH="$ROOT_PATH/$REBENCH_FILENAME"
fi

TIMESTAMP=$(timestamp)
pushd $SCRIPT_PATH/../

PATH_OPTIONS="$REBENCH_CONF_PATH $BENCHS_PATH $RIR_BUILD_PATH $GNU_R_PATH"
REBENCH_OPTIONS="--commit-id=$COMMIT --branch=$BRANCH --environment=PragueDesktop -df $PERSIST_IN-$TIMESTAMP"

if [[ "$1" == "--docker" ]]; then
    OPTIONS_DOCKER_RIR="$PATH_OPTIONS e:PIR e:RIR $REBENCH_OPTIONS"
    # First use the RIR container to run the benchmarks for RIR and PIR
    #`docker run -t -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" "registry.gitlab.com/rirvm/rir_mirror/benchmark:$COMMIT" /opt/rbenchmarking/Setup/run.sh $OPTIONS_DOCKER_RIR`
    OPTIONS_DOCKER_GNU="$PATH_OPTIONS e:GNU-R $REBENCH_OPTIONS"
    # Then use the GNU-R container to run the benchmarks for GNU-R
    `docker run -t -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" "registry.gitlab.com/rirvm/rir_mirror/benchmark-baseline" /opt/rbenchmarking/Setup/run.sh $OPTIONS_DOCKER_GNU`
    echo "$COMMIT" > "$DATA_PATH/$LAST_COMMIT_FILENAME"
else
    OPTIONS_PRG="$PATH_OPTIONS e:GNU-R e:PIR e:RIR $REBENCH_OPTIONS"
    ./Setup/run.sh $OPTIONS_PRG
fi

popd
