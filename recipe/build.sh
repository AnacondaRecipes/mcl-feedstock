#!/bin/bash

mkdir build
cd build

if [[ $target_platform == linux-aarch64 ]]; then
    cmake   -DCMAKE_INSTALL_PREFIX=$PREFIX \
            -DCMAKE_CXX_COMPILER=clang++ \
    ..
else
    cmake   -DCMAKE_INSTALL_PREFIX=$PREFIX \
    ..
fi

make
make install
