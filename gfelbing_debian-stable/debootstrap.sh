#!/bin/sh

set -e
set -x
BASEDIR=$(dirname $0)
RELEASE=stable

#sudo debootstrap --arch=amd64 $RELEASE $BASEDIR/$RELEASE
chown -R $USER:$USER $BASEDIR/$RELEASE
rm -rf $BASEDIR/$RELEASE/dev/**
