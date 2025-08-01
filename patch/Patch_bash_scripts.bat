rem for automation
sed -i 's/do_prompt /echo /g' media-autobuild_suite/build/media-suite_helper.sh media-autobuild_suite/build/media-suite_compile.sh
sed -i 's/read.*yn/yn=y/g' media-autobuild_suite/build/media-suite_update.sh
sed -i "/^color$/d" media-autobuild_suite/media-autobuild_suite.bat
sed -i "/^[[:space:]]*pause[[:space:]]*$/d" media-autobuild_suite/media-autobuild_suite.bat

rem for fix build
sed -i 's!s:LIBPATH_lib(ass^|av(^|device^|filter))!s:LIBPATH_(lib)?(ffmpeg^|ass^|av^|archive^|bluray^|jpegxl(^|device^|filter))!g' media-autobuild_suite/build/media-suite_compile.sh
unix2dos media-autobuild_suite/media-autobuild_suite.bat

