#!/bin/bash

set -e

mkdir tmp
cd tmp
git clone https://github.com/google/protobuf
cd protobuf
git submodule update --init --recursive
./autogen.sh
./configure
make
make check
sudo make install
sudo ldconfig 
cd ..
rm -rf tmp