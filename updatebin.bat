@echo off

if "%A5_LIBCEF%" == "" goto nothing
set A53RDPARTYBUILD_LIBCEF=%A5BLDROOT%\%A5COMPILERVERSION%\3rdParty\Libcef\libcef_dll_wrapper\

if not exist "%A5_LIBCEF%\lib\%A5COMPILERVERSION%\Debug" mkdir %A5_LIBCEF%\lib\%A5COMPILERVERSION%\Debug 
if not exist "%A5_LIBCEF%\lib\%A5COMPILERVERSION%\Release" mkdir %A5_LIBCEF%\lib\%A5COMPILERVERSION%\Release

echo F | xcopy %A53RDPARTYBUILD_LIBCEF%Debug\libcef_dll_wrapper.lib %A5_LIBCEF%\lib\%A5COMPILERVERSION%\Debug\libcef_wrapper.lib
echo F | xcopy %A53RDPARTYBUILD_LIBCEF%Debug\libcef_dll_wrapper.pdb %A5_LIBCEF%\lib\%A5COMPILERVERSION%\Debug\libcef_wrapper.pdb

echo F | xcopy %A53RDPARTYBUILD_LIBCEF%Release\libcef_dll_wrapper.lib %A5_LIBCEF%\lib\%A5COMPILERVERSION%\Release\libcef_wrapper.lib

goto done
:nothing
echo "A5_LIBCEF needs to be defined"
:done