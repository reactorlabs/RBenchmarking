#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH="$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )"
if [ ! -d $SCRIPT_PATH ]; then
    echo "Could not determine absolute dir of $0"
    echo "Maybe accessed with symlink"
fi

BUILDSCRIPTS=$SCRIPT_PATH/../Setup/buildScripts
source $BUILDSCRIPTS/basicFunctions.inc

CONTAINER_ID=`get_container_version`
RIR_PATH="$DOCKER_ROOT_PATH/rir"
RIR_BUILD_PATH="$RIR_PATH/build/release"
GNU_R_PATH="$RIR_PATH/external/custom-r"
FASTR_PATH="$DOCKER_ROOT_PATH/graal"
BENCHS_PATH="$DOCKER_ROOT_PATH/rbenchmarking/Benchmarks"
PERSIST_IN="$DOCKER_DATA_PATH/$DATA_FILENAME"
BRANCH="master"
REBENCH_CONF_PATH="$DOCKER_ROOT_PATH/rbenchmarking/$REBENCH_FILENAME"
docker pull registry.gitlab.com/rirvm/rir_mirror/benchmark-baseline
docker pull registry.gitlab.com/rirvm/rir_mirror/benchmark:master

TIMESTAMP=$(timestamp)
pushd $SCRIPT_PATH/../

if [[ "$1" == "--docker" ]]; then
    echo "docker run --privileged=true -v $ROOT_PATH:$DOCKER_OUT_VOL_NAME registry.gitlab.com/rirvm/rir_mirror/benchmark:master cat $CONTAINER_COMMIT_FILENAME > $DOCKER_DATA_PATH/$CURRENT_COMMIT_FILENAME" 
    COMMAND="cat $CONTAINER_COMMIT_FILENAME > $DOCKER_DATA_PATH/$CURRENT_COMMIT_FILENAME"
    docker run --privileged=true -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" "registry.gitlab.com/rirvm/rir_mirror/benchmark:master" bash -c "${COMMAND}"
    COMMIT=$(head -n 1 $DATA_PATH/$CURRENT_COMMIT_FILENAME)
fi

PATH_OPTIONS="$REBENCH_CONF_PATH $BENCHS_PATH $RIR_BUILD_PATH $GNU_R_PATH $FASTR_PATH"
REBENCH_OPTIONS="--commit-id=$COMMIT --branch=$BRANCH --environment=PragueDesktop -df $PERSIST_IN-$TIMESTAMP"

# First use the RIR container to run the benchmarks for RIR and PIR
echo docker run --privileged=true -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" "registry.gitlab.com/rirvm/rir_mirror/benchmark:master" /opt/rbenchmarking/Setup/run.sh $PATH_OPTIONS "e:PIR e:RIR $REBENCH_OPTIONS"
docker run --privileged=true -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" "registry.gitlab.com/rirvm/rir_mirror/benchmark:master" /opt/rbenchmarking/Setup/run.sh $PATH_OPTIONS "e:PIR e:RIR $REBENCH_OPTIONS"
# Then use the GNU-R container to run the benchmarks for GNU-R
docker run --privileged=true -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" "registry.gitlab.com/rirvm/rir_mirror/benchmark-baseline" /opt/rbenchmarking/Setup/run.sh $PATH_OPTIONS "e:GNU-R e:FASTR $REBENCH_OPTIONS"
echo "$CONTAINER_ID" > "$DATA_PATH/$LAST_CONTAINER_FILENAME"

popd
