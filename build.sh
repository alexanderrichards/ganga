#!/bin/bash
# Run with two args for Ganga and DIRAC versions
# e.g. ./build.sh 8.3.3 v6r22p26
DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain --build-arg dirac_version="$2" --build-arg ganga_version="$1" --tag="alexanderrichards/ganga:${1}-${2}" .
DOCKER_BUILDKIT=1 docker build --progress=plain --build-arg dirac_version="$2" --build-arg ganga_version="$1" --tag="alexanderrichards/ganga:latest" .
