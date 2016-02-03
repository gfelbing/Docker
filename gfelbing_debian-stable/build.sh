#!/bin/sh

set -e
set -x
BASEDIR=$(dirname $0)

DOCKERFILE=$BASEDIR/Dockerfile
TEMPLATE=$BASEDIR/Dockerfile.template
. ../evaluate_dockerfile_template

docker build -t gfelbing/debian-stable $BASEDIR
