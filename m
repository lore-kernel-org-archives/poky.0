Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9E54A4C80A53
	for <poky@yoctoproject.org>; Tue, 10 May 2011 16:16:15 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 14:16:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; 
   d="scan'208";a="562853"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 14:16:15 -0700
Message-Id: <2efb09624e27cdbfa4391f6f5e95d1b9df215ebb.1305062028.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 13:17:31 -0700
Date: Tue, 10 May 2011 14:16:15 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 15/16] binutils: fix upstream status format
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
X-List-Received-Date: Tue, 10 May 2011 21:16:15 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../binutils/binutils-2.21/110-arm-eabi-conf.patch |    2 +-
 .../binutils-2.21/binutils-2.19.1-ld-sysroot.patch |    2 +-
 .../binutils/binutils-2.21/binutils-poison.patch   |    2 +-
 .../binutils-uclibc-100-uclibc-conf.patch          |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-2.21/110-arm-eabi-conf.patch b/meta/recipes-devtools/binutils/binutils-2.21/110-arm-eabi-conf.patch
index e17be35..dc49613 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/110-arm-eabi-conf.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/110-arm-eabi-conf.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Pending"
+Upstream-Status: Pending
 
 --- /tmp/configure.ac	2008-06-22 14:14:59.000000000 +0200
 +++ binutils-2.18.50.0.7/configure.ac	2008-06-22 14:15:30.000000000 +0200
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-2.19.1-ld-sysroot.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-2.19.1-ld-sysroot.patch
index e6bea3c..1a640ea 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-2.19.1-ld-sysroot.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-2.19.1-ld-sysroot.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Pending"
+Upstream-Status: Pending
 
 http://sourceware.org/bugzilla/show_bug.cgi?id=10340
 
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
index 6d8fd42..759aa88 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [distribution: codesourcery]"
+Upstream-Status: Inappropriate [distribution: codesourcery]
 
 Patch originally created by Mark Hatle, forward-ported to
 binutils 2.21 by Scott Garman.
diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-100-uclibc-conf.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-100-uclibc-conf.patch
index 64ed132..3f627c6 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-100-uclibc-conf.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-100-uclibc-conf.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Pending"
+Upstream-Status: Pending
 
 --- binutils-2.18.orig/configure
 +++ binutils-2.18/configure
-- 
1.7.3.4


