export FOLDER=build-android-arm-release
rm -rf $FOLDER
mkdir $FOLDER
cd $FOLDER
cmake ../../ -DCMAKE_BUILD_TYPE=release -DBUILD_UNITY_PLUGIN=ON -DUNITY_PLUGIN_SHARED=ON -DCMAKE_TOOLCHAIN_FILE=../../cmake/toolchains/armv7-android-ndk-libcpp.cmake
cmake .
make
echo "done"
