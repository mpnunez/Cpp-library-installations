# MongoDB C++ Library example

## Method 1: Build with conan

1. Install `conan` package manager
2. Create a `uri.txt` file in this directory with the URI of your MongoDB server
3. Run `build.sh`
4. Run program with `./build/cmongodb`

## Method 2: Install the library from source

1. Install following [instructions](https://www.mongodb.com/docs/languages/cpp/cpp-driver/current/installation/linux/#std-label-cpp-installation-linux)
    - Can run `install-mongodb.sh` script in parent folder instead.
3. Build with `make`
4. Run `./mongodb-eg`
