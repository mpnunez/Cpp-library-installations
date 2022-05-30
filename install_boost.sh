#!/bin/sh

wget https://boostorg.jfrog.io/artifactory/main/release/1.79.0/source/boost_1_79_0.tar.gz
tar -xzf boost_1_79_0.tar.gz
cd boost_1_79_0
./bootstrap.sh --prefix ../1.79.0
./b2 install

