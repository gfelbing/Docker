#!/bin/sh

set -e
set -x
BASEDIR=$(dirname $0)
VERSION="3.7"

wget http://apache.openmirror.de/cassandra/$VERSION/apache-cassandra-$VERSION-bin.tar.gz .
