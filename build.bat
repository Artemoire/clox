@echo off
IF NOT EXIST build (
mkdir build
)
cd build
cmake -G Ninja .. && cmake --build .
cd ..
@echo on