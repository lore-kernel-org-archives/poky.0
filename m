Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D84E4C8007E
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 03:35:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Feb 2011 01:35:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,479,1291622400"; d="scan'208";a="603155822"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by orsmga002.jf.intel.com with ESMTP; 16 Feb 2011 01:35:44 -0800
Message-Id: <36d278afb716c15255161040c71fdfcabd10c3d7.1297848716.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297848716.git.lianhao.lu@intel.com>
References: <cover.1297848716.git.lianhao.lu@intel.com>
Old-Date: Wed, 16 Feb 2011 17:26:04 +0800
Date: Wed, 16 Feb 2011 17:35:22 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 2/3] meta-environment/populate_sdk: moving common code to toolchain-script.
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
X-List-Received-Date: Wed, 16 Feb 2011 09:35:45 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

moving common code between populate_sdk.bbclass and meta-environment.bb
into toolchain-script.bbclass.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk.bbclass          |   14 ++------------
 meta/recipes-core/meta/meta-environment.bb |   16 +++-------------
 2 files changed, 5 insertions(+), 25 deletions(-)

diff --git a/meta/classes/populate_sdk.bbclass b/meta/classes/populate_sdk.bbclass
index 7e260ef..211f6dd 100644
--- a/meta/classes/populate_sdk.bbclass
+++ b/meta/classes/populate_sdk.bbclass
@@ -29,7 +29,6 @@ fakeroot do_populate_sdk() {
 
 	# Can copy pstage files here
 	# target_pkgs=`cat ${SDK_OUTPUT}/${SDKTARGETSYSROOT}/var/lib/opkg/status | grep Package: | cut -f 2 -d ' '`
-
 	# Fix or remove broken .la files
 	#rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}/lib/*.la
 	rm -f ${SDK_OUTPUT}/${SDKPATHNATIVE}${libdir_nativesdk}/*.la
@@ -38,21 +37,12 @@ fakeroot do_populate_sdk() {
 	ln -s /etc/ld.so.cache ${SDK_OUTPUT}/${SDKPATHNATIVE}/etc/ld.so.cache
 
 	# Setup site file for external use
-	siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${MULTIMACH_TARGET_SYS}
-	touch $siteconfig
-	for sitefile in ${CONFIG_SITE} ; do
-		cat $sitefile >> $siteconfig
-	done
+	toolchain_create_sdk_siteconfig ${SDK_OUTPUT}/${SDKPATH}/site-config-${MULTIMACH_TARGET_SYS} ${CONFIG_SITE}
 
 	toolchain_create_sdk_env_script
 
 	# Add version information
-	versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${MULTIMACH_TARGET_SYS}
-	touch $versionfile
-	echo 'Distro: ${DISTRO}' >> $versionfile
-	echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
-	echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
-	echo 'Timestamp: ${DATETIME}' >> $versionfile
+	toolchain_create_sdk_version ${SDK_OUTPUT}/${SDKPATH}/version-${MULTIMACH_TARGET_SYS}
 
 	# Package it up
 	mkdir -p ${SDK_DEPLOY}
diff --git a/meta/recipes-core/meta/meta-environment.bb b/meta/recipes-core/meta/meta-environment.bb
index 4ba919f..0b88260 100644
--- a/meta/recipes-core/meta/meta-environment.bb
+++ b/meta/recipes-core/meta/meta-environment.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Package of environment files for SDK"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 LICENSE = "MIT"
-PR = "r1"
+PR = "r2"
 
 EXCLUDE_FROM_WORLD = "1"
 
@@ -22,22 +22,12 @@ do_generate_content() {
     rm -rf ${SDK_OUTPUT}
     mkdir -p ${SDK_OUTPUT}/${SDKPATH}
 
-    siteconfig=${SDK_OUTPUT}/${SDKPATH}/site-config-${OLD_MULTIMACH_TARGET_SYS}
-
-    touch $siteconfig
-    for sitefile in ${TARGET_CONFIG_SITE} ; do
-        cat $sitefile >> $siteconfig
-    done
+    toolchain_create_sdk_siteconfig ${SDK_OUTPUT}/${SDKPATH}/site-config-${OLD_MULTIMACH_TARGET_SYS} ${TARGET_CONFIG_SITE}
 
     toolchain_create_sdk_env_script_for_installer
 
     # Add version information
-    versionfile=${SDK_OUTPUT}/${SDKPATH}/version-${OLD_MULTIMACH_TARGET_SYS}
-    touch $versionfile
-    echo 'Distro: ${DISTRO}' >> $versionfile
-    echo 'Distro Version: ${DISTRO_VERSION}' >> $versionfile
-    echo 'Metadata Revision: ${METADATA_REVISION}' >> $versionfile
-    echo 'Timestamp: ${DATETIME}' >> $versionfile
+    toolchain_create_sdk_version ${SDK_OUTPUT}/${SDKPATH}/version-${OLD_MULTIMACH_TARGET_SYS}
 }
 addtask generate_content before do_install after do_compile
 
-- 
1.7.0.4


