cmake_minimum_required(VERSION 3.16)

project(my_project)

# Abseil requires C++14
set(CMAKE_CXX_STANDARD 14)

# Import Abseil's CMake targets
find_package(absl REQUIRED)

add_executable(hello_world hello_world.cc)

# Declare dependency on the absl::strings library
target_link_libraries(hello_world absl::strings)
