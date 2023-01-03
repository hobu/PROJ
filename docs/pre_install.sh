#!/bin/sh
#

mkdir build
cd build
echo "CONDA_PREFIX: ${CONDA_PREFIX}"

CONDA_PREFIX="/home/docs/checkouts/readthedocs.org/user_builds/proj-local/conda/$READTHEDOCS_VERSION"

$CONDA_PREFIX/bin/activate

cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF -DCMAKE_INSTALL_PREFIX=$CONDA_PREFIX -DCMAKE_PREFIX_PATH=$CONDA_PREFIX ..

ninja install
