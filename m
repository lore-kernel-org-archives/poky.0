Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6730D4C80A8B
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 00:23:00 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Mar 2011 22:22:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,294,1297065600"; d="scan'208";a="400450207"
Received: from llu-piketon.sh.intel.com (HELO localhost) ([10.239.36.87])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2011 22:22:58 -0800
Message-Id: <6a1fe90d5a43e3260098dc90b8d467a1ba7d6335.1299737813.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1299737813.git.lianhao.lu@intel.com>
References: <cover.1299737813.git.lianhao.lu@intel.com>
Old-Date: Thu, 10 Mar 2011 09:37:04 +0800
Date: Thu, 10 Mar 2011 14:21:49 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/1] gcc/collect2: Added --sysroot support into collect2 in gcc.
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
X-List-Received-Date: Thu, 10 Mar 2011 06:23:00 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

[YOCTO #815] Added --sysroot into COLLECT_GCC_OPTIONS to allow the
collect2 support user specifed sysroot.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/recipes-devtools/gcc/gcc-4.5.1.inc            |    1 +
 .../gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch        |   22 ++++++++++++++++++++
 .../gcc/gcc-cross-canadian_4.5.1.bb                |    2 +-
 .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
 .../gcc/gcc-cross-intermediate_4.5.1.bb            |    2 +-
 meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb       |    2 +-
 .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
 .../gcc/gcc-crosssdk-intermediate_4.5.1.bb         |    2 +-
 meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb    |    2 +-
 meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb     |    2 +-
 meta/recipes-devtools/gcc/gcc_4.5.1.bb             |    2 +-
 11 files changed, 32 insertions(+), 9 deletions(-)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch

diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1.inc b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
index 6c600c1..3c4902e 100644
--- a/meta/recipes-devtools/gcc/gcc-4.5.1.inc
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1.inc
@@ -56,6 +56,7 @@ SRC_URI = "${GNU_MIRROR}/gcc/gcc-${PV}/gcc-${PV}.tar.bz2 \
 	   file://disable_relax_pic_calls_flag.patch \
 	   file://gcc-poison-parameters.patch \
 	   file://GPLUSPLUS_INCLUDE_DIR_with_sysroot.patch \
+	   file://COLLECT_GCC_OPTIONS.patch \
 	  "
 	
 SRC_URI_append_sh3  = " file://sh3-installfix-fixheaders.patch;patch=1 "
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
new file mode 100644
index 0000000..3e3dec7
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-4.5.1/COLLECT_GCC_OPTIONS.patch
@@ -0,0 +1,22 @@
+#This patck added --sysroot into COLLECT_GCC_OPTIONS which is used to
+#invoke collect2.
+
+diff -ruN gcc-4.5.1.orig/gcc/gcc.c gcc-4.5.1/gcc/gcc.c
+--- gcc-4.5.1.orig/gcc/gcc.c	2011-03-09 16:43:39.127752586 +0800
++++ gcc-4.5.1/gcc/gcc.c	2011-03-09 16:47:15.894929459 +0800
+@@ -4667,6 +4667,15 @@
+ 		sizeof ("COLLECT_GCC_OPTIONS=") - 1);
+ 
+   first_time = TRUE;
++#ifdef HAVE_LD_SYSROOT
++  if (target_system_root_changed && target_system_root)
++    {
++      obstack_grow (&collect_obstack, "'--sysroot=", sizeof("'--sysroot=")-1);
++      obstack_grow (&collect_obstack, target_system_root,strlen(target_system_root));
++      obstack_grow (&collect_obstack, "'", 1);
++      first_time = FALSE;
++    }
++#endif
+   for (i = 0; (int) i < n_switches; i++)
+     {
+       const char *const *args;
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
index 3eea4bc..92708d4 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
@@ -5,7 +5,7 @@ require gcc-cross-canadian.inc
 require gcc-configure-sdk.inc
 require gcc-package-sdk.inc
 
-PR = "r3"
+PR = "r4"
 
 DEPENDS += "gmp-nativesdk mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
 RDEPENDS_${PN} += "mpfr-nativesdk libmpc-nativesdk elfutils-nativesdk"
diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
index 38e0964..081b7d6 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
@@ -1,5 +1,5 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-initial.inc
 
-PR = "r3"
+PR = "r4"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
index 9a30cb5..a8473b0 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-cross-intermediate.inc
-PR = "r4"
+PR = "r5"
 
diff --git a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
index 78bb05a..af6daf4 100644
--- a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r3"
+PR = "r4"
 
 require gcc-${PV}.inc
 require gcc-cross4.inc
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
index fec53b9..9708248 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-initial_${PV}.bb
 require gcc-crosssdk-initial.inc
 
-PR = "r3"
+PR = "r4"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
index 161d870..d235969 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross-intermediate_${PV}.bb
 require gcc-crosssdk-intermediate.inc
 
-PR = "r3"
+PR = "r4"
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
index 7069088..bae2389 100644
--- a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
@@ -1,4 +1,4 @@
 require gcc-cross_${PV}.bb
 require gcc-crosssdk.inc
 
-PR = "r3"
+PR = "r4"
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
index 093f9bf..c1e680d 100644
--- a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r2"
+PR = "r3"
 
 require gcc-${PV}.inc
 require gcc-configure-runtime.inc
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
index 25e455c..a193b38 100644
--- a/meta/recipes-devtools/gcc/gcc_4.5.1.bb
+++ b/meta/recipes-devtools/gcc/gcc_4.5.1.bb
@@ -1,4 +1,4 @@
-PR = "r3"
+PR = "r4"
 require gcc-${PV}.inc
 require gcc-configure-target.inc
 require gcc-package-target.inc
-- 
1.7.0.4


