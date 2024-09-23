cmake_minimum_required(VERSION 3.10)
project(cmongodb)

set(CMAKE_CXX_STANDARD 14)

find_package(mongocxx REQUIRED)

add_executable(cmongodb main.cpp)

target_link_libraries(cmongodb mongo::mongocxx_static)
