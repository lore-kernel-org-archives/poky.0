Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE8894C810FF
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:33 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="746532604"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
Message-Id: <f42ff6d46a6831a47ccba59ad06125089c5bb328.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:51:12 -0700
Date: Thu, 12 May 2011 17:20:33 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 21/25] quilt: update upstream-status of patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:34 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/quilt/quilt/aclocal.patch    |    2 ++
 .../quilt/quilt/gnu_patch_test_fix.patch           |    2 ++
 meta/recipes-devtools/quilt/quilt/install.patch    |    2 ++
 meta/recipes-devtools/quilt/quilt/non-gnu.patch    |    2 ++
 4 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/quilt/quilt/aclocal.patch b/meta/recipes-devtools/quilt/quilt/aclocal.patch
index 15b174c..daf4429 100644
--- a/meta/recipes-devtools/quilt/quilt/aclocal.patch
+++ b/meta/recipes-devtools/quilt/quilt/aclocal.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Add the aclocal.m4 as acinclude.m4
 
 Index: quilt-0.47/acinclude.m4
diff --git a/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix.patch b/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix.patch
index cc4236b..348b327 100644
--- a/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix.patch
+++ b/meta/recipes-devtools/quilt/quilt/gnu_patch_test_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 # quilt's configure tosses an error with patch @ GNU patch 2.6.1.81-5b68
 #
 # Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
diff --git a/meta/recipes-devtools/quilt/quilt/install.patch b/meta/recipes-devtools/quilt/quilt/install.patch
index 0b1e58d..e2a7af6 100644
--- a/meta/recipes-devtools/quilt/quilt/install.patch
+++ b/meta/recipes-devtools/quilt/quilt/install.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- quilt-0.47/Makefile.in	2008-12-31 19:09:13.000000000 +0000
 +++ quilt-0.47/Makefile.in.orig	2008-08-21 13:21:32.000000000 +0100
 @@ -13,7 +13,7 @@
diff --git a/meta/recipes-devtools/quilt/quilt/non-gnu.patch b/meta/recipes-devtools/quilt/quilt/non-gnu.patch
index c1cbfb3..520bf52 100644
--- a/meta/recipes-devtools/quilt/quilt/non-gnu.patch
+++ b/meta/recipes-devtools/quilt/quilt/non-gnu.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Patch is from the Fink projetc (http://fink.sf.net)
 
 diff -r 7b51c215fc54 Makefile.in
-- 
1.7.3.4


