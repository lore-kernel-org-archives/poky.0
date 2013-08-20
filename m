Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1E4EE01584
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:14 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2013 01:40:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814819"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:10 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id A09CD6A4093;
	Tue, 20 Aug 2013 01:40:07 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:52 +0200
Message-Id: <290a5aef1f1de389d2c6432e659627f229cc44fb.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Cc: Riku Voipio <riku.voipio@linaro.org>
Subject: [PATCH 010/186] qemu: pass CFLAGS via ./configure instead of a patch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:14 -0000

From: Riku Voipio <riku.voipio@linaro.org>

OE carries a patch to pass CFLAGS to qemu. However, we can avoid
patching by passing CFLAGS with qemu's --extra-cflags option.

Tested that building qemu-native still works without zlib-dev
on host, and that qemu builds.

(From OE-Core rev: 67b6d8d9f987a59090a9a8af61cf740207703dff)

Signed-off-by: Riku Voipio <riku.voipio@linaro.org>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../qemu/files/fix-configure-checks.patch          |   22 --------------------
 meta/recipes-devtools/qemu/qemu.inc                |    4 +---
 2 files changed, 1 insertion(+), 25 deletions(-)
 delete mode 100644 meta/recipes-devtools/qemu/files/fix-configure-checks.patch

diff --git a/meta/recipes-devtools/qemu/files/fix-configure-checks.patch b/meta/recipes-devtools/qemu/files/fix-configure-checks.patch
deleted file mode 100644
index 294c220..0000000
--- a/meta/recipes-devtools/qemu/files/fix-configure-checks.patch
+++ /dev/null
@@ -1,22 +0,0 @@
-In native builds, qemu can fail to find zlib development files in the native 
-sysroot and the build machine might not have zlib-dev packages installed.
-
-Add CFLAGS to qemu's CFLAGS which in the native case means BUILD_CFLAGS are
-added and files in the sysroot can be found.
-
-Patch from Paul Eggleton, Comments by RP 28/11/10
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Index: qemu-1.4.0/configure
-===================================================================
---- qemu-1.4.0.orig/configure	2013-02-15 15:05:35.000000000 -0800
-+++ qemu-1.4.0/configure	2013-02-25 13:44:17.915273181 -0800
-@@ -286,6 +286,7 @@
- QEMU_CFLAGS="-Wstrict-prototypes -Wredundant-decls $QEMU_CFLAGS"
- QEMU_CFLAGS="-D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE $QEMU_CFLAGS"
- QEMU_INCLUDES="-I. -I\$(SRC_PATH) -I\$(SRC_PATH)/include"
-+QEMU_CFLAGS="$QEMU_CFLAGS $CFLAGS"
- if test "$debug_info" = "yes"; then
-     CFLAGS="-g $CFLAGS"
-     LDFLAGS="-g $LDFLAGS"
diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index c43f1ef..72988f5 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -16,7 +16,6 @@ QEMU_TARGETS ?= "arm i386 mips mipsel mips64 mips64el ppc sh4 x86_64"
 SRC_URI = "\
     file://powerpc_rom.bin \
     file://no-strip.patch \
-    file://fix-configure-checks.patch \
     file://larger_default_ram_size.patch \
     "
 
@@ -28,12 +27,11 @@ SRC_URI_append_class-native = "\
     file://fix-libcap-header-issue-on-some-distro.patch \
     "
 
-EXTRA_OECONF += "--target-list=${@get_qemu_target_list(d)} --disable-werror --disable-vnc-tls --audio-drv-list=oss,alsa --disable-curl --disable-vnc-jpeg --disable-bluez --with-system-pixman"
+EXTRA_OECONF += "--target-list=${@get_qemu_target_list(d)} --disable-werror --disable-vnc-tls --audio-drv-list=oss,alsa --disable-curl --disable-vnc-jpeg --disable-bluez --with-system-pixman --extra-cflags='${CFLAGS}'"
 
 EXTRA_OECONF_class-nativesdk = "--target-list=${@get_qemu_target_list(d)} --disable-werror --disable-vnc-tls \
 				--disable-curl \
 				"
-
 export LIBTOOL="${HOST_SYS}-libtool"
 
 do_configure_prepend_class-native() {
-- 
1.7.9.5


