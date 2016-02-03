#!/bin/sh

set -e
set -x
BASEDIR=$(dirname $0)
VERSION="3.2.1"

wget http://apache.openmirror.de/cassandra/$VERSION/apache-cassandra-$VERSION-bin.tar.gz .
