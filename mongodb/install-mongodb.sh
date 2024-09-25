#!/bin/sh

curl -OL https://github.com/mongodb/mongo-cxx-driver/releases/download/r3.10.1/mongo-cxx-driver-r3.10.1.tar.gz
tar -xzf mongo-cxx-driver-r3.10.1.tar.gz
cd mongo-cxx-driver-r3.10.1/build

cmake .. -DCMAKE_BUILD_TYPE=Release

cmake --build .
sudo cmake --build . --target install
