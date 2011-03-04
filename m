Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 377E24C800A4
	for <poky@yoctoproject.org>; Fri,  4 Mar 2011 04:41:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Mar 2011 02:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,263,1297065600"; d="scan'208";a="893764594"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by fmsmga001.fm.intel.com with ESMTP; 04 Mar 2011 02:41:05 -0800
Message-Id: <3f021379abe7bdf7958474e96eb688233280534f.1299235105.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1299235105.git.lianhao.lu@intel.com>
References: <cover.1299235105.git.lianhao.lu@intel.com>
Old-Date: Fri, 4 Mar 2011 18:34:44 +0800
Date: Fri, 04 Mar 2011 18:39:41 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] toolchain-script.bbclass: Added --sysroot to LDFLAGS.
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
X-List-Received-Date: Fri, 04 Mar 2011 10:41:06 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[YOCTO #808] Added --sysroot to LDFALGS in environment files.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/toolchain-scripts.bbclass     |    2 ++
 meta/recipes-core/meta/meta-environment.bb |    2 +-
 meta/recipes-core/meta/meta-toolchain.bb   |    2 +-
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index 2b9cfac..998ff14 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -24,6 +24,7 @@ toolchain_create_sdk_env_script () {
 	fi
 	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=${SDKTARGETSYSROOT}"' >> $script
 	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=${SDKTARGETSYSROOT}"' >> $script
+	echo 'export LDFLAGS="--sysroot=${SDKTARGETSYSROOT}"' >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="${SDKTARGETSYSROOT}"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
@@ -83,6 +84,7 @@ toolchain_create_sdk_env_script_for_installer () {
 	fi
 	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
+	echo 'export LDFLAGS="--sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
diff --git a/meta/recipes-core/meta/meta-environment.bb b/meta/recipes-core/meta/meta-environment.bb
index 0b88260..d2dc544 100644
--- a/meta/recipes-core/meta/meta-environment.bb
+++ b/meta/recipes-core/meta/meta-environment.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Package of environment files for SDK"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 LICENSE = "MIT"
-PR = "r2"
+PR = "r3"
 
 EXCLUDE_FROM_WORLD = "1"
 
diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
index 2443b38..92936b6 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Meta package for building a installable toolchain"
 LICENSE = "MIT"
 
-PR = "r2"
+PR = "r3"
 
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-- 
1.7.0.4


