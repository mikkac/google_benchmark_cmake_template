cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

if(CMAKE_BUILD_TYPE MATCHES Release)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_RELEASE} -Wall -Wextra -pedantic")
    message("Compiling with Release flags:  ${CMAKE_CXX_FLAGS}")
else(CMAKE_BUILD_TYPE MATCHES Release)
     set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_DEBUG} -Wall -Wextra -pedantic")
     message("Compiling with Debug flags:  ${CMAKE_CXX_FLAGS}")
endif(CMAKE_BUILD_TYPE MATCHES Release)

set(func_lib "func_lib")

add_subdirectory(lib)
add_subdirectory(bench)
