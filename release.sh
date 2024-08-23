#!/bin/bash

set -xe

rm -rf perf-map-agent
docker build -t="cbuild-essentials" .
docker run --entrypoint=/project/package.sh -v ${PWD}:/project cbuild-essentials
bash deploy.sh
