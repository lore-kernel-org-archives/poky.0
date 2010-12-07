Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA3D54C81200
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:28:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2010 22:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="358635992"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 22:28:17 -0800
Message-Id: <d6a414833f0372903aa707b51ad449c8f4b396a2.1291790130.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291790130.git.dongxiao.xu@intel.com>
References: <cover.1291790130.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 16:57:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/7] gst-ffmpeg: upgrade to version 0.10.11
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 08 Dec 2010 06:28:33 -0000

Derived the recipe from openembedded.

For poky, we use the ffmpeg lib contained in the package, while
openembedded use the system ffmpeg library.

Remove the two patches in 0.10.1 since the original logic is not
exist in latest version.

Update recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gst-ffmpeg-0.10.1/configure_fix.patch          |   13 -----
 .../gstreamer/gst-ffmpeg-0.10.1/no_beos.patch      |   55 --------------------
 .../gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff   |   14 +++++
 .../gstreamer/gst-ffmpeg_0.10.1.bb                 |   35 ------------
 .../gstreamer/gst-ffmpeg_0.10.11.bb                |   39 ++++++++++++++
 5 files changed, 53 insertions(+), 103 deletions(-)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb

diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch b/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch
deleted file mode 100644
index 15f5649..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/configure_fix.patch
+++ /dev/null
@@ -1,13 +0,0 @@
-Index: gst-ffmpeg-0.10.1/gst-libs/ext/ffmpeg/configure.ac
-===================================================================
---- gst-ffmpeg-0.10.1.orig/gst-libs/ext/ffmpeg/configure.ac	2008-03-19 23:21:04.000000000 +0000
-+++ gst-ffmpeg-0.10.1/gst-libs/ext/ffmpeg/configure.ac	2008-03-19 23:21:31.000000000 +0000
-@@ -775,7 +775,7 @@
- 
- dnl Check for SDL, used in ffplay, and ffserver
- AC_FF_ALLOW_DISABLE(CONFIG_FFPLAY, ffplay, ffmpeg media player,[
--  AM_PATH_SDL(, CONFIG_FFPLAY=yes, CONFIG_FPFLAY=no)
-+  CONFIG_FPFLAY=no
- ])
- 
- dnl media server or not?
diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch b/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch
deleted file mode 100644
index 9ffcaff..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.1/no_beos.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-The AC_LANG sections upset libtool 2.2.2, easiest fix is to remove them.
-Using a .cpp file in a Makefile means configure.ac must use AC_PROG_CXX
-so patch out the section from the makefile too.
-
-RP - 14/4/08
-
-Index: gst-ffmpeg-0.10.1/gst-libs/ext/ffmpeg/configure.ac
-===================================================================
---- gst-ffmpeg-0.10.1.orig/gst-libs/ext/ffmpeg/configure.ac	2008-04-14 23:55:25.000000000 +0100
-+++ gst-ffmpeg-0.10.1/gst-libs/ext/ffmpeg/configure.ac	2008-04-14 23:56:18.000000000 +0100
-@@ -742,26 +742,7 @@
- 
- dnl Beos Audio
- AC_FF_ALLOW_DISABLE(CONFIG_AUDIO_BEOS, audio-beos, BeOS audio support,[
--  if test x$TARGET_OS = xbeos; then
--    AC_LANG_CPLUSPLUS
--    AC_CHECK_HEADER(SoundPlayer.h,[
--      OLD_CXXFLAGS="$CXXFLAGS"
--      CXXFLAGS="$CXXFLAGS -lbe -lmedia"
--      AC_MSG_CHECKING(For BeOS audio libraries)
--      AC_TRY_COMPILE([
--#include <Application.h>
--#include <SoundPlayer.h>
--        ],[
--          BSoundPlayer *p = new BSoundPlayer(NULL,NULL,NULL);
--        ],[ CONFIG_AUDIO_BEOS=yes && AC_MSG_RESULT(yes) ],[
--          CONFIG_AUDIO_BEOS=no && AC_MSG_RESULT(no)
--      ])
--      CXXFLAGS="$OLD_CXXFLAGS"
--    ], CONFIG_AUDIO_BEOS=no)
--    AC_LANG_C
--  else
-     CONFIG_AUDIO_BEOS=no
--  fi
- ])
- 
- dnl Check for freetype2, used in vook/libdrawtext.so
-Index: gst-ffmpeg-0.10.1/gst-libs/ext/ffmpeg/libavformat/Makefile.am
-===================================================================
---- gst-ffmpeg-0.10.1.orig/gst-libs/ext/ffmpeg/libavformat/Makefile.am	2008-04-14 23:58:44.000000000 +0100
-+++ gst-ffmpeg-0.10.1/gst-libs/ext/ffmpeg/libavformat/Makefile.am	2008-04-14 23:58:55.000000000 +0100
-@@ -24,13 +24,6 @@
- audiooss_SRC = audio.c
- endif
- 
--if CONFIG_AUDIO_BEOS
--audiobeos_SRC = beosaudio.cpp
--audiobeos_LIBS = \
--	-lbe \
--	-lmedia
--endif
--
- if CONFIG_VIDEO4LINUX
- v4l_SRC = grab.c v4l2.c
- endif
diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff b/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
new file mode 100644
index 0000000..bffdb8a
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
@@ -0,0 +1,14 @@
+Lower the rank of ffmpeg plugin so codecs that hook into accelerated pieces (e.g. dsp or hw engines) can get picked over this
+Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
+
+--- /tmp/gstffmpegdec.c	2009-03-05 09:31:15.000000000 +0100
++++ gst-ffmpeg-0.10.6/ext/ffmpeg/gstffmpegdec.c	2009-03-05 09:33:09.000000000 +0100
+@@ -2588,7 +2588,7 @@
+       case CODEC_ID_MSMPEG4V3:
+       case CODEC_ID_H264:
+       case CODEC_ID_COOK:
+-        rank = GST_RANK_PRIMARY;
++        rank = GST_RANK_SECONDARY;
+         break;
+       case CODEC_ID_DVVIDEO:
+         /* we have a good dv decoder, fast on both ppc as well as x86. they say
diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
deleted file mode 100644
index 599492f..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
+++ /dev/null
@@ -1,35 +0,0 @@
-DESCRIPTION = "FFmpeg-based GStreamer plug-in"
-SECTION = "multimedia"
-PRIORITY = "optional"
-LICENSE = "LGPLv2+ & GPLv2+"
-LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
-                    file://gst-libs/ext/ffmpeg/libavcodec/libpostproc/postprocess.h;beginline=1;endline=17;md5=a0c398349079dbd0ce70f03de8bc193a \
-                    file://gst-libs/ext/ffmpeg/ffserver.c;beginlin=1;endline=18;md5=49bde48d6d5c631f6f49d74ed491ea08"
-HOMEPAGE = "http://www.gstreamer.net/"
-DEPENDS = "gstreamer zlib gst-plugins-base"
-PR = "r4"
-
-inherit autotools pkgconfig
-
-SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2 \
-           file://no_beos.patch;patch=1 \
-           file://configure_fix.patch;patch=1"
-
-FILES_${PN} += "${libdir}/gstreamer-0.10/*.so"
-FILES_${PN}-dbg += "${libdir}/gstreamer-0.10/.debug"
-FILES_${PN}-dev += "${libdir}/gstreamer-0.10/*.la ${libdir}/gstreamer-0.10/*.a"
-
-EXTRA_OECONF = "--disable-sdltest --disable-ffplay --disable-freetypetest \
-		--disable-vorbis --disable-vorbistest --disable-encoders \
-		--disable-v4l --disable-audio-oss --disable-dv1394 \
-		--disable-vhook --disable-ffmpeg --disable-ffserver \
-		--enable-pp --disable-decoder-vorbis --with-pic=no --disable-altivec"
-
-# We do this because the install program is called with -s which causes it to
-# call "strip" and it then mangles cross compiled stuff..
-PATH_prepend="${STAGING_DIR_NATIVE}${prefix_native}/${TARGET_SYS}/bin:"
-
-# Hack to get STAGING_LIBDIR into the linker path when building ffmpeg
-CC = "${CCACHE} ${HOST_PREFIX}gcc -L${STAGING_LIBDIR}"
-
-acpaths = "-I ${S}/common/m4"
diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb
new file mode 100644
index 0000000..96f08b6
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.11.bb
@@ -0,0 +1,39 @@
+DESCRIPTION = "FFmpeg-based GStreamer plug-in"
+SECTION = "multimedia"
+PRIORITY = "optional"
+LICENSE = "GPLv2+ & LGPLv2+ & ( (GPLv2+ & LGPLv2.1+) | (GPLv3+ & LGPLv3+) )"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://ext/libpostproc/gstpostproc.c;beginline=1;endline=18;md5=5896e445e41681324381f5869ee33d38 \
+                    file://COPYING.LIB;md5=55ca817ccb7d5b5b66355690e9abc605 \
+                    file://ext/ffmpeg/gstffmpeg.h;beginline=1;endline=18;md5=ff65467b0c53cdfa98d0684c1bc240a9 \
+                    file://gst-libs/ext/ffmpeg/LICENSE;md5=524b5ee4bdbbf755ebbb76727ba80b0d \
+                    file://gst-libs/ext/ffmpeg/COPYING.GPLv2;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://gst-libs/ext/ffmpeg/COPYING.GPLv3;md5=d32239bcb673463ab874e80d47fae504 \
+                    file://gst-libs/ext/ffmpeg/COPYING.LGPLv2.1;md5=e344c8fa836c3a41c4cbd79d7bd3a379 \
+                    file://gst-libs/ext/ffmpeg/COPYING.LGPLv3;md5=e6a600fd5e1d9cbde2d983680233ad02"
+HOMEPAGE = "http://www.gstreamer.net/"
+DEPENDS = "gstreamer gst-plugins-base zlib"
+
+inherit autotools pkgconfig
+
+SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2 \
+           file://lower-rank.diff \
+"
+
+PR = "r0"
+
+EXTRA_OECONF = " --with-ffmpeg-extra-configure=\"--target-os=linux\" "
+
+FILES_${PN} += "${libdir}/gstreamer-0.10/*.so"
+FILES_${PN}-dbg += "${libdir}/gstreamer-0.10/.debug"
+FILES_${PN}-dev += "${libdir}/gstreamer-0.10/*.la ${libdir}/gstreamer-0.10/*.a"
+
+# We do this because the install program is called with -s which causes it to
+# call "strip" and it then mangles cross compiled stuff..
+PATH_prepend := "${TOOLCHAIN_PATH}/${TARGET_SYS}/bin:"
+
+# Hack to get STAGING_LIBDIR into the linker path when building ffmpeg
+CC = "${CCACHE} ${HOST_PREFIX}gcc ${TARGET_CC_ARCH} -L${STAGING_LIBDIR}"
+
+SRC_URI[md5sum] = "0d23197ba7ac06ea34fa66d38469ebe5"
+SRC_URI[sha256sum] = "ff36a138e5af4ed8dcc459d6d6521fe66ed31ec29ba9a924dc3675c6749a692e"
-- 
1.6.3.3


