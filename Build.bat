@echo off

cd \dev\a5v12\src
call SetBuildEnvironment.bat
cd \dev\3rdparty\libcef
call stage.bat
start /B /WAIT MSbuild.exe /m /p:UseEnv=true;Configuration=Release;RuntimeLibrary=MultiThreadedDebugDLL;Platform=Win32 %A53RDPARTYBUILD_LIBCEF%\cef.sln
start /B /WAIT MSbuild.exe /m /p:UseEnv=true;Configuration=Debug;RuntimeLibrary=MultiThreadedDLL;Platform=Win32 %A53RDPARTYBUILD_LIBCEF%\cef.sln
cd \dev\3rdparty\libcef
call updatebin.bat
