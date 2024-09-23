#!/bin/sh

wget https://zlib.net/current/zlib.tar.gz
mkdir zlib-latest && tar xf zlib.tar.gz -C zlib-latest --strip-components 1
cd zlib-latest
./configure --prefix=../zlib-installation
make
make test
make install

