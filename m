Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB5D54C8007E
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 03:35:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Feb 2011 01:35:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,479,1291622400"; d="scan'208";a="708402949"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 16 Feb 2011 01:35:42 -0800
Message-Id: <46406be29adb6345ff133b0762b4ceb8274b2b9b.1297848716.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297848716.git.lianhao.lu@intel.com>
References: <cover.1297848716.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Feb 2011 17:16:38 +0800
Date: Wed, 16 Feb 2011 17:35:21 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/3] toolchain-scripts.bbclass: Added libtool sysroot support.
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
X-List-Received-Date: Wed, 16 Feb 2011 09:35:50 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

1. Added missing --with-libtool-sysroot and --sysroot in environment
files.

2. added new functions to generate siteconfig file and version file.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/toolchain-scripts.bbclass |   34 ++++++++++++++++++++++++++-----
 1 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index b2165bc..2b9cfac 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -14,7 +14,7 @@ toolchain_create_sdk_env_script () {
 	echo 'export CXX=${TARGET_PREFIX}g++' >> $script
 	echo 'export GDB=${TARGET_PREFIX}gdb' >> $script
 	echo 'export TARGET_PREFIX=${TARGET_PREFIX}' >> $script
-	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux"' >> $script
+	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux --with-libtool-sysroot=${SDKTARGETSYSROOT}"' >> $script
 	if [ "${TARGET_OS}" = "darwin8" ]; then
 		echo 'export TARGET_CFLAGS="-I${SDKTARGETSYSROOT}${includedir}"' >> $script
 		echo 'export TARGET_LDFLAGS="-L${SDKTARGETSYSROOT}${libdir}"' >> $script
@@ -22,10 +22,8 @@ toolchain_create_sdk_env_script () {
 		cd ${SDK_OUTPUT}${SDKTARGETSYSROOT}/usr
 		ln -s /usr/local local
 	fi
-	echo 'export CFLAGS="${TARGET_CC_ARCH}"' >> $script
-	echo 'export CXXFLAGS="${TARGET_CC_ARCH}"' >> $script
-	echo "alias opkg='LD_LIBRARY_PATH=${SDKPATHNATIVE}${libdir_nativesdk} ${SDKPATHNATIVE}${bindir_nativesdk}/opkg-cl -f ${SDKPATHNATIVE}/${sysconfdir}/opkg-sdk.conf -o ${SDKPATHNATIVE}'" >> $script
-	echo "alias opkg-target='LD_LIBRARY_PATH=${SDKPATHNATIVE}${libdir_nativesdk} ${SDKPATHNATIVE}${bindir_nativesdk}/opkg-cl -f ${SDKTARGETSYSROOT}${sysconfdir}/opkg.conf -o ${SDKTARGETSYSROOT}'" >> $script
+	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=${SDKTARGETSYSROOT}"' >> $script
+	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=${SDKTARGETSYSROOT}"' >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="${SDKTARGETSYSROOT}"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
@@ -75,7 +73,7 @@ toolchain_create_sdk_env_script_for_installer () {
 	echo 'export CXX=${TARGET_PREFIX}g++' >> $script
 	echo 'export GDB=${TARGET_PREFIX}gdb' >> $script
 	echo 'export TARGET_PREFIX=${TARGET_PREFIX}' >> $script
-	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux"' >> $script
+	echo 'export CONFIGURE_FLAGS="--target=${TARGET_SYS} --host=${TARGET_SYS} --build=${SDK_ARCH}-linux --with-libtool-sysroot=##SDKTARGETSYSROOT##"' >> $script
 	if [ "${TARGET_OS}" = "darwin8" ]; then
 		echo 'export TARGET_CFLAGS="-I##SDKTARGETSYSROOT##${target_includedir}"' >> $script
 		echo 'export TARGET_LDFLAGS="-L##SDKTARGETSYSROOT##{target_libdir}"' >> $script
@@ -90,3 +88,27 @@ toolchain_create_sdk_env_script_for_installer () {
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
 	echo 'export POKY_SDK_VERSION="${SDK_VERSION}"' >> $script
 }
+
+#This function create a site config file
+toolchain_create_sdk_siteconfig () {
+	local siteconfig=$1
+	shift
+	local files=$@
+
+	rm -f $siteconfig
+	touch $siteconfig
+	for sitefile in ${files} ; do
+		cat $sitefile >> $siteconfig
+	done
+}
+
+#This function create a version information file
+toolchain_create_sdk_version () {
+	local versionfile=$1
+	rm -f $versionfile
+	touch $versionfile
+	echo 'Distro: ${DISTRO}' >> $versionfile
+	echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
+	echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
+	echo 'Timestamp: ${DATETIME}' >> $versionfile
+}
-- 
1.7.0.4


