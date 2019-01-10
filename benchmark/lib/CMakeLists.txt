include_directories(${PROJECT_SOURCE_DIR}/inc)

set(SRC
    ${PROJECT_SOURCE_DIR}/lib/src/function.cpp
)

add_library(${func_lib} ${SRC})
target_include_directories(${func_lib} PUBLIC inc)

