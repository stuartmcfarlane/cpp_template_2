#!/bin/bash

# Script used to build the project in Debug mode.
# build_cmake_debug.sh must be run before this one:
# - the first time the project is built
# - whenever a new file is added or removed

if [ "$(uname -s)" == "Linux" ]; then
    cpu_count=$(nproc)
elif [ "$(uname -s)" == "Darwin" ]; then
    cpu_count=$(sysctl -n hw.ncpu)
else
    exit 1
fi

echo "Building Debug version using ${cpu_count} threads..."
cmake --build build/Debug/ -j$cpu_count
RESULT=$?
if [ $RESULT == 0 ]; then
    echo "SUCCESS: Finished building Debug!"
else
    echo "FAIL: Error while building Debug!"
fi
exit $RESULT
