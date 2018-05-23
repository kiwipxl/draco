export FOLDER=build-iOS-release
rm -rf $FOLDER
mkdir $FOLDER
cd $FOLDER
cmake ../../ -DCMAKE_BUILD_TYPE=release -DBUILD_UNITY_PLUGIN=ON -DUNITY_PLUGIN_STATIC=ON -DCMAKE_TOOLCHAIN_FILE=../../cmake/toolchains/arm-ios-all.cmake
cmake .
make
echo "done"
