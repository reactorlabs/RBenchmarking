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
PERSIST_IN="$DOCKER_DATA_PATH/areWeFast.dat"
BRANCH="master"
REBENCH_CONF_PATH="$DOCKER_ROOT_PATH/rbenchmarking/rebench.conf"
docker pull registry.gitlab.com/rirvm/rir_mirror/benchmark-baseline
docker pull registry.gitlab.com/rirvm/rir_mirror/benchmark:master

TIMESTAMP=$(timestamp)
pushd $SCRIPT_PATH/../

RIR_CONTAINER="registry.gitlab.com/rirvm/rir_mirror/benchmark:master"
BL_CONTAINER="registry.gitlab.com/rirvm/rir_mirror/benchmark-baseline"
RUN="/opt/rbenchmarking/Setup/run.sh"

COMMIT=$(docker run $RIR_CONTAINER cat /opt/rir_version)
echo "Commit $COMMIT"

PATH_OPTIONS="$REBENCH_CONF_PATH $BENCHS_PATH"
REBENCH_OPTIONS="--commit-id=$COMMIT --branch=$BRANCH --environment=PragueDesktopASDF -df $PERSIST_IN-$TIMESTAMP"

# First use the RIR container to run the benchmarks for RIR and PIR
docker run --privileged=true -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" $RIR_CONTAINER \
  $RUN $PATH_OPTIONS $RIR_BUILD_PATH "e:PIR e:RIR $REBENCH_OPTIONS"

# Then use the GNU-R container to run the benchmarks for GNU-R
# NOTE: the "." instead of RIR_BUILD_PATH is a hack since no built version of rir exists in the baseline container
docker run --privileged=true -v "$ROOT_PATH:$DOCKER_OUT_VOL_NAME" $BL_CONTAINER \
  $RUN $PATH_OPTIONS . $GNU_R_PATH $FASTR_PATH "e:GNU-R e:FASTR $REBENCH_OPTIONS"

echo "$CONTAINER_ID" > "$DATA_PATH/$LAST_CONTAINER_FILENAME"

popd
