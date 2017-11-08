#  
#  cmake_script.sh
#  cmake脚本文件(cmake 版本推荐3.0）
#  Created by wangmiao on 17/11/7
#  Copyright (c) 2017年 cateye All rights reserved.
#  调整THIRDPARTY_PATH 用于移动盘路径      by  涂理根  17/11/7
#  调整ES2 与 ES3 开关 解决GLSL版本获取不准 by  涂理根  17/11/7

export THIRDPARTY_PATH=/Volumes/mac/Cateye/3rdParty
export IPHONE_SDK_USR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr
/Applications/CMake.app/Contents/bin/cmake ./ -G Xcode -DOSG_BUILD_PLATFORM_IPHONE:BOOL=ON \
-DIPHONE_SDKVER="10.2" \
-DIPHONE_VERSION_MIN="8.0" \
-DOPENGL_PROFILE:STRING=GLES3 \
-DBUILD_OSG_APPLICATIONS:BOOL=OFF \
-DBUILD_OSG_EXAMPLES:BOOL=ON \
-DOSG_WINDOWING_SYSTEM:STRING=IOS \
-DOSG_DEFAULT_IMAGE_PLUGIN_FOR_OSX="imageio" \
-DOSG_GL1_AVAILABLE:BOOL=OFF \
-DOSG_GL2_AVAILABLE:BOOL=OFF \
-DOSG_GLES1_AVAILABLE:BOOL=OFF \
-DOSG_GLES2_AVAILABLE:BOOL=OFF \
-DOSG_GLES3_AVAILABLE:BOOL=ON \
-DDYNAMIC_OPENSCENEGRAPH:BOOL=OFF \
-DDYNAMIC_OPENTHREADS:BOOL=OFF \
-DZLIB_INCLUDE_DIR:PATH="$IPHONE_SDK_USR/include" \
-DZLIB_LIBRARY:PATH="$IPHONE_SDK_USR/lib/libz.tbd" \
-DCURL_INCLUDE_DIR:PATH="$THIRDPARTY_PATH/curl-ios-device/include" \
-DCURL_LIBRARY:PATH="$THIRDPARTY_PATH/curl-ios-device/lib/libcurl.a" \
-DFREETYPE_INCLUDE_DIR_freetype2:PATH="$THIRDPARTY_PATH/freetype-ios-universal/include/freetype" \
-DFREETYPE_INCLUDE_DIR_ft2build:PATH="$THIRDPARTY_PATH/freetype-ios-universal/include" \
-DFREETYPE_LIBRARY:PATH="$THIRDPARTY_PATH/freetype-ios-universal/lib/libFreeType_iphone_universal.a" \
-DTIFF_INCLUDE_DIR:PATH="$THIRDPARTY_PATH/tiff-ios-device/include" \
-DTIFF_LIBRARY:PATH="$THIRDPARTY_PATH/tiff-ios-device/lib/libtiff.a" \
-DGDAL_INCLUDE_DIR:PATH="$THIRDPARTY_PATH/gdal-ios-device/include" \
-DGDAL_LIBRARY:PATH="$THIRDPARTY_PATH/gdal-ios-device/lib/libgdal.a"
