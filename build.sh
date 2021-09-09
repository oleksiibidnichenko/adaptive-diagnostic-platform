#!/bin/bash

BUILD_DIR="$(pwd)/build"
TARGET_BUILD_DIR="/tmp/build"

SRC_DIR="$(pwd)"
TARGET_SRC_DIR="/tmp/source"

CONTAINER_NAME=rpi-adaptive-diagnostic-platform

# First argument is a build type, set RELEASE by default
# TODO(bidnichenko): add better input arguments handling
if [ -z "$1" ]; then
    BUILD_TYPE=$1
else
    BUILD_TYPE="RELEASE"
fi

mkdir -p $BUILD_DIR

docker run -d \
  -it \
  --name ${CONTAINER_NAME} \
  --mount type=bind,source="$SRC_DIR",target=${TARGET_SRC_DIR},readonly,bind-propagation=rslave \
  --mount type=bind,source="$BUILD_DIR",target=${TARGET_BUILD_DIR},bind-propagation=rshared \
  bidnichenkoalex/rpi-adaptive-diagnostic-platform:latest

docker exec -it \
    -e BUILD_DIR=${TARGET_BUILD_DIR} \
    -e SOURCE_DIR=${TARGET_SRC_DIR} \
    -e BUILD_TYPE=${BUILD_TYPE} \
   ${CONTAINER_NAME} bash -c \
        'cd $BUILD_DIR;
         cmake -DCMAKE_TOOLCHAIN_FILE=/arm.toolchain.cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE $SOURCE_DIR;
         make -j $(nproc)'

docker rm -f $(docker ps --filter name=${CONTAINER_NAME} -q)
