project(uds_server)

add_executable(${PROJECT_NAME} main.cpp)

target_include_directories(${PROJECT_NAME} PRIVATE ${ADAPT_DIAG_PLTF_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} ${LIBEVENT_LIBRARIES} ${wiringPi_LIB})
