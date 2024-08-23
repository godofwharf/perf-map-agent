#!/bin/bash

set -xe

REPO="godofwharf/perf-map-agent"
VERSION=`cat build.version`
TAG=v$VERSION
gh release create -R $REPO $TAG --notes "Release $VERSION"
gh release upload -R $REPO $TAG perf-map-agent-$VERSION-linux-x86_64.tar.gz
