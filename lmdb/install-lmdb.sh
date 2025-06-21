#! /bin/sh

# Get the C library
git clone https://github.com/LMDB/lmdb.git

# Compile the C library
cd lmdb/libraries/liblmdb
make
cd -

# Get the C++ library
git clone https://github.com/hoytech/lmdbxx.git
