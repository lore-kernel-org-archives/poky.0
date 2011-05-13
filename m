Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFA5F4C8111E
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:31 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="435293394"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 17:20:31 -0700
Message-Id: <d11d1f91c0827d84d30b17b1aa0263721d770d85.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:19:47 -0700
Date: Thu, 12 May 2011 17:20:31 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 07/25] autoconf: update upstream-status for patches
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
 .../autoconf/autoconf-2.65/autoconf-x.patch        |    2 ++
 .../autoheader-nonfatal-warnings.patch             |    2 ++
 .../autoconf-2.65/autoreconf-exclude.patch         |    2 ++
 .../autoconf-2.65/autoreconf-foreign.patch         |    2 ++
 .../autoconf-2.65/autoreconf-gnuconfigize.patch    |    1 +
 .../autoconf-2.65/autoreconf-include.patch         |    2 ++
 .../autoconf/autoconf-2.65/config_site.patch       |    2 ++
 .../autoconf/autoconf-2.65/fix_path_xtra.patch     |    2 ++
 .../autoconf/autoconf-2.65/path_prog_fixes.patch   |    2 ++
 .../autoconf/autoconf-2.65/program_prefix.patch    |    1 +
 10 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/autoconf-x.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/autoconf-x.patch
index 596535b..6ebef0a 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/autoconf-x.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/autoconf-x.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: lib/autoconf/libs.m4
 ===================================================================
 RCS file: /cvsroot/autoconf/autoconf/lib/autoconf/libs.m4,v
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/autoheader-nonfatal-warnings.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/autoheader-nonfatal-warnings.patch
index 1f18e04..8ae6d5c 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/autoheader-nonfatal-warnings.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/autoheader-nonfatal-warnings.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- autoconf-2.59/bin/autoheader.in~	2003-10-10 14:52:56.000000000 +0100
 +++ autoconf-2.59/bin/autoheader.in	2004-05-03 01:36:45.000000000 +0100
 @@ -272,8 +272,8 @@
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-exclude.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-exclude.patch
index fac7483..d1bd3a2 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-exclude.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-exclude.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: autoconf-2.63/bin/autoreconf.in
 ===================================================================
 --- autoconf-2.63.orig/bin/autoreconf.in	2008-12-31 17:39:01.000000000 +0000
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-foreign.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-foreign.patch
index 587a823..88f7501 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-foreign.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-foreign.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- autoconf-2.59/bin/autoreconf.in~autoreconf-foreign	2004-05-09 20:55:06.000000000 -0400
 +++ autoconf-2.59/bin/autoreconf.in	2004-05-09 20:55:55.000000000 -0400
 @@ -184,6 +184,8 @@
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-gnuconfigize.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-gnuconfigize.patch
index 851d243..5ff18c2 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-gnuconfigize.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-gnuconfigize.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.mn-logistik.de/unsupported/pxa250/patcher
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-include.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-include.patch
index 08646c1..31326f0 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-include.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/autoreconf-include.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: autoconf-2.63/bin/autoreconf.in
 ===================================================================
 --- autoconf-2.63.orig/bin/autoreconf.in	2008-08-28 03:08:10.000000000 +0100
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/config_site.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/config_site.patch
index 8a90cd3..e3ff318 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/config_site.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/config_site.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Poky provides a list of site files in CONFIG_SITE whereas autoconf 
 only expects one file. This patch changes autoconf to accept a list of 
 them.
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/fix_path_xtra.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/fix_path_xtra.patch
index bc73571..29fe6a2 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/fix_path_xtra.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/fix_path_xtra.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 We don't build xmkmf so any values returned from it are going to be wrong.
 Using any paths in /usr/ for x headers/libs is a bad idea when cross compiling.
 This patch removes them to stop any confusion.
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/path_prog_fixes.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/path_prog_fixes.patch
index 5f0d055..cb57dfd 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/path_prog_fixes.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/path_prog_fixes.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [embedded specific]
+
 Index: autoconf-2.59/bin/autoheader.in
 ===================================================================
 --- autoconf-2.59.orig/bin/autoheader.in	2005-03-09 16:27:17.933878952 -0500
diff --git a/meta/recipes-devtools/autoconf/autoconf-2.65/program_prefix.patch b/meta/recipes-devtools/autoconf/autoconf-2.65/program_prefix.patch
index e6f4096..978a401 100644
--- a/meta/recipes-devtools/autoconf/autoconf-2.65/program_prefix.patch
+++ b/meta/recipes-devtools/autoconf/autoconf-2.65/program_prefix.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.mn-logistik.de/unsupported/pxa250/patcher
-- 
1.7.3.4


