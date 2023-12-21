#!/bin/bash

mkdir build
cd build

if [[ $target_platform == linux-aarch64 ]]; then
    cmake   ${CMAKE_ARGS} \
            -DCMAKE_INSTALL_PREFIX=$PREFIX \
            -DCMAKE_BUILD_TYPE=Release \
            -DCMAKE_CXX_COMPILER=clang++ \
    ..
else
    cmake   ${CMAKE_ARGS} \
            -DCMAKE_INSTALL_PREFIX=$PREFIX \
            -DCMAKE_BUILD_TYPE=Release \
    ..
fi

make -j${CPU_COUNT}
make install
