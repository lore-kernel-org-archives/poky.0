Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90C3A4C800B6
	for <poky@yoctoproject.org>; Thu,  5 May 2011 22:36:35 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 May 2011 20:36:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,324,1301900400"; d="scan'208";a="743139839"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 05 May 2011 20:36:34 -0700
Message-Id: <4e51b7c5a710c6d723534629662880e3c98a0ecf.1304652773.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1304652773.git.nitin.a.kamble@intel.com>
References: <cover.1304652773.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 3 May 2011 15:57:14 -0700
Date: Thu, 05 May 2011 20:36:34 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 06/10] subversion: update upstream status for patches
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
X-List-Received-Date: Fri, 06 May 2011 03:36:35 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../subversion/disable-revision-install.patch      |    2 ++
 .../subversion/subversion/libtool2.patch           |    2 ++
 .../subversion/subversion/neon-detection.patch     |    2 ++
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
index ad716d0..ffe6330 100644
--- a/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
+++ b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [embedded specific]"
+
 Index: subversion-1.6.15/Makefile.in
 ===================================================================
 --- subversion-1.6.15.orig/Makefile.in	2010-11-17 06:47:23.000000000 -0800
diff --git a/meta/recipes-devtools/subversion/subversion/libtool2.patch b/meta/recipes-devtools/subversion/subversion/libtool2.patch
index 08343b0..12872db 100644
--- a/meta/recipes-devtools/subversion/subversion/libtool2.patch
+++ b/meta/recipes-devtools/subversion/subversion/libtool2.patch
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [embedded specific]"
+
 Index: subversion-1.5.5/configure.ac
 ===================================================================
 --- subversion-1.5.5.orig/configure.ac	2008-08-26 18:27:56.000000000 +0100
diff --git a/meta/recipes-devtools/subversion/subversion/neon-detection.patch b/meta/recipes-devtools/subversion/subversion/neon-detection.patch
index eaf6de0..3d28fb2 100644
--- a/meta/recipes-devtools/subversion/subversion/neon-detection.patch
+++ b/meta/recipes-devtools/subversion/subversion/neon-detection.patch
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [embedded specific]"
+
 Index: subversion-1.6.13/build/ac-macros/neon.m4
 ===================================================================
 --- subversion-1.6.13.orig/build/ac-macros/neon.m4
-- 
1.7.3.4


