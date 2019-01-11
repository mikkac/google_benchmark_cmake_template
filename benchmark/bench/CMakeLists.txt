project(bench)

find_package(benchmark REQUIRED)
find_package(Threads REQUIRED)

add_executable(${PROJECT_NAME} src/bench.cpp)
target_link_libraries(${PROJECT_NAME} ${func_lib} ${CMAKE_THREAD_LIBS_INIT} benchmark)

