#!/bin/sh

set -e
set -x
BASEDIR=$(dirname $0)

wget https://github.com/jgm/pandoc/releases/download/1.16.0.2/pandoc-1.16.0.2-1-amd64.deb $BASEDIR
