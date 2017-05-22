#!/bin/bash

CURRENT_DIR=$(cd $(dirname $0);pwd)
ROOT_DIR=$(dirname ${CURRENT_DIR})
IMAGE_DIR=${ROOT_DIR}/docker

cd ${IMAGE_DIR}

docker build -t ctflocal -f  Dockerfile .
