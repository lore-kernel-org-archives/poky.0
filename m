Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 333A64C80523
	for <poky@yoctoproject.org>; Tue, 10 May 2011 16:16:14 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2011 14:16:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,347,1301900400"; 
   d="scan'208";a="562831"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2011 14:16:13 -0700
Message-Id: <c68094d5340318c251748f1a6541c4b0485efef7.1305062028.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305062026.git.nitin.a.kamble@intel.com>
References: <cover.1305062026.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 10 May 2011 13:14:22 -0700
Date: Tue, 10 May 2011 14:16:13 -0700
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 11/16] subversion: fix upstream-status format
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
X-List-Received-Date: Tue, 10 May 2011 21:16:14 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../subversion/disable-revision-install.patch      |    2 +-
 .../subversion/subversion/libtool2.patch           |    2 +-
 .../subversion/subversion/neon-detection.patch     |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
index ffe6330..66450fa 100644
--- a/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
+++ b/meta/recipes-devtools/subversion/subversion/disable-revision-install.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [embedded specific]"
+Upstream-Status: Inappropriate [embedded specific]
 
 Index: subversion-1.6.15/Makefile.in
 ===================================================================
diff --git a/meta/recipes-devtools/subversion/subversion/libtool2.patch b/meta/recipes-devtools/subversion/subversion/libtool2.patch
index 12872db..32f88b7 100644
--- a/meta/recipes-devtools/subversion/subversion/libtool2.patch
+++ b/meta/recipes-devtools/subversion/subversion/libtool2.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [embedded specific]"
+Upstream-Status: Inappropriate [embedded specific]
 
 Index: subversion-1.5.5/configure.ac
 ===================================================================
diff --git a/meta/recipes-devtools/subversion/subversion/neon-detection.patch b/meta/recipes-devtools/subversion/subversion/neon-detection.patch
index 3d28fb2..2a9cf1f 100644
--- a/meta/recipes-devtools/subversion/subversion/neon-detection.patch
+++ b/meta/recipes-devtools/subversion/subversion/neon-detection.patch
@@ -1,4 +1,4 @@
-Upstream-Status="Inappropriate [embedded specific]"
+Upstream-Status: Inappropriate [embedded specific]
 
 Index: subversion-1.6.13/build/ac-macros/neon.m4
 ===================================================================
-- 
1.7.3.4


