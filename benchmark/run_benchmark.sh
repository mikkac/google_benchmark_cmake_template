#!/bin/bash
# Run this script with build type as a parameter (Release or Debug)
# example:
# ./run_benchmark Release
# if parameter is not given, build type is set to Release

if [ "$1" == "Release" ] || [ -z "$1" ]; then
    build_type="Release"
elif [ "$1" == "Debug" ]; then
    build_type="Debug"
else
    echo "Wrong build type. Use 'Release' or 'Debug'"
    exit 1
fi
echo "Chosen build type: ${build_type}"
cd ./build
cmake .. -DCMAKE_BUILD_TYPE="${build_type}"
make -j8
./bench/bench
