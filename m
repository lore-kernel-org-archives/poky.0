Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 819D94C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:21 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jan 2011 05:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="648196442"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2011 05:58:17 -0800
Message-Id: <a207b8c37611f250ee59be83935c756836434c41.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 16:43:45 +0800
Date: Tue, 18 Jan 2011 21:57:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 6/7] cross.bbclass: modify sysroot_stage_all to allow gcc-{cross, crossdk}-intermediate to populate the libgcc_s.so* files
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:21 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/classes/cross.bbclass                         |   10 ++++++----
 .../gcc/gcc-cross-intermediate.inc                 |    7 +++++--
 2 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/meta/classes/cross.bbclass b/meta/classes/cross.bbclass
index 59d8293..435362b 100644
--- a/meta/classes/cross.bbclass
+++ b/meta/classes/cross.bbclass
@@ -41,6 +41,8 @@ target_exec_prefix := "${exec_prefix}"
 
 # Overrides for paths
 CROSS_TARGET_SYS_DIR = "${MULTIMACH_TARGET_SYS}"
+CROSS_TARGET_LIBDIR = "${target_libdir}"
+CROSS_TARGET_BASE_LIBDIR = "${target_base_libdir}"
 prefix = "${STAGING_DIR_NATIVE}${prefix_native}"
 base_prefix = "${STAGING_DIR_NATIVE}"
 exec_prefix = "${STAGING_DIR_NATIVE}${prefix_native}"
@@ -60,10 +62,10 @@ do_install () {
 #
 sysroot_stage_all() {
 	sysroot_stage_dir ${D} ${SYSROOT_DESTDIR}
-	install -d ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${target_base_libdir}/
-	install -d ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${target_libdir}/  
-	mv ${SYSROOT_DESTDIR}${target_base_libdir}/* ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${target_base_libdir}/ || true
-	mv ${SYSROOT_DESTDIR}${target_libdir}/* ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${target_libdir}/ || true
+	install -d ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${CROSS_TARGET_BASE_LIBDIR}/
+	install -d ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${CROSS_TARGET_LIBDIR}/
+	mv ${SYSROOT_DESTDIR}${CROSS_TARGET_BASE_LIBDIR}/* ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${CROSS_TARGET_BASE_LIBDIR}/ || true
+	mv ${SYSROOT_DESTDIR}${CROSS_TARGET_LIBDIR}/* ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET}${CROSS_TARGET_LIBDIR}/ || true
 }
 
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
index 32e4e5e..4e4b050 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
@@ -28,12 +28,15 @@ do_compile () {
     oe_runmake
 }
 
+CROSS_TARGET_LIBDIR = "${target_libdir}.${PN}"
+CROSS_TARGET_BASE_LIBDIR = "${target_base_libdir}.${PN}"
+
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
 
 	# Without the .{PN} suffix, here it would conflict with the recipe libgcc.
-	install -d ${D}${target_base_libdir}.${PN}/
-	mv ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${D}${target_base_libdir}.${PN}/
+	install -d ${D}${CROSS_TARGET_BASE_LIBDIR}/
+	mv ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${D}${CROSS_TARGET_BASE_LIBDIR}/
 
 	# We don't really need this (here shares/ contains man, info, locale).
 	rm -rf ${D}${prefix}/share/
-- 
1.7.2


