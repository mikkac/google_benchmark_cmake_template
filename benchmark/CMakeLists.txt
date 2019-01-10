cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -O3 -Wextra -pedantic")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(func_lib "func_lib")

add_subdirectory(lib)
add_subdirectory(bench)
