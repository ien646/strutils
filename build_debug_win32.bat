echo "-- Initializing git submodules -- "
git submodule init
git submodule update
md build_debug_win32
cd build_debug_win32
cmake -DCMAKE_GENERATOR_PLATFORM=WIN32 -DCMAKE_BUILD_TYPE=Debug .. -Wdev
cmake --build . --config Debug
pause