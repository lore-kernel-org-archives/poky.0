Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA83E4C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 21:08:53 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2011 19:08:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,483,1291622400"; d="scan'208";a="658496677"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2011 19:08:44 -0800
Message-Id: <4ea2c29a51419c04bb8425b79d1c5ba519f5ddec.1297912022.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297912022.git.lianhao.lu@intel.com>
References: <cover.1297912022.git.lianhao.lu@intel.com>
Old-Date: Thu, 17 Feb 2011 10:43:38 +0800
Date: Thu, 17 Feb 2011 11:08:18 +0800
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
X-List-Received-Date: Thu, 17 Feb 2011 03:08:54 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

Added missing --with-libtool-sysroot and --sysroot in environment files.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/toolchain-scripts.bbclass |   10 ++++------
 1 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index b2165bc..fb59761 100644
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
-- 
1.7.0.4


