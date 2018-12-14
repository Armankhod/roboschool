#!/bin/bash
set -ex

if [ $(uname) == 'Linux' ]; then
    docker run -v $PWD:/io python:${MB_PYTHON_VERSION} /io/docker_build_wheel.sh
fi

if [ $(uname) == 'Darwin' ]; then;
    echo "In construction"
    exit 1
fi
