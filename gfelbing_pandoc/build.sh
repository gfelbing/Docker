#!/bin/sh

set -e
set -x

BASEDIR=$(dirname $0)
PANDOC=`ls -d $BASEDIR/pandoc*.deb`
PANDOC=`basename $PANDOC`

DOCKERFILE=$BASEDIR/Dockerfile
TEMPLATE=$BASEDIR/Dockerfile.template

. ../evaluate_dockerfile_template

cat $DOCKERFILE

docker build -t gfelbing/pandoc $BASEDIR
