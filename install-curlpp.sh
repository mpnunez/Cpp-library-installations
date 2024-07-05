#!/bin/sh

# You must have libcurl already installed
# If libcurl is installed in /usr/local, then you don't need
# -D CURL_INCLUDE_DIR and -D CURL_LIBRARY
#

git clone git@github.com:jpbarrette/curlpp.git
cd curlpp
mkdir build
cd build
cmake cmake .. -D CURL_INCLUDE_DIR=/path/to/libcurl/include -D CURL_LIBRARY=/path/to/libcurl.a -D CMAKE_INSTALL_PREFIX=/path/to/install
make install

# Add /path/to/install/libs to LD_LIBRARY_PATH when running the executatble so it can find it
