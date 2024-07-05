#! /bin/sh

# Documentation link:
# https://think-async.com/Asio/asio-1.28.0/doc/
#
# Tutorial video
# https://www.youtube.com/watch?v=1t3vTEbcn5U

wget https://versaweb.dl.sourceforge.net/project/asio/asio/1.28.0%20%28Stable%29/asio-1.28.0.zip
unzip asio-1.28.0.zip
cd asio-1.28.0
./configure
make check


