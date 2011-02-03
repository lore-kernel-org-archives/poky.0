Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20C0D4C800A8
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 16:45:43 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Feb 2011 14:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,422,1291622400"; d="scan'208";a="383935344"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 03 Feb 2011 14:45:42 -0800
Message-Id: <3aa8c1ce8d4325a7a9f0dedb23515a06321a8701.1296772940.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1296772940.git.nitin.a.kamble@intel.com>
References: <cover.1296772940.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 3 Feb 2011 14:35:51 -0800
Date: Thu, 03 Feb 2011 14:45:42 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 2/2] mesa-demos: fix build issue with gcc dso linking change
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
X-List-Received-Date: Thu, 03 Feb 2011 22:45:43 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libpthread library explicitely for linking to work
without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../mesa-demos/dso_linking_change_build_fix.patch  |   23 ++++++++++++++++++++
 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb     |    5 ++-
 2 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-graphics/mesa/mesa-demos/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-graphics/mesa/mesa-demos/dso_linking_change_build_fix.patch b/meta/recipes-graphics/mesa/mesa-demos/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..aa2faf9
--- /dev/null
+++ b/meta/recipes-graphics/mesa/mesa-demos/dso_linking_change_build_fix.patch
@@ -0,0 +1,23 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+|   CCLD   xeglgears
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.5.1/ld: xeglthreads.o: undefined reference to symbol 'pthread_join@@GLIBC_2.4'
+| /build_disk/poky_build/build0/tmp/sysroots/x86_64-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.5.1/ld: note: 'pthread_join@@GLIBC_2.4' is defined in DSO /build_disk/poky_build/build0/tmp/sysroots/qemuarm/lib/libpthread.so.0 so try adding it to the linker command line
+| /build_disk/poky_build/build0/tmp/sysroots/qemuarm/lib/libpthread.so.0: could not read symbols: Invalid operation
+| collect2: ld returned 1 exit status
+
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/02/03
+
+
+Index: mesa-demos-8.0.1/src/egl/opengl/Makefile.am
+===================================================================
+--- mesa-demos-8.0.1.orig/src/egl/opengl/Makefile.am	2010-07-07 10:57:15.000000000 -0700
++++ mesa-demos-8.0.1/src/egl/opengl/Makefile.am	2011-02-03 14:30:13.928486381 -0800
+@@ -67,3 +67,4 @@
+ 
+ eglgears_x11_LDADD = ../eglut/libeglut_x11.la
+ egltri_x11_LDADD = ../eglut/libeglut_x11.la
++xeglthreads_LDADD = -lpthread
diff --git a/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb b/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
index e3a84be..504a8b7 100644
--- a/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
+++ b/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
@@ -11,9 +11,10 @@ LIC_FILES_CHKSUM = "file://src/xdemos/glxgears.c;beginline=1;endline=20;md5=9142
 
 DEPENDS = "virtual/libx11 virtual/libgl glew"
 
-PR = "r0"
+PR = "r1"
 
-SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/demos/${PV}/${PN}-${PV}.tar.bz2"
+SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/demos/${PV}/${PN}-${PV}.tar.bz2 \
+	file://dso_linking_change_build_fix.patch"
 
 inherit autotools pkgconfig
 
-- 
1.7.3.4


