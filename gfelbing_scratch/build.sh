#!/bin/sh

mkdir -p empty
tar -C empty -c . | docker import - gfelbing/scratch
rm -rf empty
