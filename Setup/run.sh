#!/usr/bin/env bash
set -e

SCRIPT_PATH=`cd $(dirname "$0") && pwd`
if [ ! -d $SCRIPT_PATH ]; then
  echo "Could not determine absolute dir of $0"
  echo "Maybe accessed with symlink"
fi
BENCHMARKS="$SCRIPT_PATH"

# Find abs path in MacOS
realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

if [ "$(uname -s)" = 'Linux' ]; then
  REBENCH=$(readlink -f $1)
  RIR_VM=$(readlink -f $2)
  GNU_VM=$(readlink -f $3)
  BENCHS_PATH=$(readlink -f $4)
else
  REBENCH=$(realpath $1)
  RIR_VM=$(realpath $2)
  GNU_VM=$(realpath -f $3)
  BENCHS_PATH=$(realpath $4)
fi

if [[ ! -f "$REBENCH" ]]; then
  echo "First parameter must specify a rebench configuration file"
  exit 1
fi

if [[ ! -d "$RIR_VM" ]]; then
  echo "$RIR_VM does not exist"
  exit 1
fi

if [[ ! -d "$GNU_VM" ]]; then
  echo "$RIR_VM does not exist"
  exit 1
fi

if [[ ! -d "$BENCHS_PATH" ]]; then
  echo "$BENCHS_PATH does not exist"
  exit 1
fi

shift
shift
shift
shift

pushd . > /dev/null

TMPDIR=$(mktemp -d /tmp/rbench.XXXXXX)
cd $TMPDIR

cp "$REBENCH" .
sed -i.bak "s+%%RIR_VM%%+$RIR_VM+" rebench.conf
sed -i.bak "s+%%GNU_VM%%+$GNU_VM+" rebench.conf
sed -i.bak "s+%%BENCHMARKS_PATH%%+$BENCHS_PATH+" rebench.conf

rebench rebench.conf "$@"
RES=$?

popd > /dev/null
rm -rf $TMPDIR
exit $RES
