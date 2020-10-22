@echo off

set SCRIPT_PATH=%~dp0
set SCRIPT_PATH=%SCRIPT_PATH:~0,-1%

cd "%SCRIPT_PATH%"

cd 3rdparty
git clone https://github.com/microsoft/vcpkg.git
call .\vcpkg\bootstrap-vcpkg.bat

cd vcpkg
vcpkg install zlib:x64-windows
vcpkg install blosc:x64-windows
vcpkg install openexr:x64-windows
vcpkg install tbb:x64-windows
vcpkg install boost-iostreams:x64-windows
vcpkg install boost-system:x64-windows
vcpkg install boost-any:x64-windows
vcpkg install boost-algorithm:x64-windows
vcpkg install boost-uuid:x64-windows
vcpkg install boost-interprocess:x64-windows
cd %SCRIPT_PATH%\3rdparty

set "PATH_TO_VCPKG=%SCRIPT_PATH%\3rdparty\vcpkg"
set "OPENVDB_INSTALL_PATH=%SCRIPT_PATH%\3rdparty\openvdb\install"

git clone https://github.com/AcademySoftwareFoundation/openvdb.git
mkdir %OPENVDB_INSTALL_PATH%
cd openvdb
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX="%OPENVDB_INSTALL_PATH%" -DCMAKE_TOOLCHAIN_FILE=%PATH_TO_VCPKG%\scripts\buildsystems\vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-windows -A x64 ..
cmake --build . --parallel 4 --config Release --target install

cd %SCRIPT_PATH%