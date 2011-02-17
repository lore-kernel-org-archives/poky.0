Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 618E04C800A8
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 21:08:54 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2011 19:08:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,483,1291622400"; d="scan'208";a="888260501"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.141])
	by fmsmga001.fm.intel.com with ESMTP; 16 Feb 2011 19:08:45 -0800
Message-Id: <8a86f35d4d75bc6f0231907e40e356dc5448b336.1297912022.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1297912022.git.lianhao.lu@intel.com>
References: <cover.1297912022.git.lianhao.lu@intel.com>
Old-Date: Thu, 17 Feb 2011 10:48:12 +0800
Date: Thu, 17 Feb 2011 11:08:19 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 2/3] toolchain-script/populate_sdk/meta-toolchain: moving common code.
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

moving common code between populate_sdk.bbclass and meta-environment.bb
into toolchain-script.bbclass.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/populate_sdk.bbclass          |   13 ++-----------
 meta/classes/toolchain-scripts.bbclass     |   24 ++++++++++++++++++++++++
 meta/recipes-core/meta/meta-environment.bb |   16 +++-------------
 3 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/meta/classes/populate_sdk.bbclass b/meta/classes/populate_sdk.bbclass
index 7e260ef..474b43b 100644
--- a/meta/classes/populate_sdk.bbclass
+++ b/meta/classes/populate_sdk.bbclass
@@ -38,21 +38,12 @@ fakeroot do_populate_sdk() {
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
diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index fb59761..2b9cfac 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -88,3 +88,27 @@ toolchain_create_sdk_env_script_for_installer () {
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


