#! /bin/sh

wget https://versaweb.dl.sourceforge.net/p...
unzip asio-1.28.0.zip
cd asio-1.28.0
./configure
make check
