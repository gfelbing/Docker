#!/bin/sh

set -e 
set -x

BASEDIR=$(dirname $0)

WDIR_GUEST="/tmp/source"
WDIR_HOST=`realpath $BASEDIR`
COMMAND="python $WDIR_GUEST/test_tensorflow.py"

docker run -it --rm -v $WDIR_HOST:$WDIR_GUEST -w $WDIR_GUEST -u $UID gfelbing/tensorflow "$COMMAND"
