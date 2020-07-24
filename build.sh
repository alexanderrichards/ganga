#!/bin/bash
DOCKER_BUILDKIT=1 docker build --no-cache --progress=plain --secret id=proxy,src=/tmp/x509up_u`id -u` --build-arg dirac_version="$2" --build-arg ganga_version="$1" --tag="alexanderrichards/ganga:$1" .
DOCKER_BUILDKIT=1 docker build --progress=plain --secret id=proxy,src=/tmp/x509up_u`id -u` --build-arg dirac_version="$2" --build-arg ganga_version="$1" --tag="alexanderrichards/ganga:latest" .
