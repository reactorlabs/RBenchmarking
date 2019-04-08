#!/usr/bin/env bash
set -e

SCRIPTPATH=`cd $(dirname "$0") && pwd`
if [ ! -d $SCRIPT_PATH ]; then
  echo "Could not determine absolute dir of $0"
  echo "Maybe accessed with symlink"
fi
BENCHMARKS="$SCRIPTPATH"

RIR_VM=$(readlink -f $1)
GNU_VM=$(readlink -f $2)

if [[ ! -d "$RIR_VM" ]]; then
  echo "$RIR_VM does not exist"
  exit 1
fi

if [[ ! -d "$GNU_VM" ]]; then
  echo "$GNU_VM does not exist"
  exit 1
fi

shift
shift

if [[ "$1" == "--warmup" ]]; then
  shift
  WARMUP=$1
  shift
  if [[ "$WARMUP" -ne "$WARMUP" ]]; then
    echo "expected number for --warmup instead of $WARMUP"
    exit 1
  fi
else
  WARMUP=5
fi

pushd . > /dev/null

TMPDIR=$(mktemp -d /tmp/rbench.XXXXXX)
cd $TMPDIR

cp -ra $BENCHMARKS/Benchmarks/ .


cp $BENCHMARKS/template/rebench.conf .
sed -i "s+%%GNU_VM%%+$GNU_VM+" rebench.conf
sed -i "s+%%RIR_VM%%+$RIR_VM+" rebench.conf
sed -i "s+%%WARMUP%%+$WARMUP+" rebench.conf

rebench rebench.conf "$@"
RES=$?

popd > /dev/null
rm -rf $TMPDIR
exit $RES
