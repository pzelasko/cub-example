cmake_minimum_required(VERSION 3.7.2)
project(cub_example LANGUAGES CXX)

find_package(CUDA REQUIRED)

if (EXISTS ${PROJECT_SOURCE_DIR}/deps/cub)
	message("Cub already downloaded.")
else()
	execute_process(COMMAND git clone https://github.com/NVlabs/cub deps/cub WORKING_DIRECTORY ${PROJECT_SOURCE_DIR})
endif()

set(CMAKE_CXX_STANDARD 14)

cuda_add_executable(cub_example main.cu)
set_target_properties(cub_example PROPERTIES CUDA_SEPARABLE_COMPILATION ON)
target_include_directories(cub_example PRIVATE deps/cub)
target_include_directories(cub_example PRIVATE ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
