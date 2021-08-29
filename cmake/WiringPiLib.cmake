ExternalProject_Add(WiringPi
    GIT_REPOSITORY https://github.com/WiringPi/WiringPi.git
    GIT_TAG final_official_2.50
    CONFIGURE_COMMAND ""
    BUILD_IN_SOURCE 1
    BUILD_COMMAND "<SOURCE_DIR>/build"
    INSTALL_COMMAND ""
)

ExternalProject_Get_property(WiringPi SOURCE_DIR)

set(WIRING_PI_LIBRARY_DIR ${SOURCE_DIR}/wiringPi)

set(WIRING_PI_INCLUDE_DIR ${WIRING_PI_LIBRARY_DIRS})

set(WIRING_PI_LIBRARY ${WIRING_PI_LIBRARY_DIR}/libwiringPi.so.2.50)
set(WIRING_PI_LIBRARY_DEBUG ${SOURCE_DIR}/devLib/libwiringPiDev.so.2.50)
set(WIRING_PI_LIBRARY_RELEASE ${WIRING_PI_LIBRARY_DIR}/libwiringPi.so.2.50)
