
@echo off
TITLE OneKey Compile Curl
Color 0A
pushd .
cd /d %~dp0
call compileCurl.bat
ndk-build NDK_PROJECT_PATH=. NDK_APPLICATION_MK=Application.mk APP_BUILD_SCRIPT=Android_curl.mk
popd
exit /B