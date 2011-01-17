Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA3254C811FE
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="593832488"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
Message-Id: <1dfa6e07d6b2b6692442c9f5445419a348f3d360.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 09:48:49 -0800
Date: Mon, 17 Jan 2011 14:45:53 -0800
To: poky@yoctoproject.org
Subject: [PATCH 11/12] matchbox-stroke: : fix build issue with gcc dso linking change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:55 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libxrender library explicitely for
linking to work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../files/dso_linking_change_build_fix.patch       |   36 ++++++++++++++++++++
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    4 ++-
 2 files changed, 39 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-stroke/files/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-sato/matchbox-stroke/files/dso_linking_change_build_fix.patch b/meta/recipes-sato/matchbox-stroke/files/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..dd45341
--- /dev/null
+++ b/meta/recipes-sato/matchbox-stroke/files/dso_linking_change_build_fix.patch
@@ -0,0 +1,36 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+| make[1]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/matchbox-stroke-0.0+svnr1820-r0/matchbox-stroke'^M
+| Making all in src^M
+| make[2]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/matchbox-stroke-0.0+svnr1820-r0/matchbox-stroke/src'^M
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o matchbox-stroke matchbox-stroke.o matchbox-stroke-ui.o matchbox-stroke-recog.o matchbox-stroke-mode.o matchbox-stroke-action.o config-parser.o util-hash.o util.o -lXft -lX11 -lXtst -lfakekey   -lexpat -lm^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: u: invalid DSO for symbol `XRenderFindVisualFormat' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so.1: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[2]: *** [matchbox-stroke] Error 1
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+
+Index: matchbox-stroke/configure.ac
+===================================================================
+--- matchbox-stroke.orig/configure.ac
++++ matchbox-stroke/configure.ac
+@@ -38,7 +38,7 @@ AC_ARG_WITH(expat-lib,         
+ 	   expat_lib=$withval, expat_lib=yes)
+ 
+ 
+-PKG_CHECK_MODULES(MBSTROKE, xft libfakekey,,
++PKG_CHECK_MODULES(MBSTROKE, xft libfakekey xrender,,
+ 	         AC_MSG_ERROR([*** Required Librarys not found ***]))
+ 
+ dnl ------ Expat ------------------------------------------------------------
+@@ -160,4 +160,4 @@ echo "
+         compiler:               ${CC} 
+ 
+         Building with Debug:    ${enable_debug}
+-"
+\ No newline at end of file
++"
diff --git a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
index 5021d88..de675c2 100644
--- a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
+++ b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
@@ -8,10 +8,12 @@ LIC_FILES_CHKSUM = "file://src/matchbox-stroke.h;endline=12;md5=8ed5c5bbec2321fb
 DEPENDS = "libfakekey expat libxft"
 SECTION = "x11/wm"
 PV = "0.0+svnr${SRCPV}"
+PR = "r1"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
            file://single-instance.patch;patch=1 \
-           file://configure_fix.patch;patch=1;maxrev=1819 "
+           file://configure_fix.patch;patch=1;maxrev=1819 \
+           file://dso_linking_change_build_fix.patch "
 
 S = "${WORKDIR}/${PN}"
 
-- 
1.7.3.4


