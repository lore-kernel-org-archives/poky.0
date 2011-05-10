Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 23CA44C80A8C
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:14 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485445"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:13 -0700
Message-Id: <e9bfcd4c66284b1c8035315a5ae1148b3ce49a8f.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:16:24 +0800
Date: Tue, 10 May 2011 17:01:42 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 15/39] dpkg: add upstream status for dpkg's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:14 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-devtools/dpkg/dpkg/autofoo.patch      |    2 ++
 .../dpkg/dpkg/check_snprintf.patch                 |    2 ++
 .../recipes-devtools/dpkg/dpkg/check_version.patch |    2 ++
 .../dpkg/dpkg/ignore_extra_fields.patch            |    2 ++
 meta/recipes-devtools/dpkg/dpkg/nochroot.patch     |    2 ++
 meta/recipes-devtools/dpkg/dpkg/noman.patch        |    2 ++
 meta/recipes-devtools/dpkg/dpkg/noupdalt.patch     |    2 ++
 7 files changed, 14 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/dpkg/dpkg/autofoo.patch b/meta/recipes-devtools/dpkg/dpkg/autofoo.patch
index 691121e..2f1edce 100644
--- a/meta/recipes-devtools/dpkg/dpkg/autofoo.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/autofoo.patch
@@ -3,6 +3,8 @@
 # Patch managed by http://www.holgerschurig.de/patcher.html
 #
 
+Upstream-Status: Inappropriate [configuration]
+
 --- dpkg-1.10.23/configure.in~autofoo
 +++ dpkg-1.10.23/configure.in
 @@ -227,21 +227,36 @@
diff --git a/meta/recipes-devtools/dpkg/dpkg/check_snprintf.patch b/meta/recipes-devtools/dpkg/dpkg/check_snprintf.patch
index 7673cf1..56eb0ca 100644
--- a/meta/recipes-devtools/dpkg/dpkg/check_snprintf.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/check_snprintf.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 diff -ruN dpkg-1.15.8.5-orig/m4/dpkg-funcs.m4 dpkg-1.15.8.5/m4/dpkg-funcs.m4
 --- dpkg-1.15.8.5-orig/m4/dpkg-funcs.m4	2010-10-08 12:27:15.082131611 +0800
 +++ dpkg-1.15.8.5/m4/dpkg-funcs.m4	2010-10-08 13:56:50.074284346 +0800
diff --git a/meta/recipes-devtools/dpkg/dpkg/check_version.patch b/meta/recipes-devtools/dpkg/dpkg/check_version.patch
index a09e136..524e715 100644
--- a/meta/recipes-devtools/dpkg/dpkg/check_version.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/check_version.patch
@@ -2,6 +2,8 @@ Adapt to linux-wrs kernel version, which has character '_' inside.
 
 Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [embedded specific]
+
 diff -ruN dpkg-1.15.8.5-orig/lib/dpkg/parsehelp.c dpkg-1.15.8.5/lib/dpkg/parsehelp.c
 --- dpkg-1.15.8.5-orig/lib/dpkg/parsehelp.c	2010-10-08 12:27:15.058572774 +0800
 +++ dpkg-1.15.8.5/lib/dpkg/parsehelp.c	2010-10-09 11:18:15.484190771 +0800
diff --git a/meta/recipes-devtools/dpkg/dpkg/ignore_extra_fields.patch b/meta/recipes-devtools/dpkg/dpkg/ignore_extra_fields.patch
index 27b4f3b..0ff09e7 100644
--- a/meta/recipes-devtools/dpkg/dpkg/ignore_extra_fields.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/ignore_extra_fields.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [workaround]
+
 diff -ruN dpkg-1.15.8.5-orig/dpkg-deb/build.c dpkg-1.15.8.5/dpkg-deb/build.c
 --- dpkg-1.15.8.5-orig/dpkg-deb/build.c	2010-10-08 12:27:15.042083703 +0800
 +++ dpkg-1.15.8.5/dpkg-deb/build.c	2010-10-08 12:31:53.822534277 +0800
diff --git a/meta/recipes-devtools/dpkg/dpkg/nochroot.patch b/meta/recipes-devtools/dpkg/dpkg/nochroot.patch
index 3a8beae..c7f2dfe 100644
--- a/meta/recipes-devtools/dpkg/dpkg/nochroot.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/nochroot.patch
@@ -2,6 +2,8 @@
  src/help.c |    2 ++
  1 file changed, 2 insertions(+)
 
+Upstream-Status: Inappropriate [configuration]
+
 --- dpkg-1.13.22.orig/src/help.c
 +++ dpkg-1.13.22/src/help.c
 @@ -175,9 +175,11 @@ static const char* preexecscript(const c
diff --git a/meta/recipes-devtools/dpkg/dpkg/noman.patch b/meta/recipes-devtools/dpkg/dpkg/noman.patch
index d8fc9c4..58cb22a 100644
--- a/meta/recipes-devtools/dpkg/dpkg/noman.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/noman.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [disable feature]
+
 diff -ruN dpkg-1.15.8.5-orig/Makefile.am dpkg-1.15.8.5/Makefile.am
 --- dpkg-1.15.8.5-orig/Makefile.am	2010-10-08 12:27:15.042083703 +0800
 +++ dpkg-1.15.8.5/Makefile.am	2010-10-08 12:27:27.755148228 +0800
diff --git a/meta/recipes-devtools/dpkg/dpkg/noupdalt.patch b/meta/recipes-devtools/dpkg/dpkg/noupdalt.patch
index 023e99a..a9b3800 100644
--- a/meta/recipes-devtools/dpkg/dpkg/noupdalt.patch
+++ b/meta/recipes-devtools/dpkg/dpkg/noupdalt.patch
@@ -2,6 +2,8 @@
  scripts/Makefile.am |    3 +--
  1 file changed, 1 insertion(+), 2 deletions(-)
 
+Upstream-Status: Inappropriate [configuration]
+
 --- dpkg-1.13.22.orig/scripts/Makefile.am
 +++ dpkg-1.13.22/scripts/Makefile.am
 @@ -20,8 +20,7 @@ bin_SCRIPTS = \
-- 
1.7.1


