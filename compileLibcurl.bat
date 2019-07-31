
@echo off
TITLE OneKey Compile libcurl
Color 0A
pushd .
cd /d %~dp0
ndk-build NDK_PROJECT_PATH=. NDK_APPLICATION_MK=Application.mk APP_BUILD_SCRIPT=Android_libcurl.mk
popd
exit /B