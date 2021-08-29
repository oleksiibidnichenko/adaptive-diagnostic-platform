ExternalProject_Add(LibEvent
    GIT_REPOSITORY https://github.com/libevent/libevent.git
    GIT_TAG release-2.1.12-stable
    CONFIGURE_COMMAND <SOURCE_DIR>/autogen.sh
    COMMAND <SOURCE_DIR>/configure --disable-openssl --prefix=<SOURCE_DIR>/deploy
    BUILD_IN_SOURCE 1
    BUILD_COMMAND make
    INSTALL_COMMAND make install
)

ExternalProject_Get_property(LibEvent SOURCE_DIR)

set(LIBEVENT_INCLUDE_DIR ${SOURCE_DIR}/deploy/include)
set(LIBEVENT_LIBRARY_DIR ${SOURCE_DIR}/deploy/lib)

set(LIBEVENT_LIBRARY ${LIBEVENT_LIBRARY_DIR}/libevent.so)
set(LIBEVENT_CORE ${LIBEVENT_LIBRARY_DIR}/libevent_core.so)
set(LIBEVENT_EXTRA ${LIBEVENT_LIBRARY_DIR}/libevent_extra.so)
set(LIBEVENT_THREAD ${LIBEVENT_LIBRARY_DIR}/libevent_pthreads.so)
