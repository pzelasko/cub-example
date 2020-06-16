cmake_minimum_required(VERSION 3.16)
project(cub_example LANGUAGES CXX CUDA)

if (EXISTS ${PROJECT_SOURCE_DIR}/deps/cub)
	message("Cub already downloaded.")
else()
	execute_process(git clone https://github.com/NVlabs/cub deps/cub)
endif()

set(CMAKE_CXX_STANDARD 14)

add_executable(cub_example main.cpp)
target_include_directories(cub_example PRIVATE deps/cub)