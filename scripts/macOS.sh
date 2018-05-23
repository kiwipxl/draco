export FOLDER=build-macOS-release
rm -rf $FOLDER
mkdir $FOLDER
cd $FOLDER
cmake ../../ -DCMAKE_BUILD_TYPE=release -DBUILD_UNITY_PLUGIN=ON -DUNITY_PLUGIN_BUNDLE=ON
cmake .
make
echo "done"
