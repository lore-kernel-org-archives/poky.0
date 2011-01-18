Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B5314C811F8
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:22 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jan 2011 05:58:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="878471310"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2011 05:58:16 -0800
Message-Id: <65eaec7d83c4ff6dfc19fc0b40fafe1e05e07d84.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 16:09:03 +0800
Date: Tue, 18 Jan 2011 21:57:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 5/7] gcc-cross-intermediate, gcc-crosssdk-intermediate: change CROSS_TARGET_SYS_DIR and insall into new locations
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:22 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch          |   40 ++++++++++++++++++++
 .../gcc/gcc-cross-intermediate.inc                 |   29 +++++++++++++-
 .../gcc/gcc-cross-intermediate_4.3.3.bb            |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 .../gcc/gcc-crosssdk-intermediate.inc              |    3 +
 .../gcc/gcc-crosssdk-intermediate_4.3.3.bb         |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 7 files changed, 73 insertions(+), 7 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch

diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch
new file mode 100644
index 0000000..9fd8621
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch
@@ -0,0 +1,40 @@
+This patch is used to fix gcc's Bug 35804:
+
+We made the patch according to the hint:
+http://gcc.gnu.org/bugzilla/show_bug.cgi?id=35804#c3
+
+"joseph@codesourcery.com 2008-04-02 17:52:36 UTC
+Subject: Re:  Bootstrap of combined gcc + binutils, with
+ --enable-shared, with sysroot fails
+
+On Wed, 2 Apr 2008, pinskia at gcc dot gnu dot org wrote:
+
+> Sounds like you should be using --build-sysroot= and not set LDFLAGS_FOR_TARGET
+> and CPPFLAGS_FOR_TARGET .
+
+My experience is that you do need to set LDFLAGS_FOR_TARGET and
+CPPFLAGS_FOR_TARGET to include the --sysroot option if you're configuring
+with a build sysroot.  (This is a bug: --with-build-sysroot should cause
+the right --sysroot option to be used automatically when compiling and
+linking runtime libraries.)"
+
+Signed-off-by: Kevin Tian <kevin.tian@intel.com>
+Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
+
+diff --git a/Makefile.in b/Makefile.in
+index d986692..b0531ac 100644
+--- a/Makefile.in
++++ b/Makefile.in
+@@ -537,10 +537,11 @@ CXXFLAGS_FOR_TARGET = @CXXFLAGS_FOR_TARGET@
+ 
+ LIBCFLAGS_FOR_TARGET = $(CFLAGS_FOR_TARGET)
+ LIBCXXFLAGS_FOR_TARGET = $(CXXFLAGS_FOR_TARGET) -fno-implicit-templates
+-LDFLAGS_FOR_TARGET = 
+ 
+ FLAGS_FOR_TARGET = @FLAGS_FOR_TARGET@
+ SYSROOT_CFLAGS_FOR_TARGET = @SYSROOT_CFLAGS_FOR_TARGET@
++CPPFLAGS_FOR_TARGET = ${SYSROOT_CFLAGS_FOR_TARGET}
++LDFLAGS_FOR_TARGET = ${SYSROOT_CFLAGS_FOR_TARGET}
+ DEBUG_PREFIX_CFLAGS_FOR_TARGET = @DEBUG_PREFIX_CFLAGS_FOR_TARGET@
+ 
+ XGCC_FLAGS_FOR_TARGET = $(FLAGS_FOR_TARGET) $(SYSROOT_CFLAGS_FOR_TARGET) $(DEBUG_PREFIX_CFLAGS_FOR_TARGET)
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
index 72a4241..32e4e5e 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
@@ -3,6 +3,13 @@ DEPENDS += "virtual/${TARGET_PREFIX}libc-initial gettext-native"
 PROVIDES = "virtual/${TARGET_PREFIX}gcc-intermediate"
 PACKAGES = ""
 
+SRC_URI += " file://fix_CPPFLAGS_LDFLAGS_FOR_TARGET.patch"
+
+CROSS_TARGET_SYS_DIR_append = ".${PN}"
+
+
+GCC_CROSS_INTERMEDIATE_WITH_BUILD_SYSROOT = "${STAGING_DIR_TARGET}/eglibc-initial/${TARGET_SYS}"
+
 # This is intended to be a -very- basic config
 # sysroot is needed in case we use libc-initial
 EXTRA_OECONF = "--with-local-prefix=${STAGING_DIR_TARGET}${target_prefix} \
@@ -13,7 +20,7 @@ EXTRA_OECONF = "--with-local-prefix=${STAGING_DIR_TARGET}${target_prefix} \
                 ${OPTSPACE} \
 		--program-prefix=${TARGET_PREFIX} \
 		--with-sysroot=${STAGING_DIR_TARGET} \
-		--with-build-sysroot=${STAGING_DIR_TARGET} \
+		--with-build-sysroot=${GCC_CROSS_INTERMEDIATE_WITH_BUILD_SYSROOT} \
 		${EXTRA_OECONF_INTERMEDIATE} \
 		${@get_gcc_fpu_setting(bb, d)}"
 
@@ -23,6 +30,22 @@ do_compile () {
 
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
-	install -d ${D}${target_base_libdir}/
-	mv ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${D}${target_base_libdir}/
+
+	# Without the .{PN} suffix, here it would conflict with the recipe libgcc.
+	install -d ${D}${target_base_libdir}.${PN}/
+	mv ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${D}${target_base_libdir}.${PN}/
+
+	# We don't really need this (here shares/ contains man, info, locale).
+	rm -rf ${D}${prefix}/share/
+
+	# binutils has supplied libiberty.a.
+	rm -f ${D}${exec_prefix}/lib/lib/libiberty.a
+
+	# Insert symlinks into libexec so when tools without a prefix are searched for, the correct ones are
+	# found. These need to be relative paths so they work in different locations.
+	dest=${D}${libexecdir}/gcc/${TARGET_SYS}/${BINV}/
+	install -d $dest
+	for t in ar as ld nm objcopy objdump ranlib strip g77 gcc cpp gfortran; do
+		ln -sf ${BINRELPATH}/${TARGET_PREFIX}$t $dest$t
+	done
 }
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.3.3.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.3.3.bb
index 9a30cb5..a8473b0 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.3.3.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-intermediate.inc
-PR = "r4"
+PR = "r5"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
index 7aaa5b0..10681da 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-intermediate.inc
-PR = "r1"
+PR = "r2"
 
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate.inc b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate.inc
index ed5d5e8..5d1d055 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate.inc
@@ -7,3 +7,6 @@ SYSTEMLIBS1 = "${SDKPATHNATIVE}${libdir_nativesdk}/"
 DEPENDS = "virtual/${TARGET_PREFIX}binutils-crosssdk gettext-native"
 DEPENDS += "virtual/${TARGET_PREFIX}libc-initial-nativesdk"
 PROVIDES = "virtual/${TARGET_PREFIX}gcc-intermediate-crosssdk"
+
+GCC_CROSS_INTERMEDIATE_WITH_BUILD_SYSROOT = "${STAGING_DIR_TARGET}/eglibc-initial-nativesdk/${SDK_ARCH}-nativesdk${SDK_VENDOR}-${SDK_OS}"
+
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.3.3.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.3.3.bb
index cd1f966..2be05f1 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.3.3.bb
@@ -1,3 +1,3 @@
 require gcc-cross-intermediate_${PV}.bb
 require gcc-crosssdk-intermediate.inc
-PR = "r8"
+PR = "r9"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
index 4260c35..a6653dd 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-intermediate_${PV}.bb
 require gcc-crosssdk-intermediate.inc
 
-PR = "r1"
+PR = "r2"
-- 
1.7.2


