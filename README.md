# Google Benchmark CMake template project

This repository consist of template project using Google Benchmark

## Prerequisites
### Google Benchmark
Installation
```
git clone https://github.com/google/benchmark.git
git clone https://github.com/google/googletest.git benchmark/googletest
```

Unfortunately I had problems with normal building, because when I wanted to use GoogleBenchmark with example code, there
were errors according to problems with linking libraries.
Workaround which I found usefull is adding `set(CMAKE_POSITION_INDEPENDENT_CODE ON)` in main `CMakeLists.txt` file.

After that, you can simply:
```
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=RELEASE
make -j4
sudo make install
```
## Usage
To run benchmark, use `run_benchmark.sh` script. It's possible to choose a build type (Release or Debug). To do it, run
the script in following way:
```
./run_benchmark.sh Release
```
or
```
./run_benchmark.sh Debug
```
If script will be run without any parameter, build type will be set to Release by default.
