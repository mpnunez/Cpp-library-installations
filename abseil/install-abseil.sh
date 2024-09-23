#!/bin/sh

git clone https://github.com/abseil/abseil-cpp.git
cd abseil-cpp
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=../../abseil-installation
cmake --build . --target install
