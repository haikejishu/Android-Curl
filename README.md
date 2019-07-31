# Android Curl 

Windows 下 NDK 一键编译安卓版本下的 curl 库及 curl 执行文件.


### Windows 一键编译

### 前提条件
1. 设置 NDK 环境变量	

### 编译静态库
1. 运行 `compileLibcurl.bat`.

2. 等待编译完成, 可在项目 obj 目录中看到编译后的文件.


### 编译动态库
1. 打开 **Android_libcurl.mk** 文件,注释`include $(BUILD_STATIC_LIBRARY)`,同时取消注释`include $(BUILD_SHARED_LIBRARY)`

2. 运行 `compileLibcurl.bat`.

3. 编译完成, 可在项目 libs 目录中看到编译后的文件.

### 编译可执行文件

1. 确保 **Android_libcurl.mk** 是编译静态库状态.

2. 运行 `compileCurl.bat`.

3. 编译完成, 可在项目 libs 目录中看到编译后的文件.


### 其他系统

请参照下方项目 **curl** 中相关文档

## 其它
- 如果你有好的建议或者发现bug，欢迎给我提 **issue**.
- 如果该 **repo** 对大家有帮助，给个 **star** 鼓励鼓励吧.

## 致谢
- [curl 项目](https://github.com/curl/curl)
