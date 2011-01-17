Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1C334C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="697744915"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
Message-Id: <9b0150cf97aa5dd2cc0665384ae424df7b2dcb68.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 07:34:03 -0800
Date: Mon, 17 Jan 2011 14:45:52 -0800
To: poky@yoctoproject.org
Subject: [PATCH 07/12] xtscal: fix build issue with gcc dso linking change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:54 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libXrender library explicitely for linking to
work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../xtscal/dso_linking_change_build_fix.patch      |   25 ++++++++++++++++++++
 meta/recipes-graphics/xtscal/xtscal_0.6.3.bb       |    3 +-
 2 files changed, 27 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/xtscal/xtscal/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-graphics/xtscal/xtscal/dso_linking_change_build_fix.patch b/meta/recipes-graphics/xtscal/xtscal/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..3ca14d7
--- /dev/null
+++ b/meta/recipes-graphics/xtscal/xtscal/dso_linking_change_build_fix.patch
@@ -0,0 +1,25 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids this linking error:
+
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o xtscal main.o calibrate.o -lX11 -lXft -lXext -lXcalibrate^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: ^?: invalid DSO for symbol `XRenderChangePicture' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so.1: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make: *** [xtscal] Error 1
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: xtscal-0.6.3/configure.ac
+===================================================================
+--- xtscal-0.6.3.orig/configure.ac
++++ xtscal-0.6.3/configure.ac
+@@ -9,7 +9,7 @@ AM_INIT_AUTOMAKE([foreign dist-bzip2])
+ # Checks for programs.
+ AC_PROG_CC
+ 
+-PKG_CHECK_MODULES(XTSCAL, x11 xft xext xcalibrate)
++PKG_CHECK_MODULES(XTSCAL, x11 xft xext xcalibrate xrender)
+ 
+ AC_CONFIG_FILES([Makefile])
+ AC_OUTPUT
diff --git a/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb b/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
index 2136f34..539399e 100644
--- a/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
+++ b/meta/recipes-graphics/xtscal/xtscal_0.6.3.bb
@@ -9,11 +9,12 @@ SECTION = "x11/base"
 
 DEPENDS = "virtual/libx11 libxft libxcalibrate"
 
-PR = "r12"
+PR = "r13"
 
 SRC_URI = "${GPE_MIRROR}/xtscal-${PV}.tar.bz2 \
            file://change-cross.patch;patch=1 \
            file://cleanup.patch;patch=1 \
+           file://dso_linking_change_build_fix.patch \
            file://30xTs_Calibrate.sh"
 
 SRC_URI[md5sum] = "9bcab80b474d5454477d1ca166a68c34"
-- 
1.7.3.4


