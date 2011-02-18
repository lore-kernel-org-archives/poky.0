Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDB124C80093
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 12:21:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Feb 2011 10:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="390897292"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 18 Feb 2011 10:21:36 -0800
Message-Id: <5d6646b85f9dca6e5c8cace7247d0aaee317d4a1.1298053136.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1298053136.git.nitin.a.kamble@intel.com>
References: <cover.1298053136.git.nitin.a.kamble@intel.com>
Old-Date: Fri, 18 Feb 2011 10:13:48 -0800
Date: Fri, 18 Feb 2011 10:21:35 -0800
To: poky@yoctoproject.org
CC: 
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 1/1] libtool: avoid absolute pathnames of general utils
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
X-List-Received-Date: Fri, 18 Feb 2011 18:21:37 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

addded a new patch:
	libtool/avoid_absolute_paths_for_general_utils.patch

This fixes [BUGID #154]
This fixes [BUGID #734]

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/libtool/libtool-cross_2.4.bb |    2 +-
 .../recipes-devtools/libtool/libtool-native_2.4.bb |    2 +-
 .../libtool/libtool-nativesdk_2.4.bb               |    2 +-
 meta/recipes-devtools/libtool/libtool.inc          |    3 +-
 .../avoid_absolute_paths_for_general_utils.patch   |   37 ++++++++++++++++++++
 meta/recipes-devtools/libtool/libtool_2.4.bb       |    2 +-
 6 files changed, 43 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch

diff --git a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
index e3b40f2..25ac580 100644
--- a/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-cross_2.4.bb
@@ -1,6 +1,6 @@
 require libtool-${PV}.inc
 
-PR = "r1"
+PR = "r2"
 PACKAGES = ""
 SRC_URI += "file://prefix.patch"
 
diff --git a/meta/recipes-devtools/libtool/libtool-native_2.4.bb b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
index 4163e89..423622f 100644
--- a/meta/recipes-devtools/libtool/libtool-native_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-native_2.4.bb
@@ -2,7 +2,7 @@ require libtool-${PV}.inc
 
 DEPENDS = ""
 
-PR = "r1"
+PR = "r2"
 SRC_URI += "file://prefix.patch"
 
 inherit native
diff --git a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
index 45c9af6..4f67fed 100644
--- a/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool-nativesdk_2.4.bb
@@ -1,6 +1,6 @@
 require libtool-${PV}.inc
 
-PR = "r1"
+PR = "r2"
 SRC_URI += "file://prefix.patch"
 
 inherit nativesdk
diff --git a/meta/recipes-devtools/libtool/libtool.inc b/meta/recipes-devtools/libtool/libtool.inc
index 8701c82..e066ffa 100644
--- a/meta/recipes-devtools/libtool/libtool.inc
+++ b/meta/recipes-devtools/libtool/libtool.inc
@@ -14,7 +14,8 @@ SRC_URI = "${GNU_MIRROR}/libtool/libtool-${PV}.tar.gz \
            file://rename-with-sysroot.patch \
            file://resolve-sysroot.patch \
            file://use-sysroot-in-libpath.patch \
-           file://fix-final-rpath.patch"
+           file://fix-final-rpath.patch \
+           file://avoid_absolute_paths_for_general_utils.patch "
 
 do_compile_prepend () {
 	# Sometimes this file doesn't get rebuilt, force the issue
diff --git a/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch b/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch
new file mode 100644
index 0000000..519aebf
--- /dev/null
+++ b/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch
@@ -0,0 +1,37 @@
+On some distro the path of utils like sed, grep etc are different than the
+buildhost system.
+ This was causing runtime issue while running libtoolize from the 
+libtool-nativesdk package.
+  This patch takes out the absolute paths of these utils, and put 
+responsibility on the end-user to set correct paths for this utlities to be 
+found out.
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+2011/02/18
+
+
+Index: libtool-2.4/libltdl/config/general.m4sh
+===================================================================
+--- libtool-2.4.orig/libltdl/config/general.m4sh	2010-08-31 23:02:45.000000000 -0700
++++ libtool-2.4/libltdl/config/general.m4sh	2011-02-18 09:59:09.482038240 -0800
+@@ -45,15 +45,15 @@
+ M4SH_VERBATIM([[
+ : ${CP="cp -f"}
+ test "${ECHO+set}" = set || ECHO=${as_echo-'printf %s\n'}
+-: ${EGREP="@EGREP@"}
+-: ${FGREP="@FGREP@"}
+-: ${GREP="@GREP@"}
+-: ${LN_S="@LN_S@"}
++: ${EGREP="egrep"}
++: ${FGREP="fgrep"}
++: ${GREP="grep"}
++: ${LN_S="ln -s"}
+ : ${MAKE="make"}
+ : ${MKDIR="mkdir"}
+ : ${MV="mv -f"}
+ : ${RM="rm -f"}
+-: ${SED="@SED@"}
++: ${SED="sed"}
+ : ${SHELL="${CONFIG_SHELL-/bin/sh}"}
+ : ${Xsed="$SED -e 1s/^X//"}
+ 
diff --git a/meta/recipes-devtools/libtool/libtool_2.4.bb b/meta/recipes-devtools/libtool/libtool_2.4.bb
index a820bed..e1a9a10 100644
--- a/meta/recipes-devtools/libtool/libtool_2.4.bb
+++ b/meta/recipes-devtools/libtool/libtool_2.4.bb
@@ -1,6 +1,6 @@
 require libtool-${PV}.inc
 
-PR = "r1"
+PR = "r2"
 
 #
 # We want the results of libtool-cross preserved - don't stage anything ourselves.
-- 
1.7.3.4


