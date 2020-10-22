@echo off

set SCRIPT_PATH=%~dp0
set SCRIPT_PATH=%SCRIPT_PATH:~0,-1%

cd "%SCRIPT_PATH%"

rmdir /Q /S build
mkdir build
cd build

set "PATH_TO_VCPKG=%SCRIPT_PATH%\3rdparty\vcpkg"
cmake -DCMAKE_TOOLCHAIN_FILE=%PATH_TO_VCPKG%\scripts\buildsystems\vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-windows -A x64 ..
cmake --build . --config Release
cd ..