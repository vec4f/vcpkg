# Automatically generated by boost-vcpkg-helpers/generate-ports.ps1

include(vcpkg_common_functions)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/test
    REF boost-1.66.0
    SHA512 f5f0557fc7afb1c085765edda5ec37ce2a0f31aa39c861a7979dfd5344751978139cc3eef44d773140e4b023c0123065169fc11ae889ca1ea51f58bdf5018a5d
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
if(NOT DEFINED VCPKG_BUILD_TYPE OR VCPKG_BUILD_TYPE STREQUAL "release")
    file(MAKE_DIRECTORY ${CURRENT_PACKAGES_DIR}/lib/manual-link)
    file(GLOB MONITOR_LIBS ${CURRENT_PACKAGES_DIR}/lib/*_exec_monitor*)
    file(COPY ${MONITOR_LIBS} DESTINATION ${CURRENT_PACKAGES_DIR}/lib/manual-link)
    file(REMOVE ${MONITOR_LIBS})
endif()

if(NOT DEFINED VCPKG_BUILD_TYPE OR VCPKG_BUILD_TYPE STREQUAL "debug")
    file(MAKE_DIRECTORY ${CURRENT_PACKAGES_DIR}/debug/lib/manual-link)
    file(GLOB DEBUG_MONITOR_LIBS ${CURRENT_PACKAGES_DIR}/debug/lib/*_exec_monitor*)
    file(COPY ${DEBUG_MONITOR_LIBS} DESTINATION ${CURRENT_PACKAGES_DIR}/debug/lib/manual-link)
    file(REMOVE ${DEBUG_MONITOR_LIBS})
endif()

