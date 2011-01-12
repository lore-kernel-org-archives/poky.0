Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0F984C810C1
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 20:09:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Jan 2011 18:09:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,310,1291622400"; d="scan'208";a="695855985"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by orsmga001.jf.intel.com with ESMTP; 11 Jan 2011 18:09:48 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PcqBJ-0003Wp-2d; Wed, 12 Jan 2011 10:11:25 +0800
Message-Id: <3a431561a14cb36b08a878e7880d9f95248457aa.1294798118.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1294798118.git.lianhao.lu@intel.com>
References: <cover.1294798118.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Old-Date: Wed, 12 Jan 2011 10:05:18 +0800
Date: Wed, 12 Jan 2011 10:11:25 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] meta-environment: Remove c++ include dir from CXXFLAGS.
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
X-List-Received-Date: Wed, 12 Jan 2011 02:09:49 -0000

[BUGID #651]. c++ include dir is no longer needed in the environment
files due to commit f13cb20.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/toolchain-scripts.bbclass     |    2 +-
 meta/recipes-core/meta/meta-environment.bb |    4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index a5b2bd1..5ec0e8a 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -84,7 +84,7 @@ toolchain_create_sdk_env_script_for_installer () {
 		ln -s /usr/local local
 	fi
 	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
-	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT## -I##SDKTARGETSYSROOT##${GXX_INCLUDEDIR}"' >> $script
+	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
diff --git a/meta/recipes-core/meta/meta-environment.bb b/meta/recipes-core/meta/meta-environment.bb
index da8d661..e5a6314 100644
--- a/meta/recipes-core/meta/meta-environment.bb
+++ b/meta/recipes-core/meta/meta-environment.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Packge of environment files for SDK"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 LICENSE = "MIT"
-PR = "r0"
+PR = "r1"
 
 EXCLUDE_FROM_WORLD = "1"
 
@@ -16,8 +16,6 @@ SDKTARGETSYSROOT = "${SDKPATH}/sysroots/${TARGET_SYS}"
 
 inherit cross-canadian
 
-GXX_INCLUDEDIR := "${target_includedir}/c++"
-
 do_generate_content[nostamp] = "1"
 do_generate_content() {
 
-- 
1.7.0.4


