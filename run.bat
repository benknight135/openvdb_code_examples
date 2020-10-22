@echo off

set SCRIPT_PATH=%~dp0
set SCRIPT_PATH=%SCRIPT_PATH:~0,-1%

cd "%SCRIPT_PATH%"

cd build/Release
vdb_helloworld.exe