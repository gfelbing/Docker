#!/bin/sh

set -e
set -x

BASEDIR=$(dirname $0)
TAR=`ls -d $BASEDIR/jdk-*-linux-x64.tar.gz`
TAR=`basename $TAR`

DOCKERFILE=$BASEDIR/Dockerfile
TEMPLATE=$BASEDIR/Dockerfile.template
. ../evaluate_dockerfile_template

docker build -t gfelbing/jdk8 $BASEDIR
