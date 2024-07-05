#!/bin/sh

wget https://curl.se/download/curl-8.8.0.tar.gz
tar -xzf curl-8.8.0.tar.gz
cd curl-8.8.0
./configure --prefix=../8.8.0
make
# make test         # this takes 10+ minutes
make install
