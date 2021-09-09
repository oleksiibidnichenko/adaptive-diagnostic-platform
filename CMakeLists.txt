cmake_minimum_required(VERSION 3.10.2)

project(adaptive_diagnostic_platform)

set(ADAPT_DIAG_PLTF_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(WiringPiLib)

find_package(Libevent REQUIRED)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/src)
