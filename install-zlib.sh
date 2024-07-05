#!/bin/sh

wget https://zlib.net/zlib-1.2.12.tar.gz
tar -xzf zlib-1.2.12.tar.gz
cd zlib-1.2.12
./configure --prefix=../1.2.12
make
make test
make install

