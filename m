Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20B074C80878
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 04:31:46 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Mar 2011 02:31:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,204,1299484800"; d="scan'208";a="614594401"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 02:31:38 -0700
Message-Id: <f4e026b7e1a0a0c7991b814868f383bee4d8d965.1300440492.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1300440492.git.lianhao.lu@intel.com>
References: <cover.1300440492.git.lianhao.lu@intel.com>
Old-Date: Fri, 18 Mar 2011 17:23:08 +0800
Date: Fri, 18 Mar 2011 17:30:54 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] toolchain-scripts.bbclass: Added --sysroot to CPPFLAGS.
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
X-List-Received-Date: Fri, 18 Mar 2011 09:31:46 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[YOCTO #908] Added CPPFLAGS into the environment file and added
--sysroot to it.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/toolchain-scripts.bbclass     |    2 ++
 meta/recipes-core/meta/meta-environment.bb |    2 +-
 meta/recipes-core/meta/meta-toolchain.bb   |    2 +-
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/classes/toolchain-scripts.bbclass b/meta/classes/toolchain-scripts.bbclass
index 998ff14..ef21784 100644
--- a/meta/classes/toolchain-scripts.bbclass
+++ b/meta/classes/toolchain-scripts.bbclass
@@ -25,6 +25,7 @@ toolchain_create_sdk_env_script () {
 	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=${SDKTARGETSYSROOT}"' >> $script
 	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=${SDKTARGETSYSROOT}"' >> $script
 	echo 'export LDFLAGS="--sysroot=${SDKTARGETSYSROOT}"' >> $script
+	echo 'export CPPFLAGS="--sysroot=${SDKTARGETSYSROOT}"' >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="${SDKTARGETSYSROOT}"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
@@ -85,6 +86,7 @@ toolchain_create_sdk_env_script_for_installer () {
 	echo 'export CFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export CXXFLAGS="${TARGET_CC_ARCH} --sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export LDFLAGS="--sysroot=##SDKTARGETSYSROOT##"' >> $script
+	echo 'export CPPFLAGS="--sysroot=##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_NATIVE_SYSROOT="${SDKPATHNATIVE}"' >> $script
 	echo 'export POKY_TARGET_SYSROOT="##SDKTARGETSYSROOT##"' >> $script
 	echo 'export POKY_DISTRO_VERSION="${DISTRO_VERSION}"' >> $script
diff --git a/meta/recipes-core/meta/meta-environment.bb b/meta/recipes-core/meta/meta-environment.bb
index d2dc544..b20068f 100644
--- a/meta/recipes-core/meta/meta-environment.bb
+++ b/meta/recipes-core/meta/meta-environment.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Package of environment files for SDK"
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 LICENSE = "MIT"
-PR = "r3"
+PR = "r4"
 
 EXCLUDE_FROM_WORLD = "1"
 
diff --git a/meta/recipes-core/meta/meta-toolchain.bb b/meta/recipes-core/meta/meta-toolchain.bb
index 92936b6..7a241da 100644
--- a/meta/recipes-core/meta/meta-toolchain.bb
+++ b/meta/recipes-core/meta/meta-toolchain.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Meta package for building a installable toolchain"
 LICENSE = "MIT"
 
-PR = "r3"
+PR = "r4"
 
 LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-- 
1.7.0.4


