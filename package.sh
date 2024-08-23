#!/bin/bash

set -xe

cmake .
make -j4

VERSION=`cat build.version`
mkdir -p perf-map-agent
cp -r bin/ out/ perf-map-agent/
tar -cvzf perf-map-agent-$VERSION-linux-x86_64.tar.gz perf-map-agent/
