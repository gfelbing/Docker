#!/bin/sh

set -e
set -x

BASEDIR=$(dirname $0)
TAR=`ls -d $BASEDIR/apache-cassandra-*-bin.tar.gz`
TAR=`basename $TAR`

DOCKERFILE=$BASEDIR/Dockerfile
TEMPLATE=$BASEDIR/Dockerfile.template
. ../evaluate_dockerfile_template

docker build -t gfelbing/cassandra $BASEDIR
