ECHO OFF
SETLOCAL

ECHO make project to build dir...

ECHO check cmake path
SET COCOS2DX_PATH="F:\project\ios\sdk\cocos2d"
SET CMAKE_PATH="F:\SDK\CMake 2.8\bin"
SET CMAKE_EXE=%CMAKE_PATH%\cmake.exe
SET VS_PATH="C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE"
SET VS_ENV_EXE=%VS_PATH%\devenv.exe

ECHO start build

ECHO check build dir
REM IF EXIST "build"
REM (
REM 	RMDIR /Q build
REM )
RMDIR /S /Q build
MKDIR build

ECHO run cmake to build vcproject
CD build
%CMAKE_EXE% ../src -DCOCOS2DX_PATH=%COCOS2DX_PATH%
ECHO build completed.

ECHO auto make
REM %VS_ENV_EXE% /Build *.sln

ENDLOCAL
ECHO ON
PAUSE
