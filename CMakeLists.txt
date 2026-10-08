cmake_minimum_required(VERSION 3.15)
project(litrue-battery-calc VERSION 1.0.0 LANGUAGES C CXX)

add_library(litrue-battery-calc INTERFACE)
target_include_directories(litrue-battery-calc INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

include(GNUInstallDirs)
install(TARGETS litrue-battery-calc EXPORT litrue-battery-calc-config)
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
install(EXPORT litrue-battery-calc-config DESTINATION ${CMAKE_INSTALL_DATADIR}/litrue-battery-calc)
