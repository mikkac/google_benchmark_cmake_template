#include <benchmark/benchmark.h>
#include "function.h"

static void BM_StringCreation(benchmark::State& state)
{
    for (auto _ : state) std::string empty{create_empty_string()};
}
// Register the function as a benchmark
BENCHMARK(BM_StringCreation);

// Define another benchmark
static void BM_StringCopy(benchmark::State& state)
{
    std::string x = "hello";
    for (auto _ : state) std::string copied{copy_string(x)};
}
BENCHMARK(BM_StringCopy);

BENCHMARK_MAIN();
