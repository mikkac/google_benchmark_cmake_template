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
cmake .. -DCMAKE_BUILD_TYPE_RELEASE
make -j4
sudo make install
```
