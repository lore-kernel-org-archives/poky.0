Return-Path: <dexuan.cui@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2F8A4C811FF
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:58:30 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Jan 2011 05:58:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,339,1291622400"; d="scan'208";a="376147493"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2011 05:58:14 -0800
Message-Id: <4e63a8f3d0e84e21436318a5b0e020154cc490b4.1295359004.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1295359004.git.dexuan.cui@intel.com>
References: <cover.1295359004.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Tue, 18 Jan 2011 12:50:39 +0800
Date: Tue, 18 Jan 2011 21:57:43 +0800
To: poky@yoctoproject.org
CC: 
Subject: [RFC: enhance toolchain bootstrap process: v3: 3/7] gcc-cross-initial, gcc-crosssdk-initial: change CROSS_TARGET_SYS_DIR and insall into new locations
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
X-List-Received-Date: Tue, 18 Jan 2011 13:58:31 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-devtools/gcc/gcc-cross-initial.inc    |    2 ++
 .../gcc/gcc-cross-initial_4.3.3.bb                 |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-crosssdk-initial_4.3.3.bb              |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 5 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial.inc b/meta/recipes-devtools/gcc/gcc-cross-initial.inc
index f582de9..4e2e343 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-initial.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-initial.inc
@@ -2,6 +2,8 @@ DEPENDS = "virtual/${TARGET_PREFIX}binutils gettext-native ${NATIVEDEPS}"
 PROVIDES = "virtual/${TARGET_PREFIX}gcc-initial"
 PACKAGES = ""
 
+CROSS_TARGET_SYS_DIR_append = ".${PN}"
+
 # This is intended to be a -very- basic config
 # sysroot is needed in case we use libc-initial
 EXTRA_OECONF = "--with-local-prefix=${STAGING_DIR_TARGET}${target_prefix} \
diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb b/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb
index 081b7d6..28ac1ab 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb
@@ -1,5 +1,5 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-initial.inc
 
-PR = "r4"
+PR = "r5"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
index a121782..b2c257d 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
@@ -1,5 +1,5 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-initial.inc
 
-PR = "r1"
+PR = "r2"
 
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb
index 5daa31b..b42de47 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb
@@ -1,3 +1,3 @@
 require gcc-cross-initial_${PV}.bb
 require gcc-crosssdk-initial.inc
-PR = "r5"
+PR = "r6"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
index 0fc5faa..240caf5 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-initial_${PV}.bb
 require gcc-crosssdk-initial.inc
 
-PR = "r1"
+PR = "r2"
-- 
1.7.2


