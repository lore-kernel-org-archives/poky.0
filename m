Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD9814C810E1
	for <poky@yoctoproject.org>; Fri, 24 Dec 2010 21:06:56 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Dec 2010 19:06:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,226,1291622400"; d="scan'208";a="871695267"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 24 Dec 2010 19:06:26 -0800
Message-Id: <9d7b7d6db1eb9560c3e80e4c8dd22d8672d4f204.1293241065.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293241065.git.dongxiao.xu@intel.com>
References: <cover.1293241065.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Sat, 25 Dec 2010 09:25:33 +0800
Date: Sat, 25 Dec 2010 11:15:44 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/2] bitbake: machine specific sysroots implementation
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
X-List-Received-Date: Sat, 25 Dec 2010 03:06:57 -0000

This commit changes the sysroots path to be machine specific.

Changes includes:

1) STAGING_DIR_TARGET and STRAGING_DIR_HOST points to machine specific
paths.

2) task stamp files. Adding ${MACHINE} info into stamp files for
do_populate_sysroots and do_package tasks.

3) sstate install input and output path. Change sstate install path to
be machine specific in order not to contain other machine files.

4) siteconfig path. Separate the site config path for different machines
to avoid one machine adopting the cache file of another machine.

5) sstate stamp file. Add machine name to sstate stamp file since some
prebuild result could not be shared after sysroots are implemented as
machine spedific.

6) gcc-cross-intermediate. Manually install libgcc_s.so.* into target
file system since sstate install src/dest paths have changed to be
macine specific.

7) toolchain scripts. Change the environment path to point to machine
specific sysroots in toolchain scripts bbclass.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/cross-canadian.bbclass                |    4 +++-
 meta/classes/cross.bbclass                         |    8 ++++++++
 meta/classes/native.bbclass                        |    3 +++
 meta/classes/nativesdk.bbclass                     |    5 +++++
 meta/classes/package.bbclass                       |    1 +
 meta/classes/siteconfig.bbclass                    |    6 +++---
 meta/classes/sstate.bbclass                        |    4 ++--
 meta/classes/staging.bbclass                       |    9 +++++++--
 meta/classes/toolchain-scripts.bbclass             |    4 ++--
 meta/conf/bitbake.conf                             |   10 +++++-----
 .../gcc/gcc-cross-intermediate.inc                 |    4 ++--
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 .../gcc/gcc-cross-intermediate_csl-arm-2008q1.bb   |    1 +
 13 files changed, 43 insertions(+), 18 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 3f3a24d..9c1ec67 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -30,7 +30,9 @@ MULTIMACH_TARGET_SYS = "${MULTIMACH_ARCH}${HOST_VENDOR}-${HOST_OS}"
 INHIBIT_DEFAULT_DEPS = "1"
 
 STAGING_DIR_HOST = "${STAGING_DIR}/${HOST_SYS}-nativesdk"
-STAGING_DIR_TARGET = "${STAGING_DIR}/${OLD_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
+
+SSTATE-INPUTDIRS = "${SYSROOT_DESTDIR}/${STAGING_DIR}/${HOST_SYS}-nativesdk"
+SSTATE-OUTPUTDIRS = "${TMPDIR}/sysroots/${HOST_SYS}-nativesdk"
 
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR}/${HOST_ARCH}-nativesdk${HOST_VENDOR}-${HOST_OS}"
 
diff --git a/meta/classes/cross.bbclass b/meta/classes/cross.bbclass
index 7c20be0..b273467 100644
--- a/meta/classes/cross.bbclass
+++ b/meta/classes/cross.bbclass
@@ -20,6 +20,14 @@ HOST_OS = "${BUILD_OS}"
 HOST_PREFIX = "${BUILD_PREFIX}"
 HOST_CC_ARCH = "${BUILD_CC_ARCH}"
 
+STAGING_DIR_HOST = "${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+
+export PKG_CONFIG_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}${libdir}/pkgconfig"
+export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
+
+SSTATE-INPUTDIRS = "${SYSROOT_DESTDIR}/${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+SSTATE-OUTPUTDIRS = "${TMPDIR}/sysroots/${BASEPKG_HOST_SYS}"
+
 CPPFLAGS = "${BUILD_CPPFLAGS}"
 CFLAGS = "${BUILD_CFLAGS}"
 CXXFLAGS = "${BUILD_CFLAGS}"
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 3ca9d62..34a937c 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -70,6 +70,9 @@ EXTRA_NATIVE_PKGCONFIG_PATH ?= ""
 PKG_CONFIG_PATH .= "${EXTRA_NATIVE_PKGCONFIG_PATH}"
 PKG_CONFIG_SYSROOT_DIR = ""
 
+SSTATE-INPUTDIRS = "${SYSROOT_DESTDIR}/${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+SSTATE-OUTPUTDIRS = "${TMPDIR}/sysroots/${BASEPKG_HOST_SYS}"
+
 ORIG_DEPENDS := "${DEPENDS}"
 ORIG_RDEPENDS := "${RDEPENDS}"
 
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 154bd82..eec4af6 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -19,6 +19,8 @@ python () {
 
 #STAGING_DIR_HOST = "${STAGING_DIR}/${HOST_SYS}-nativesdk"
 #STAGING_DIR_TARGET = "${STAGING_DIR}/${BASEPKG_TARGET_SYS}-nativesdk"
+STAGING_DIR_HOST = "${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+STAGING_DIR_TARGET = "${STAGING_DIR}/${BASEPKG_TARGET_SYS}"
 
 HOST_ARCH = "${SDK_ARCH}"
 HOST_VENDOR = "${SDK_VENDOR}"
@@ -51,6 +53,9 @@ FILES_${PN}-dbg += "${prefix}/.debug \
 export PKG_CONFIG_DIR = "${STAGING_DIR_HOST}${libdir}/pkgconfig"
 export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR_HOST}"
 
+SSTATE-INPUTDIRS = "${SYSROOT_DESTDIR}/${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+SSTATE-OUTPUTDIRS = "${TMPDIR}/sysroots/${BASEPKG_HOST_SYS}"
+
 ORIG_DEPENDS := "${DEPENDS}"
 DEPENDS_virtclass-nativesdk ?= "${ORIG_DEPENDS}"
 
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index d39c694..2f5f599 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1104,6 +1104,7 @@ do_package_write () {
 }
 do_package_write[noexec] = "1"
 do_build[recrdeptask] += "do_package_write"
+do_package[stamp-extra-info] = "${MACHINE}"
 addtask package_write before do_build after do_package
 
 EXPORT_FUNCTIONS do_package do_package_write
diff --git a/meta/classes/siteconfig.bbclass b/meta/classes/siteconfig.bbclass
index 37d910e..7340025 100644
--- a/meta/classes/siteconfig.bbclass
+++ b/meta/classes/siteconfig.bbclass
@@ -11,10 +11,10 @@ python siteconfig_do_siteconfig () {
 }
 
 siteconfig_do_siteconfig_gencache () {
-	mkdir -p ${WORKDIR}/site_config
+	mkdir -p ${WORKDIR}/site_config_${MACHINE}
 	gen-site-config ${FILE_DIRNAME}/site_config \
-		>${WORKDIR}/site_config/configure.ac
-	cd ${WORKDIR}/site_config
+		>${WORKDIR}/site_config_${MACHINE}/configure.ac
+	cd ${WORKDIR}/site_config_${MACHINE}
 	autoconf
         CONFIG_SITE="" ./configure ${CONFIGUREOPTS} --cache-file ${PN}_cache
 	sed -n -e "/ac_cv_c_bigendian/p" -e "/ac_cv_sizeof_/p" \
diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
index 0ba130c..5899f32 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -5,7 +5,7 @@ SSTATE_MANFILEBASE = "${SSTATE_MANIFESTS}/manifest-${SSTATE_PKGARCH}-"
 SSTATE_MANFILEPREFIX = "${SSTATE_MANFILEBASE}${PN}"
 
 
-SSTATE_PKGARCH    = "${BASE_PACKAGE_ARCH}"
+SSTATE_PKGARCH    = "${BASE_PACKAGE_ARCH}_${MACHINE}"
 SSTATE_PKGSPEC    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-"
 SSTATE_PKGNAME    = "${SSTATE_PKGSPEC}${BB_TASKHASH}"
 SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
@@ -18,7 +18,7 @@ python () {
     if bb.data.inherits_class('native', d):
         bb.data.setVar('SSTATE_PKGARCH', bb.data.getVar('BUILD_ARCH', d), d)
     elif bb.data.inherits_class('cross', d) or bb.data.inherits_class('crosssdk', d):
-        bb.data.setVar('SSTATE_PKGARCH', bb.data.expand("${BUILD_ARCH}_${BASE_PACKAGE_ARCH}", d), d)
+        bb.data.setVar('SSTATE_PKGARCH', bb.data.expand("${BUILD_ARCH}_${BASE_PACKAGE_ARCH}_${MACHINE}", d), d)
     elif bb.data.inherits_class('nativesdk', d):
         bb.data.setVar('SSTATE_PKGARCH', bb.data.expand("${SDK_ARCH}", d), d)
     elif bb.data.inherits_class('cross-canadian', d):
diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index 8432565..28097b9 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -76,6 +76,7 @@ do_populate_sysroot[dirs] = "${STAGING_DIR_TARGET}/${bindir} ${STAGING_DIR_TARGE
 			     ${STAGING_INCDIR_NATIVE} \
 			     ${STAGING_DATADIR} \
                              ${SYSROOT_DESTDIR}${STAGING_DIR_TARGET} \
+                             ${SYSROOT_DESTDIR}${STAGING_DIR_HOST} \
 			     ${S} ${B}"
 
 # Could be compile but populate_sysroot and do_install shouldn't run at the same time
@@ -101,10 +102,14 @@ python do_populate_sysroot () {
         bb.build.exec_func(f, d)
 }
 
+SSTATE-INPUTDIRS = "${SYSROOT_DESTDIR}/${STAGING_DIR}/${MACHINE}"
+SSTATE-OUTPUTDIRS = "${TMPDIR}/sysroots/${MACHINE}"
+
 SSTATETASKS += "do_populate_sysroot"
 do_populate_sysroot[sstate-name] = "populate-sysroot"
-do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${STAGING_DIR}"
-do_populate_sysroot[sstate-outputdirs] = "${TMPDIR}/sysroots"
+do_populate_sysroot[sstate-inputdirs] = "${SSTATE-INPUTDIRS}"
+do_populate_sysroot[sstate-outputdirs] = "${SSTATE-OUTPUTDIRS}"
+do_populate_sysroot[stamp-extra-info] = "${MACHINE}"
 
 python do_populate_sysroot_setscene () {
 	sstate_setscene(d)
diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index a5b2bd1..462f3d8 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -49,8 +49,8 @@ toolchain_create_tree_env_script () {
 	echo 'export TARGET_PREFIX=${TARGET_PREFIX}' >> $script
 	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${BUILD_SYS}"' >> $script
 	if [ "${TARGET_OS}" = "darwin8" ]; then
-		echo 'export TARGET_CFLAGS="-I${STAGING_DIR}${TARGET_SYS}${includedir}"' >> $script
-		echo 'export TARGET_LDFLAGS="-L${STAGING_DIR}${TARGET_SYS}${libdir}"' >> $script
+		echo 'export TARGET_CFLAGS="-I${STAGING_DIR}${MACHINE}${includedir}"' >> $script
+		echo 'export TARGET_LDFLAGS="-L${STAGING_DIR}${MACHINE}${libdir}"' >> $script
 		# Workaround darwin toolchain sysroot path problems
 		cd ${SDK_OUTPUT}${SDKTARGETSYSROOT}/usr
 		ln -s /usr/local local
diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index c26beea..b765142 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -276,7 +276,7 @@ STAGING_DATADIR_NATIVE = "${STAGING_DIR_NATIVE}${datadir_native}"
 
 # This should really be MULTIMACH_HOST_SYS but that breaks "all" and machine 
 # specific packages - hack around it for now.
-STAGING_DIR_HOST = "${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+STAGING_DIR_HOST = "${STAGING_DIR}/${MACHINE}"
 STAGING_BINDIR = "${STAGING_DIR_HOST}${bindir}"
 STAGING_LIBDIR = "${STAGING_DIR_HOST}${libdir}"
 STAGING_INCDIR = "${STAGING_DIR_HOST}${includedir}"
@@ -288,7 +288,7 @@ STAGING_PYDIR = "${STAGING_DIR}/lib/python2.4"
 
 # This should really be MULTIMACH_TARGET_SYS but that breaks "all" and machine 
 # specific packages - hack around it for now.
-STAGING_DIR_TARGET = "${STAGING_DIR}/${BASEPKG_TARGET_SYS}"
+STAGING_DIR_TARGET = "${STAGING_DIR}/${MACHINE}"
 
 # Setting DEPLOY_DIR outside of TMPDIR is helpful, when you are using
 # packaged staging and/or multimachine.
@@ -311,7 +311,7 @@ SDKPATHNATIVE = "${SDKPATH}/sysroots/${SDK_SYS}"
 ##################################################################
 
 OLDEST_KERNEL = "2.4.0"
-STAGING_KERNEL_DIR = "${STAGING_DIR}/${MULTIMACH_TARGET_SYS}/kernel"
+STAGING_KERNEL_DIR = "${STAGING_DIR}/${MACHINE}/kernel"
 
 ##################################################################
 # Specific image creation and rootfs population info.
@@ -595,10 +595,10 @@ SLOT = "0"
 
 # Other
 
-export PKG_CONFIG_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}${libdir}/pkgconfig"
+export PKG_CONFIG_DIR = "${STAGING_DIR}/${MACHINE}/${libdir}/pkgconfig"
 export PKG_CONFIG_PATH = "${PKG_CONFIG_DIR}:${STAGING_DATADIR}/pkgconfig"
 export PKG_CONFIG_LIBDIR = "${PKG_CONFIG_DIR}"
-export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
+export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR}/${MACHINE}"
 export PKG_CONFIG_DISABLE_UNINSTALLED = "yes"
 
 export QMAKE_MKSPEC_PATH = "${STAGING_DATADIR_NATIVE}/qmake"
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
index 72a4241..ed5efee 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
@@ -23,6 +23,6 @@ do_compile () {
 
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
-	install -d ${D}${target_base_libdir}/
-	mv ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${D}${target_base_libdir}/
+	install -d ${STAGING_DIR_TARGET}/${target_base_libdir}/
+	cp -rf ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${STAGING_DIR_TARGET}/${target_base_libdir}/
 }
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
index 4cabe0e..7aaa5b0 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-intermediate.inc
-PR = "r0"
+PR = "r1"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_csl-arm-2008q1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_csl-arm-2008q1.bb
index 8a8f21a..d6ef43f 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_csl-arm-2008q1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_csl-arm-2008q1.bb
@@ -8,3 +8,4 @@ do_install_append() {
 	ln -sf ${STAGING_DIR_NATIVE}${prefix_native}/lib/gcc/${TARGET_SYS}/${BINV}/include-fixed/* ${D}${STAGING_DIR_NATIVE}${prefix_native}/lib/gcc/${TARGET_SYS}/${BINV}/include/
 }
 
+PR = "r1"
-- 
1.6.3.3


