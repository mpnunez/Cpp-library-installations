#! /bin/sh

mkdir -p example.mdb
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:../lmdb/libraries/liblmdb/ ./lmdb-eg.x
