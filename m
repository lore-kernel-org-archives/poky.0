Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B90464C81199
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:32 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1582727"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 17:20:32 -0700
Message-Id: <17096f15321ca8f7b9af4d9e24f68d245102a95d.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:38:43 -0700
Date: Thu, 12 May 2011 17:20:32 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 14/25] libtool: update upstream status of patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:32 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../avoid_absolute_paths_for_general_utils.patch   |    2 ++
 .../libtool/libtool/fix-final-rpath.patch          |    2 ++
 .../libtool/libtool/prefix-manpage-fix.patch       |    2 ++
 meta/recipes-devtools/libtool/libtool/prefix.patch |    2 ++
 .../libtool/libtool/rename-with-sysroot.patch      |    2 ++
 .../libtool/libtool/resolve-sysroot.patch          |    2 ++
 .../libtool/libtool/trailingslash.patch            |    2 ++
 .../libtool/libtool/use-sysroot-in-libpath.patch   |    2 ++
 8 files changed, 16 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch b/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch
index f158171..6cc88d8 100644
--- a/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch
+++ b/meta/recipes-devtools/libtool/libtool/avoid_absolute_paths_for_general_utils.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 On some distro the path of utils like sed, grep etc are different than the
 buildhost system.
  This was causing runtime issue while running libtoolize from the 
diff --git a/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch b/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch
index 402e2c6..f3fa55d 100644
--- a/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch
+++ b/meta/recipes-devtools/libtool/libtool/fix-final-rpath.patch
@@ -1,3 +1,5 @@
+Status: Inappropriate [embedded specific]
+
 Enalbing sysroot support exposed a bug where the final library
 had an RPATH encoded into it which still pointed to the sysroot.
 This works around the issue until it gets sorted out upstream.
diff --git a/meta/recipes-devtools/libtool/libtool/prefix-manpage-fix.patch b/meta/recipes-devtools/libtool/libtool/prefix-manpage-fix.patch
index 4728669..a8a4dcd 100644
--- a/meta/recipes-devtools/libtool/libtool/prefix-manpage-fix.patch
+++ b/meta/recipes-devtools/libtool/libtool/prefix-manpage-fix.patch
@@ -1,3 +1,5 @@
+Status: Inappropriate [embedded specific]
+
 For cross environment, it not possible to run the generated executable.
 nstead use the build version of libtool to generate the man pages. 
 
diff --git a/meta/recipes-devtools/libtool/libtool/prefix.patch b/meta/recipes-devtools/libtool/libtool/prefix.patch
index 70bbd15..0c98f0d 100644
--- a/meta/recipes-devtools/libtool/libtool/prefix.patch
+++ b/meta/recipes-devtools/libtool/libtool/prefix.patch
@@ -1,3 +1,5 @@
+Status: Inappropriate [embedded specific]
+
 Renames "libtool" -> "${TARGET_PREFIX}libtool" which makes sure
 it can't be confused with the host libtool.
 
diff --git a/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch b/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
index 8455d95..9c8696b 100644
--- a/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
+++ b/meta/recipes-devtools/libtool/libtool/rename-with-sysroot.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 This patch renames the --with-sysroot option to --with-libtool-sysroot
 to avoid namespace conflict with binutils, gcc and other toolchain
 components.
diff --git a/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch b/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
index 54f7f5b..0341987 100644
--- a/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
+++ b/meta/recipes-devtools/libtool/libtool/resolve-sysroot.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Sometimes .las have =/a/b/c.la in dependency_libs. This should be
 resolved to sysroot.
 
diff --git a/meta/recipes-devtools/libtool/libtool/trailingslash.patch b/meta/recipes-devtools/libtool/libtool/trailingslash.patch
index 313c262..d71a770 100644
--- a/meta/recipes-devtools/libtool/libtool/trailingslash.patch
+++ b/meta/recipes-devtools/libtool/libtool/trailingslash.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 A command like /bin/sh ../../i586-poky-linux-libtool   --mode=install /usr/bin/install -c   gck-roots-store-standalone.la '/media/data1/builds/poky1/tmp/work/core2-poky-linux/gnome-keyring-2.26.1-r1/image/usr/lib/gnome-keyring/standalone/' fails (e.g. gnome-keyring or pulseaudio)
 
 This is because libdir has a trailing slash which breaks the comparision.
diff --git a/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch b/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch
index 4d9e90c..5e2eec9 100644
--- a/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch
+++ b/meta/recipes-devtools/libtool/libtool/use-sysroot-in-libpath.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 When using sysroot we should append it to libdir, which is helpful in
 cross builds as the system is staged in the sysroot. For normal builds,
 i.e. when lt_sysroot is not set, it will still behave the same and add
-- 
1.7.3.4


