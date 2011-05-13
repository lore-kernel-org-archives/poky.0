Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF0E34C811A9
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:33 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="435293413"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
Message-Id: <3c5feb6aea451569188fa6dc836430d0eed0a296.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:53:32 -0700
Date: Thu, 12 May 2011 17:20:33 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 22/25] tcl: update upstream-status for patches
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
 .../recipes-devtools/tcltk/tcl/fix-configure.patch |    2 ++
 .../tcltk/tcl/fix_non_native_build_issue.patch     |    2 ++
 .../tcltk/tcl/tcl-add-soname.patch                 |    2 ++
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/tcltk/tcl/fix-configure.patch b/meta/recipes-devtools/tcltk/tcl/fix-configure.patch
index 8b2654b..b692a0e 100644
--- a/meta/recipes-devtools/tcltk/tcl/fix-configure.patch
+++ b/meta/recipes-devtools/tcltk/tcl/fix-configure.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: unix/tcl.m4
 ===================================================================
 --- tcl8.4.11/unix.orig/tcl.m4
diff --git a/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch b/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch
index 0b8b26c..e9b6793 100644
--- a/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch
+++ b/meta/recipes-devtools/tcltk/tcl/fix_non_native_build_issue.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: unix/Makefile.in
 ===================================================================
 --- unix.orig/Makefile.in
diff --git a/meta/recipes-devtools/tcltk/tcl/tcl-add-soname.patch b/meta/recipes-devtools/tcltk/tcl/tcl-add-soname.patch
index 9cb816d..963576d 100644
--- a/meta/recipes-devtools/tcltk/tcl/tcl-add-soname.patch
+++ b/meta/recipes-devtools/tcltk/tcl/tcl-add-soname.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: unix/configure
 ===================================================================
 --- unix.orig/configure
-- 
1.7.3.4


