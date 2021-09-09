find_library(wiringPi_LIB NAMES wiringPi)

if(NOT wiringPi_LIB)
  message(FATAL_ERROR "Could not find wiringPi")
else()
  message(STATUS "Found libevent component: ${wiringPi_LIB}")
endif()
