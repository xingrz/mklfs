#!/bin/bash
mkdir -p build
pushd build > /dev/null
cmake .. && cmake --build .
popd > /dev/null
