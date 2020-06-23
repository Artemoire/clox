@echo off
IF NOT EXIST build (
mkdir build
) else (
rmdir /q /s build
mkdir build
)
@echo on