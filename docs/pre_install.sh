#!/bin/sh
#

mkdir build
cd build
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF -DCMAKE_INSTALL_PREFIX="$CONDA_PREFIX" -DCMAKE_INSTALL_LIBDIR=lib ..
ninja install
