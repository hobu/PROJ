#!/bin/sh
#

mkdir build
cd build
echo "CONDA_PREFIX: ${CONDA_PREFIX}"

cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF -DCMAKE_INSTALL_PREFIX="$CONDA_PREFIX" ..
ninja install
