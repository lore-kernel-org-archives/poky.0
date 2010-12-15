Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E5D8F4C811B9
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Dec 2010 08:28:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="362092178"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 08:28:05 -0800
Message-Id: <6026999e81042a7f6560f9bce04390865509b235.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Paul Eggleton <paul.eggleton@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/14] qemu: fix failure to find zlib header files during configure
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
Date: Wed, 15 Dec 2010 16:28:07 -0000
X-Original-Date: Fri, 19 Nov 2010 15:03:32 +0000
X-List-Received-Date: Wed, 15 Dec 2010 16:28:07 -0000

Corrects problems during configure of qemu-native due to the BUILD_CFLAGS
not being included when attempting to compile the test program for zlib
within the configure script.

Signed-off-by: Paul Eggleton <paul.eggleton@intel.com>
Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>
---
 .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   20 ++++++++++++++++++++
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 ++-
 2 files changed, 22 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch

diff --git a/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
new file mode 100644
index 0000000..28ca2b3
--- /dev/null
+++ b/meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
@@ -0,0 +1,20 @@
+In native builds, qemu can fail to find zlib development files in the native 
+sysroot and the build machine might not have zlib-dev packages installed.
+
+Add CFLAGS to qemu's CFLAGS which in the native case means BUILD_CFLAGS are
+added and files in the sysroot can be found.
+
+Patch from Paul Eggleton, Comments by RP 28/11/10
+
+Index: qemu-0.12.4/configure
+===================================================================
+--- qemu-0.12.4.orig/configure
++++ qemu-0.12.4/configure
+@@ -99,6 +99,7 @@ QEMU_CFLAGS="-Wstrict-prototypes -Wredun
+ QEMU_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE $QEMU_CFLAGS"
+ QEMU_CFLAGS="-U_FORTIFY_SOURCE $QEMU_CFLAGS"
+ QEMU_CFLAGS="-I. -I\$(SRC_PATH) $QEMU_CFLAGS"
++QEMU_CFLAGS="$QEMU_CFLAGS $CFLAGS"
+ LDFLAGS="-g $LDFLAGS"
+ 
+ gcc_flags="-Wold-style-declaration -Wold-style-definition"
diff --git a/meta/recipes-devtools/qemu/qemu_0.12.4.bb b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
index 6e7d86f..ec0d9d2 100644
--- a/meta/recipes-devtools/qemu/qemu_0.12.4.bb
+++ b/meta/recipes-devtools/qemu/qemu_0.12.4.bb
@@ -1,6 +1,6 @@
 require qemu.inc
 
-PR = "r22"
+PR = "r23"
 
 FILESPATH = "${FILE_DIRNAME}/qemu-${PV}"
 FILESDIR = "${WORKDIR}"
@@ -21,6 +21,7 @@ SRC_URI = "\
     file://arm-cp15-fix.patch \
     file://cursor-shadow-fix.patch \
     file://vmware-vga-fifo-rewind.patch \
+    file://fix-configure-checks.patch \
     file://powerpc_rom.bin"
 
 do_install_append () {
-- 
1.7.3.3


