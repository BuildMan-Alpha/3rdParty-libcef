@echo off

if "%A5_LIBCEF%" == "" goto nothing
set A53RDPARTYBUILD_LIBCEF=%A5BLDROOT%\%A5COMPILERVERSION%\3rdParty\Libcef
xcopy "%A5_LIBCEF%\src\*" "%A53RDPARTYBUILD_LIBCEF%\" /s /y
cd %A53RDPARTYBUILD_LIBCEF%
c:\dev\3rdparty\CMake\3.21.4\bin\cmake -G "%A5CMAKEGENERATOR%" -A Win32
echo "%A5_LIBCEF% source files have been staged to build location" 
goto done
:nothing
echo "A5_LIBCEF needs to be defined"
:done