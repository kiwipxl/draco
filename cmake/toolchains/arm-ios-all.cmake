if (NOT DRACO_CMAKE_TOOLCHAINS_ARM_IOS_STATIC_CMAKE_)
set(DRACO_CMAKE_TOOLCHAINS_ARM_IOS_STATIC_CMAKE_ 1)

if (XCODE)
  # TODO(tomfinegan): Handle arm builds in Xcode.
  message(FATAL_ERROR "This toolchain does not support Xcode.")
endif ()

set(CMAKE_SYSTEM_PROCESSOR "armv7 -arch armv7s -arch arm64")
set(CMAKE_OSX_ARCHITECTURES "armv7 -arch armv7s -arch arm64")

include("${CMAKE_CURRENT_LIST_DIR}/arm-ios-common.cmake")

endif ()  # DRACO_CMAKE_TOOLCHAINS_ARM_IOS_STATIC_CMAKE_
