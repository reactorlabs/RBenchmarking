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
    if [ "$(uname -s)" = 'Linux' ]; then
      echo $(readlink -f $1)
    else
      [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
    fi
}

if [[ -f "$1" ]]; then
  REBENCH=$(realpath $1)
  shift
else
  echo "First parameter must specify a rebench configuration file"
  exit 1
fi

if [[ -d "$1" ]]; then
  BENCHS_PATH=$(realpath $1)
  shift
else
  echo "Benchmarks path does not exist"
  exit 1
fi

if [[ -d "$1" && $# -gt 1 ]]; then
  RIR_VM=$(realpath $1)
  shift
else
  WARN "RIR VM dir does not exist: beware that if you want to run benchmarks for RIR it will fail"
fi

if [[ -d "$1" && $# -gt 1 ]]; then
  GNU_VM=$(realpath $1)
  shift
else
  WARN "GNU VM dir does not exist: beware that if you want to run benchmarks for GNU-R it will fail"
fi

if [[ -d "$1" && $# -gt 1 ]]; then
  FASTR_VM=$(realpath $1)
  shift
else
  WARN "FASTR dir does not exist: beware that if you want to run benchmarks for FAST-R it will fail"
fi

if [[ $# -gt 1 ]]; then
  echo expected 1 argument but got "$@", did you forget to quote rebench args?
fi
if [[ $# -eq 0 ]]; then
  echo missing rebench args
fi
if [[ $# -ne 1 ]]; then
  exit 1
fi

TMPDIR=$(mktemp -d /tmp/rbench.XXXXXX)
pushd $TMPDIR

cp "$REBENCH" .

# generate the configuration part relative to the genthat testcases
"$BUILD_SCRIPTS/genthat_rebenchconf.py" "$BENCHS_PATH/genthat-CRAN" > rebench-genthat.conf.inc

# insert this configuration part into the main configuration
sed -i.bak -e $'/%%GENTHAT_BENCHMARKS%%/{r rebench-genthat.conf.inc\n d}' rebench.conf

if [[ ! -z $RIR_VM ]]; then
  sed -i.bak "s+%%RIR_VM%%+$RIR_VM+" rebench.conf
fi 
if [[ ! -z $GNU_VM ]]; then
  sed -i.bak "s+%%GNU_VM%%+$GNU_VM+" rebench.conf
fi
if [[ ! -z $FASTR_VM ]]; then
  sed -i.bak "s+%%FASTR_VM%%+$FASTR_VM+" rebench.conf
fi
sed -i.bak "s+%%BENCHMARKS_PATH%%+$BENCHS_PATH+" rebench.conf

rebench rebench.conf $1
RES=$?

popd
rm -rf $TMPDIR
exit $RES
