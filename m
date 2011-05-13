Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37AB84C811A9
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:34 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; 
   d="scan'208";a="1582739"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 12 May 2011 17:20:33 -0700
Message-Id: <6336599082a799ef58177e01fc72cdc5d6356842.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 16:58:20 -0700
Date: Thu, 12 May 2011 17:20:33 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 24/25] gmp: update upstream-status for patches
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
 .../gmp/gmp-4.2.1/disable-stdc.patch               |    2 ++
 meta/recipes-support/gmp/gmp/amd64.patch           |    2 ++
 meta/recipes-support/gmp/gmp/configure.patch       |    2 ++
 meta/recipes-support/gmp/gmp/sh4-asmfix.patch      |    2 ++
 meta/recipes-support/gmp/gmp/use-includedir.patch  |    2 ++
 5 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-support/gmp/gmp-4.2.1/disable-stdc.patch b/meta/recipes-support/gmp/gmp-4.2.1/disable-stdc.patch
index 83c9eae..aaffaf1 100644
--- a/meta/recipes-support/gmp/gmp-4.2.1/disable-stdc.patch
+++ b/meta/recipes-support/gmp/gmp-4.2.1/disable-stdc.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 # "extern inline" in traditional gcc means that the function should be 
 # inlined wherever it's seen, while in C99, "extern inline" means that i
 # the function should only be inlined where the inline definition is 
diff --git a/meta/recipes-support/gmp/gmp/amd64.patch b/meta/recipes-support/gmp/gmp/amd64.patch
index 67be9dd..38c89c7 100644
--- a/meta/recipes-support/gmp/gmp/amd64.patch
+++ b/meta/recipes-support/gmp/gmp/amd64.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- gmp-4.1.4/longlong.h.orig	2004-04-22 00:34:28.000000000 +0200
 +++ gmp-4.1.4/longlong.h	2005-07-18 01:13:06.000000000 +0200
 @@ -738,8 +738,10 @@
diff --git a/meta/recipes-support/gmp/gmp/configure.patch b/meta/recipes-support/gmp/gmp/configure.patch
index ed0c02d..638fead 100644
--- a/meta/recipes-support/gmp/gmp/configure.patch
+++ b/meta/recipes-support/gmp/gmp/configure.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
  acinclude.m4 |   26 ++++++++++++++------------
  configure.in |   24 +++++++++---------------
  2 files changed, 23 insertions(+), 27 deletions(-)
diff --git a/meta/recipes-support/gmp/gmp/sh4-asmfix.patch b/meta/recipes-support/gmp/gmp/sh4-asmfix.patch
index 1a01f61..ac25110 100644
--- a/meta/recipes-support/gmp/gmp/sh4-asmfix.patch
+++ b/meta/recipes-support/gmp/gmp/sh4-asmfix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- gmp-4.1.4/mpn/sh/add_n.s	2005/11/17 08:44:00	1.1
 +++ gmp-4.1.4/mpn/sh/add_n.s	2005/11/17 08:18:57
 @@ -29,8 +29,8 @@
diff --git a/meta/recipes-support/gmp/gmp/use-includedir.patch b/meta/recipes-support/gmp/gmp/use-includedir.patch
index ee3891f..74904a2 100644
--- a/meta/recipes-support/gmp/gmp/use-includedir.patch
+++ b/meta/recipes-support/gmp/gmp/use-includedir.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: gmp-4.2.4/Makefile.am
 ===================================================================
 --- gmp-4.2.4.orig/Makefile.am	2008-09-10 19:31:27.000000000 +0000
-- 
1.7.3.4


