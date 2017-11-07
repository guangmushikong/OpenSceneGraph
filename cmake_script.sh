export THIRDPARTY_PATH=/Users/cateye/release/3rdParty
export IPHONE_SDK_USR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr
/Applications/CMake.app/Contents/bin/cmake ./ -G Xcode -DOSG_BUILD_PLATFORM_IPHONE:BOOL=ON \
-DIPHONE_SDKVER="10.3" \
-DIPHONE_VERSION_MIN="8.0" \
-DOPENGL_PROFILE:STRING=GLES3 \
-DBUILD_OSG_APPLICATIONS:BOOL=OFF \
-DBUILD_OSG_EXAMPLES:BOOL=ON \
-DOSG_WINDOWING_SYSTEM:STRING=IOS \
-DOSG_DEFAULT_IMAGE_PLUGIN_FOR_OSX="imageio" \
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
