#!/bin/sh

curl -o CMake-hdf5-1.12.0.tar.gz 'https://hdf-wordpress-1.s3.amazonaws.com/wp-content/uploads/manual/HDF5/HDF5_1_12_0/source/CMake-hdf5-1.12.0.tar.gz'
tar xf CMake-hdf5-1.12.0.tar.gz
cd CMake-hdf5-1.12.0
./build-unix.sh

yes | ./HDF5-1.12.0-Linux.sh

mv HDF5-1.12.0-Linux/HDF_Group/HDF5/1.12.0/ ..

