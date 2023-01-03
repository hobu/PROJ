#!/bin/sh
#

CONDA_PREFIX="/home/docs/checkouts/readthedocs.org/user_builds/proj-local/conda/$READTHEDOCS_VERSION"

export PATH="$CONDA_PREFIX/bin:$PATH"
export PROJ_DATA="$CONDA_PREFIX/share/proj"

pushd docs/plot
python plot.py plotdefs.json images
popd

mkdir -p docs/source/operations/projections/images/
cp -r docs/plot/images/* docs/source/operations/projections/images/
