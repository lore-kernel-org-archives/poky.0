Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 558364C80B70
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 20:43:13 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Dec 2010 18:43:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,205,1291622400"; d="scan'208";a="870283623"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 20 Dec 2010 18:43:12 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PUsEq-0004gE-Hz; Tue, 21 Dec 2010 10:46:08 +0800
Message-Id: <e447d8e1b444e5289684a0537d63798734f3330f.1292899187.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1292899187.git.lianhao.lu@intel.com>
References: <cover.1292899187.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Date: Tue, 21 Dec 2010 10:26:03 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/2] meta-environment: inherit cross-canadian.bbclass
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
X-List-Received-Date: Tue, 21 Dec 2010 02:43:14 -0000

[BUGID #565] This is a part of the bug #565 fixing, to reduce the
code duplication by inheriting the cross-canadian.bbclass.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/cross-canadian.bbclass        |    1 +
 meta/classes/toolchain-scripts.bbclass     |    8 +++-----
 meta/recipes-core/meta/meta-environment.bb |   25 +++++++------------------
 3 files changed, 11 insertions(+), 23 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 9edce31..3f3a24d 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -15,6 +15,7 @@ STAGING_BINDIR_TOOLCHAIN = "${STAGING_DIR_NATIVE}${bindir_native}/${SDK_ARCH}${S
 # Update BASE_PACKAGE_ARCH and PACKAGE_ARCHS
 #
 OLD_MULTIMACH_ARCH := "${MULTIMACH_ARCH}"
+OLD_MULTIMACH_TARGET_SYS := "${MULTIMACH_TARGET_SYS}"
 OLD_PACKAGE_ARCH := ${BASE_PACKAGE_ARCH}
 BASE_PACKAGE_ARCH = "${SDK_ARCH}-nativesdk"
 python () {
diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index 4093635..a5b2bd1 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -69,7 +69,7 @@ toolchain_create_sdk_env_script_for_installer () {
 	touch $script
 	echo 'export PATH=${SDKPATHNATIVE}${bindir_nativesdk}:${SDKPATHNATIVE}${bindir_nativesdk}/${OLD_MULTIMACH_TARGET_SYS}:$PATH' >> $script
 	echo 'export PKG_CONFIG_SYSROOT_DIR=##SDKTARGETSYSROOT##' >> $script
-	echo 'export PKG_CONFIG_PATH=##SDKTARGETSYSROOT##${libdir}/pkgconfig' >> $script
+	echo 'export PKG_CONFIG_PATH=##SDKTARGETSYSROOT##${target_libdir}/pkgconfig' >> $script
 	echo 'export CONFIG_SITE=${SDKPATH}/site-config-${OLD_MULTIMACH_TARGET_SYS}' >> $script
 	echo 'export CC=${TARGET_PREFIX}gcc' >> $script
 	echo 'export CXX=${TARGET_PREFIX}g++' >> $script
@@ -77,16 +77,14 @@ toolchain_create_sdk_env_script_for_installer () {
 	echo 'export TARGET_PREFIX=${TARGET_PREFIX}' >> $script
 	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux"' >> $script
 	if [ "${TARGET_OS}" = "darwin8" ]; then
-		echo 'export TARGET_CFLAGS="-I##SDKTARGETSYSROOT##${includedir}"' >> $script
-		echo 'export TARGET_LDFLAGS="-L##SDKTARGETSYSROOT##{libdir}"' >> $script
+		echo 'export TARGET_CFLAGS="-I##SDKTARGETSYSROOT##${target_includedir}"' >> $script
+		echo 'export TARGET_LDFLAGS="-L##SDKTARGETSYSROOT##{target_libdir}"' >> $script
 		# Workaround darwin toolchain sysroot path problems
 		cd ${SDK_OUTPUT}${SDKTARGETSYSROOT}/usr
 		ln -s /usr/local local
 	fi
 	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT## -I##SDKTARGETSYSROOT##${GXX_INCLUDEDIR}"' >> $script
-	echo "# alias opkg='LD_LIBRARY_PATH=${SDKPATHNATIVE}${libdir_nativesdk} ${SDKPATHNATIVE}${bindir_nativesdk}/opkg-cl -f ${SDKPATHNATIVE}/${sysconfdir}/opkg-sdk.conf -o ${SDKPATHNATIVE}'" >> $script
-	echo "# alias opkg-target='LD_LIBRARY_PATH=${SDKPATHNATIVE}${libdir_nativesdk} ${SDKPATHNATIVE}${bindir_nativesdk}/opkg-cl -f ##SDKTARGETSYSROOT##${sysconfdir}/opkg.conf -o ##SDKTARGETSYSROOT##'" >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
diff --git a/meta/recipes-core/meta/meta-environment.bb b/meta/recipes-core/meta/meta-environment.bb
index 255f2f3..da8d661 100644
--- a/meta/recipes-core/meta/meta-environment.bb
+++ b/meta/recipes-core/meta/meta-environment.bb
@@ -4,30 +4,19 @@ LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
 LICENSE = "MIT"
 PR = "r0"
 
-inherit meta toolchain-scripts
-
-TRANSLATED_TARGET_ARCH ?= "${TARGET_ARCH}"
-
 EXCLUDE_FROM_WORLD = "1"
 
+inherit toolchain-scripts
+# get target config site before inheritting corss-canadian
+TARGET_CONFIG_SITE := "${@siteinfo_get_files(d)}"
+
 SDK_DIR = "${WORKDIR}/sdk"
 SDK_OUTPUT = "${SDK_DIR}/image"
-
 SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
 
-# Save MULTIMACH_TARGET_SYS
-OLD_MULTIMACH_TARGET_SYS := "${MULTIMACH_TARGET_SYS}"
-MULTIMACH_TARGET_SYS = "${MULTIMACH_ARCH}${SDK_VENDOR}-${SDK_OS}"
-
-# Save PACKAGE_ARCH
-OLD_PACKAGE_ARCH := ${BASE_PACKAGE_ARCH}
-BASE_PACKAGE_ARCH = "${SDK_ARCH}-nativesdk"
-
-#change SSTATE_PKGARCH due to the PACKAGE_ARCH change
-SSTATE_PKGARCH = "${SDK_ARCH}"
+inherit cross-canadian
 
-CONFIG_SITE = "${@siteinfo_get_files(d)}"
-GXX_INCLUDEDIR := "${includedir}/c++"
+GXX_INCLUDEDIR := "${target_includedir}/c++"
 
 do_generate_content[nostamp] = "1"
 do_generate_content() {
@@ -38,7 +27,7 @@ do_generate_content() {
     siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${OLD_MULTIMACH_TARGET_SYS}
 
     touch $siteconfig
-    for sitefile in ${CONFIG_SITE} ; do
+    for sitefile in ${TARGET_CONFIG_SITE} ; do
         cat $sitefile >> $siteconfig
     done
 
-- 
1.7.0.4


