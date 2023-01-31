#!/usr/bin/env bash

SCRIPT_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo SCRIPT_ROOT, $SCRIPT_ROOT
STAGE=npu-uarch-timeloop-rl
VERSION=v2.0

pushd ${SCRIPT_ROOT}
docker build -t ${STAGE}:${VERSION} ${SCRIPT_ROOT} -f ${SCRIPT_ROOT}/$1
popd
