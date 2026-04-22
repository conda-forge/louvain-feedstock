#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

export IGRAPH_EXTRA_INCLUDE_PATH=${PREFIX}/include/igraph
export IGRAPH_EXTRA_LIBRARY_PATH=${PREFIX}/lib

echo "Extra include path: ${IGRAPH_EXTRA_INCLUDE_PATH}"
echo "Extra library path: ${IGRAPH_EXTRA_LIBRARY_PATH}"

sed -i "s/self.use_pkgconfig = False/self.use_pkgconfig = True/" setup.py
sed -i "s/self.external = False/self.external = True/" setup.py
$PYTHON -m pip install . --no-deps --ignore-installed -vv
