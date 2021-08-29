cmake_minimum_required(VERSION 3.21.1)

project(adaptive_diagnostic_platform)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(ExternalProject)
include(WiringPiLib)
include(LibEvent)
