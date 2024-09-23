#!/bin/sh

mkdir build && cd build
cmake -B build -DCMAKE_PREFIX_PATH=../abseil-installation
cmake --build build --target hello_world
