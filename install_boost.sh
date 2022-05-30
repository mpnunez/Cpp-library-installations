#!/bin/sh

wget https://boostorg.jfrog.io/artifactory/main/release/1.79.0/source/boost_1_79_0.tar.gz
tar -xzf boost_1_79_0.tar.gz
./bootstrap.sh --prefix /path/to/install
./b2 install

