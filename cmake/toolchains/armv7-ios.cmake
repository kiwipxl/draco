if (NOT DRACO_CMAKE_TOOLCHAINS_ARMV7_IOS_CMAKE_)
set(DRACO_CMAKE_TOOLCHAINS_ARMV7_IOS_CMAKE_ 1)

if (XCODE)
  # TODO(tomfinegan): Handle arm builds in Xcode.
  message(FATAL_ERROR "This toolchain does not support Xcode.")
endif ()

set(CMAKE_SYSTEM_PROCESSOR "armv7 -arch arm64 -arch armv7s")
set(IOS_ARCH armv7 armv7s arm64)
set(CMAKE_OSX_ARCHITECTURES ${IOS_ARCH})

include("${CMAKE_CURRENT_LIST_DIR}/arm-ios-common.cmake")

endif ()  # DRACO_CMAKE_TOOLCHAINS_ARMV7_IOS_CMAKE_
