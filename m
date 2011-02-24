Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F13B4C800B1
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 10:48:10 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Feb 2011 08:48:10 -0800
Message-Id: <1bdc18$jmfq57@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,219,1297065600"; d="scan'208";a="661121194"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2011 08:48:09 -0800
Old-Date: Thu, 24 Feb 2011 01:08:07 -0600
Date: Thu, 24 Feb 2011 10:48:07 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] meta-intel: fix for x86_32 build failures
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
X-List-Received-Date: Thu, 24 Feb 2011 16:48:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Fixes [BUG #711].

gentrigtables was being build as a 64-bit binary which wouldn't run on
the build machine.  grub-mkfont was also causing compile failures, add
dependency on libfreetype for that.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../grub/grub-1.98/gentrigtables-compile-fix.patch |   52 ++++++++++++++++++++
 common/recipes-bsp/grub/grub_1.98.bb               |    5 +-
 2 files changed, 55 insertions(+), 2 deletions(-)
 create mode 100644 common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch

diff --git a/common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch b/common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch
new file mode 100644
index 0000000..d09ecf5
--- /dev/null
+++ b/common/recipes-bsp/grub/grub-1.98/gentrigtables-compile-fix.patch
@@ -0,0 +1,52 @@
+Index: grub-1.98/conf/any-emu.mk
+===================================================================
+--- grub-1.98.orig/conf/any-emu.mk	2011-02-24 00:54:20.825116207 -0600
++++ grub-1.98/conf/any-emu.mk	2011-02-24 00:55:55.465116194 -0600
+@@ -820,7 +820,7 @@
+ 	./gentrigtables > $@
+ DISTCLEANFILES += trigtables.c
+ gentrigtables: gentrigtables.c
+-	$(CC) -o $@ $^ $(CPPFLAGS) -lm
++	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
+ DISTCLEANFILES += gentrigtables
+ 
+ # For grub-mkfont.
+Index: grub-1.98/conf/any-emu.rmk
+===================================================================
+--- grub-1.98.orig/conf/any-emu.rmk	2011-02-24 00:54:24.565116208 -0600
++++ grub-1.98/conf/any-emu.rmk	2011-02-24 00:56:40.665116186 -0600
+@@ -110,7 +110,7 @@
+ 	./gentrigtables > $@
+ DISTCLEANFILES += trigtables.c
+ gentrigtables: gentrigtables.c
+-	$(CC) -o $@ $^ $(CPPFLAGS) -lm
++	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
+ DISTCLEANFILES += gentrigtables
+ 
+ # For grub-mkfont.
+Index: grub-1.98/conf/common.mk
+===================================================================
+--- grub-1.98.orig/conf/common.mk	2011-02-24 00:54:30.345116207 -0600
++++ grub-1.98/conf/common.mk	2011-02-24 00:57:08.415116181 -0600
+@@ -11159,7 +11159,7 @@
+ 	./gentrigtables > $@
+ DISTCLEANFILES += trigtables.c
+ gentrigtables: gentrigtables.c
+-	$(CC) -o $@ $^ $(CPPFLAGS) -lm
++	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
+ DISTCLEANFILES += gentrigtables
+ 
+ pkglib_MODULES += setjmp.mod
+Index: grub-1.98/conf/common.rmk
+===================================================================
+--- grub-1.98.orig/conf/common.rmk	2011-02-24 00:54:34.035116205 -0600
++++ grub-1.98/conf/common.rmk	2011-02-24 00:57:31.045116179 -0600
+@@ -736,7 +736,7 @@
+ 	./gentrigtables > $@
+ DISTCLEANFILES += trigtables.c
+ gentrigtables: gentrigtables.c
+-	$(CC) -o $@ $^ $(CPPFLAGS) -lm
++	$(BUILD_CC) -o $@ $^ $(BUILD_CPPFLAGS) -I${top_srcdir}/include -lm
+ DISTCLEANFILES += gentrigtables
+ 
+ pkglib_MODULES += setjmp.mod
diff --git a/common/recipes-bsp/grub/grub_1.98.bb b/common/recipes-bsp/grub/grub_1.98.bb
index b9d04fc..0cd3a40 100644
--- a/common/recipes-bsp/grub/grub_1.98.bb
+++ b/common/recipes-bsp/grub/grub_1.98.bb
@@ -12,12 +12,13 @@ PRIORITY = "optional"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
-RDEPENDS = "diffutils"
-PR = "r0"
+RDEPENDS = "diffutils freetype"
+PR = "r1"
 
 SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz \
           file://uninit-shdr-fix.patch;apply=yes \
           file://grub-install.in.patch;apply=yes \
+          file://gentrigtables-compile-fix.patch;apply=yes \
           file://40_custom"
 
 inherit autotools
-- 
1.7.0.4


