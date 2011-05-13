Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94BF94C810D2
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:30 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="746532578"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 17:20:29 -0700
Message-Id: <1c62831d1c9934ad0ed4ae282d8efed60cb856db.1305245923.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Wed, 11 May 2011 16:55:04 -0700
Date: Thu, 12 May 2011 17:20:29 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 01/25] gcc: fix target gcc runtime issue
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
X-List-Received-Date: Fri, 13 May 2011 00:20:30 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

The liblto_plugin.so file is not packages for the target recipe causing this
gcc failure on the target.

gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/gcc/gcc-4.6.0.inc          |    2 +-
 meta/recipes-devtools/gcc/gcc-package-target.inc |    1 +
 meta/recipes-devtools/gcc/gcc_4.3.3.bb           |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb           |    2 +-
 meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb  |    2 +-
 5 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/gcc/gcc-4.6.0.inc b/meta/recipes-devtools/gcc/gcc-4.6.0.inc
index 2c30d43..fb5c70d 100644
--- a/meta/recipes-devtools/gcc/gcc-4.6.0.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.6.0.inc
@@ -7,7 +7,7 @@ require gcc-common.inc
 
 require gcc-4_6-branch-backports.inc
 
-PR = "r1"
+PR = "r2"
 
 DEPENDS =+ "mpfr gmp libmpc"
 NATIVEDEPS = "mpfr-native gmp-native gettext-native libmpc-native"
diff --git a/meta/recipes-devtools/gcc/gcc-package-target.inc b/meta/recipes-devtools/gcc/gcc-package-target.inc
index e7f1b80..afbcf0d 100644
--- a/meta/recipes-devtools/gcc/gcc-package-target.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-target.inc
@@ -12,6 +12,7 @@ FILES_${PN} = "\
   ${bindir}/${TARGET_PREFIX}gcc \
   ${bindir}/${TARGET_PREFIX}gccbug \
   ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/collect2 \
+  ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/* \
   ${gcclibdir}/${TARGET_SYS}/${BINV}/*.o \
   ${gcclibdir}/${TARGET_SYS}/${BINV}/specs \
   ${gcclibdir}/${TARGET_SYS}/${BINV}/lib* \
diff --git a/meta/recipes-devtools/gcc/gcc_4.3.3.bb b/meta/recipes-devtools/gcc/gcc_4.3.3.bb
index f0471d4..ba6e7b2 100644
--- a/meta/recipes-devtools/gcc/gcc_4.3.3.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.3.3.bb
@@ -1,4 +1,4 @@
-PR = "r11"
+PR = "r12"
 
 require gcc-${PV}.inc
 require gcc-configure-target.inc
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index a193b38..e04f443 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r4"
+PR = "r5"
 require gcc-${PV}.inc
 require gcc-configure-target.inc
 require gcc-package-target.inc
diff --git a/meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb b/meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb
index cc7540a..2df12ef 100644
--- a/meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb
+++ b/meta/recipes-devtools/gcc/gcc_csl-arm-2008q1.bb
@@ -1,4 +1,4 @@
-PR = "r3"
+PR = "r4"
 
 require gcc-${PV}.inc
 require gcc-configure-target.inc
-- 
1.7.3.4


