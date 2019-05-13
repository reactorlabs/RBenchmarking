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
  GNU_VM=$(realpath $3)
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

if [[ "$1" == "--save" ]]; then
  shift
  if [[ -z $1 && -d $2 ]]; then
    FILE_TO_SAVE_NAME = "$1"
    DIR_TO_SAVE_MEASUREMENTS = "$2"
    shift
    shift
  else  
    echo "When using the --save option the first two subsequent arguments 
    must be the filename with the output measurements and a valid directory where to copy them"
    exit 1
  fi
fi

pushd . > /dev/null

TMPDIR=$(mktemp -d /tmp/rbench.XXXXXX)
cd $TMPDIR

cp "$REBENCH" .
sed -i.bak "s+%%RIR_VM%%+$RIR_VM+" rebench.conf
sed -i.bak "s+%%GNU_VM%%+$GNU_VM+" rebench.conf
sed -i.bak "s+%%BENCHMARKS_PATH%%+$BENCHS_PATH+" rebench.conf

rebench rebench.conf "$@"
cp "$FILE_TO_SAVE_NAME" "$DIR_TO_SAVE_MEASUREMENTS/$FILE_TO_SAVE_NAME"
RES=$?

popd > /dev/null
rm -rf $TMPDIR
exit $RES
