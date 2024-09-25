#! /bin/sh

# Uses conan to build the script with the mongodb-cxx dependency

conan install conanfile.txt --output-folder=build --build=missing

cmake -B build -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build build
