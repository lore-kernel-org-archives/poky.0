Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2A994C811AA
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 00:06:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 10 Jan 2011 22:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,305,1291622400"; d="scan'208";a="591743774"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 10 Jan 2011 22:06:07 -0800
Message-Id: <1ac6a1e5d2e7c34c507b3ab90065c0adc570afb6.1294726281.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1294726280.git.dongxiao.xu@intel.com>
References: <cover.1294726280.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Mon, 10 Jan 2011 14:24:52 +0800
Date: Tue, 11 Jan 2011 14:18:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] bitbake: machine specific sysroots implementation
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
X-List-Received-Date: Tue, 11 Jan 2011 06:06:09 -0000

This commit changes the sysroots path to be machine specific.

Changes includes:

1) STAGING_DIR_TARGET and STRAGING_DIR_HOST points to machine specific
paths.

2) task stamp files. Adding ${MACHINE} info into stamp files for
do_populate_sysroots and do_package tasks. Add a BB_STAMPTASK_BLACKLIST
to keep native, nativesdk, crosssdk, and cross-canadian stamp unchanged.

3) siteconfig path. Separate the site config path for different machines
to avoid one machine adopting the cache file of another machine.

4) sstate stamp file. Add machine name to sstate stamp file since some
prebuild result could not be shared after sysroots are implemented as
machine spedific. Keep native, nativesdk, crosssdk, and cross-canadian
unchanged.

5) toolchain scripts. Change the environment path to point to machine
specific sysroots in toolchain scripts bbclass.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/classes/cross-canadian.bbclass    |    3 ++-
 meta/classes/cross.bbclass             |    5 +++++
 meta/classes/crosssdk.bbclass          |    2 ++
 meta/classes/native.bbclass            |    2 ++
 meta/classes/nativesdk.bbclass         |    5 +++++
 meta/classes/package.bbclass           |    1 +
 meta/classes/siteconfig.bbclass        |    6 +++---
 meta/classes/sstate.bbclass            |    6 ++++--
 meta/classes/staging.bbclass           |    1 +
 meta/classes/toolchain-scripts.bbclass |    4 ++--
 meta/conf/bitbake.conf                 |   11 ++++++-----
 11 files changed, 33 insertions(+), 13 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 9897105..33be2e3 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -30,7 +30,6 @@ MULTIMACH_TARGET_SYS = "${MULTIMACH_ARCH}${HOST_VENDOR}-${HOST_OS}"
 INHIBIT_DEFAULT_DEPS = "1"
 
 STAGING_DIR_HOST = "${STAGING_DIR}/${HOST_SYS}-nativesdk"
-STAGING_DIR_TARGET = "${STAGING_DIR}/${OLD_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
 
 TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR}/${HOST_ARCH}-nativesdk${HOST_VENDOR}-${HOST_OS}"
 
@@ -84,3 +83,5 @@ export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR_HOST}"
 # Cross-canadian packages need to pull in nativesdk dynamic libs
 SHLIBSDIR = "${STAGING_DIR}/${SDK_ARCH}-nativesdk${SDK_VENDOR}-${BUILD_OS}/shlibs"
 
+do_populate_sysroot[stamp-extra-info] = ""
+do_package[stamp-extra-info] = ""
diff --git a/meta/classes/cross.bbclass b/meta/classes/cross.bbclass
index 7c20be0..085ce21 100644
--- a/meta/classes/cross.bbclass
+++ b/meta/classes/cross.bbclass
@@ -20,6 +20,11 @@ HOST_OS = "${BUILD_OS}"
 HOST_PREFIX = "${BUILD_PREFIX}"
 HOST_CC_ARCH = "${BUILD_CC_ARCH}"
 
+STAGING_DIR_HOST = "${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+
+export PKG_CONFIG_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}${libdir}/pkgconfig"
+export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
+
 CPPFLAGS = "${BUILD_CPPFLAGS}"
 CFLAGS = "${BUILD_CFLAGS}"
 CXXFLAGS = "${BUILD_CFLAGS}"
diff --git a/meta/classes/crosssdk.bbclass b/meta/classes/crosssdk.bbclass
index 23db163..08ba823 100644
--- a/meta/classes/crosssdk.bbclass
+++ b/meta/classes/crosssdk.bbclass
@@ -18,3 +18,5 @@ target_base_libdir = "${SDKPATHNATIVE}${base_libdir_nativesdk}"
 target_prefix = "${SDKPATHNATIVE}${prefix_nativesdk}"
 target_exec_prefix = "${SDKPATHNATIVE}${exec_prefix_nativesdk}"
 
+do_populate_sysroot[stamp-extra-info] = ""
+do_package[stamp-extra-info] = ""
diff --git a/meta/classes/native.bbclass b/meta/classes/native.bbclass
index 4355db2..986c6ff 100644
--- a/meta/classes/native.bbclass
+++ b/meta/classes/native.bbclass
@@ -119,3 +119,5 @@ do_package_write_ipk[noexec] = "1"
 do_package_write_deb[noexec] = "1"
 do_package_write_rpm[noexec] = "1"
 
+do_populate_sysroot[stamp-extra-info] = ""
+do_package[stamp-extra-info] = ""
diff --git a/meta/classes/nativesdk.bbclass b/meta/classes/nativesdk.bbclass
index 7ed5ca5..e41a4cf 100644
--- a/meta/classes/nativesdk.bbclass
+++ b/meta/classes/nativesdk.bbclass
@@ -19,6 +19,8 @@ python () {
 
 #STAGING_DIR_HOST = "${STAGING_DIR}/${HOST_SYS}-nativesdk"
 #STAGING_DIR_TARGET = "${STAGING_DIR}/${BASEPKG_TARGET_SYS}-nativesdk"
+STAGING_DIR_HOST = "${STAGING_DIR}/${BASEPKG_HOST_SYS}"
+STAGING_DIR_TARGET = "${STAGING_DIR}/${BASEPKG_TARGET_SYS}"
 
 HOST_ARCH = "${SDK_ARCH}"
 HOST_VENDOR = "${SDK_VENDOR}"
@@ -80,3 +82,6 @@ python __anonymous () {
     bb.data.setVar("PROVIDES", provides, d)
     bb.data.setVar("OVERRIDES", bb.data.getVar("OVERRIDES", d, False) + ":virtclass-nativesdk", d)
 }
+
+do_populate_sysroot[stamp-extra-info] = ""
+do_package[stamp-extra-info] = ""
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index d39c694..7e901ec 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1091,6 +1091,7 @@ do_package[sstate-plaindirs] = "${PKGD} ${PKGDEST}"
 do_package[sstate-inputdirs] = "${PKGDESTWORK} ${SHLIBSWORKDIR}"
 do_package[sstate-outputdirs] = "${PKGDATA_DIR} ${SHLIBSDIR}"
 do_package[sstate-lockfile] = "${PACKAGELOCK}"
+do_package[stamp-extra-info] = "${MACHINE}"
 do_package_setscene[dirs] = "${STAGING_DIR}"
 
 python do_package_setscene () {
diff --git a/meta/classes/siteconfig.bbclass b/meta/classes/siteconfig.bbclass
index e7cc9ae..c037bb5 100644
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
index b6e6c92..1a9805a 100644
--- a/meta/classes/sstate.bbclass
+++ b/meta/classes/sstate.bbclass
@@ -5,7 +5,7 @@ SSTATE_MANFILEBASE = "${SSTATE_MANIFESTS}/manifest-${SSTATE_PKGARCH}-"
 SSTATE_MANFILEPREFIX = "${SSTATE_MANFILEBASE}${PN}"
 
 
-SSTATE_PKGARCH    = "${MULTIMACH_ARCH}"
+SSTATE_PKGARCH    = "${MULTIMACH_ARCH}_${MACHINE}"
 SSTATE_PKGSPEC    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-"
 SSTATE_PKGNAME    = "${SSTATE_PKGSPEC}${BB_TASKHASH}"
 SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"
@@ -17,7 +17,9 @@ BB_HASHFILENAME = "${SSTATE_PKGNAME}"
 python () {
     if bb.data.inherits_class('native', d):
         bb.data.setVar('SSTATE_PKGARCH', bb.data.getVar('BUILD_ARCH', d), d)
-    elif bb.data.inherits_class('cross', d) or bb.data.inherits_class('crosssdk', d):
+    elif bb.data.inherits_class('cross', d):
+        bb.data.setVar('SSTATE_PKGARCH', bb.data.expand("${BUILD_ARCH}_${BASE_PACKAGE_ARCH}_${MACHINE}", d), d)
+    elif bb.data.inherits_class('crosssdk', d):
         bb.data.setVar('SSTATE_PKGARCH', bb.data.expand("${BUILD_ARCH}_${BASE_PACKAGE_ARCH}", d), d)
     elif bb.data.inherits_class('nativesdk', d):
         bb.data.setVar('SSTATE_PKGARCH', bb.data.expand("${SDK_ARCH}", d), d)
diff --git a/meta/classes/staging.bbclass b/meta/classes/staging.bbclass
index 4d2991b..7ff4847 100644
--- a/meta/classes/staging.bbclass
+++ b/meta/classes/staging.bbclass
@@ -106,6 +106,7 @@ SSTATETASKS += "do_populate_sysroot"
 do_populate_sysroot[sstate-name] = "populate-sysroot"
 do_populate_sysroot[sstate-inputdirs] = "${SYSROOT_DESTDIR}/${base_prefix}"
 do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR_HOST}/"
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
index 376e3cf..4d83258 100644
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
@@ -596,10 +596,10 @@ SLOT = "0"
 
 # Other
 
-export PKG_CONFIG_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}${libdir}/pkgconfig"
+export PKG_CONFIG_DIR = "${STAGING_DIR}/${MACHINE}/${libdir}/pkgconfig"
 export PKG_CONFIG_PATH = "${PKG_CONFIG_DIR}:${STAGING_DATADIR}/pkgconfig"
 export PKG_CONFIG_LIBDIR = "${PKG_CONFIG_DIR}"
-export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR}/${BASE_PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}"
+export PKG_CONFIG_SYSROOT_DIR = "${STAGING_DIR}/${MACHINE}"
 export PKG_CONFIG_DISABLE_UNINSTALLED = "yes"
 
 export QMAKE_MKSPEC_PATH = "${STAGING_DATADIR_NATIVE}/qmake"
@@ -732,3 +732,4 @@ BB_SIGNATURE_HANDLER ?= "basic"
 BB_HASHTASK_WHITELIST ?= "(.*-cross$|.*-native$|.*-cross-initial$|.*-cross-intermediate$|^virtual:native:.*|^virtual:nativesdk:.*)"
 BB_HASHBASE_WHITELIST ?= "TMPDIR FILE PATH PWD BB_TASKHASH BBPATH DL_DIR SSTATE_DIR THISDIR FILESEXTRAPATHS FILE_DIRNAME HOME LOGNAME SHELL TERM USER"
 
+BB_STAMPTASK_BLACKLIST ?= "(.*-native_*|.*-nativesdk_*|^virtual:native:*|^virtual:nativesdk:*|.*-crosssdk_*|.*-cross-canadian-*)"
-- 
1.6.3.3


