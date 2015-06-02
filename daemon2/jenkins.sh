#!/usr/bin/env bash
set -e

./getdeps.sh
rm -rf _build
mkdir _build
BUILD_DIR=`pwd`/_build
./config/autogen.sh
./configure --prefix=$BUILD_DIR
make
make install

