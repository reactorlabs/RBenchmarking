#!/usr/bin/env bash
set -e

SCRIPT_PATH=`cd $(dirname "$0") && pwd`
if [ ! -d $SCRIPT_PATH ]; then
  echo "Could not determine absolute dir of $0"
  echo "Maybe accessed with symlink"
fi

BUILD_SCRIPTS=$SCRIPT_PATH/buildScripts
source $BUILD_SCRIPTS/basicFunctions.inc

# Find abs path in MacOS
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

if [[ ! -f "$1" ]]; then
  echo "First parameter must specify a rebench configuration file"
  exit 1
fi

if [[ ! -d "$2" ]]; then
  echo "$BENCHS_PATH does not exist"
  exit 1
fi

if [[ ! -d "$3" ]]; then
  WARN "$RIR_VM does not exist: beware that if you want to run benchmarks for RIR it will fail"
fi

if [[ ! -d "$4" ]]; then
  WARN "$$GNU_VM does not exist: beware that if you want to run benchmarks for GNU-R it will fail"
fi

if [ "$(uname -s)" = 'Linux' ]; then
  REBENCH=$(readlink -f $1)
  BENCHS_PATH=$(readlink -f $2)
  if [[ -d "$3" ]]; then
    RIR_VM=$(readlink -f $3)
  fi
  if [[ -d "$4" ]]; then
    GNU_VM=$(readlink -f $4)
  fi
else
  REBENCH=$(realpath $1)
  BENCHS_PATH=$(realpath $2)
  if [[ -d "$3" ]]; then
    RIR_VM=$(realpath $3)
  fi
  if [[ -d "$4" ]]; then
    GNU_VM=$(realpath $4)
  fi
fi


shift
shift
shift
shift

pushd . > /dev/null

TMPDIR=$(mktemp -d /tmp/rbench.XXXXXX)
cd $TMPDIR

cp "$REBENCH" .
if [[ ! -z $RIR_VM ]]; then
  sed -i.bak "s+%%RIR_VM%%+$RIR_VM+" rebench.conf
fi 
if [[ ! -z $GNU_VM ]]; then
  sed -i.bak "s+%%GNU_VM%%+$GNU_VM+" rebench.conf
fi
sed -i.bak "s+%%BENCHMARKS_PATH%%+$BENCHS_PATH+" rebench.conf

rebench rebench.conf "$@"
RES=$?

popd
rm -rf $TMPDIR
exit $RES
