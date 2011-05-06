Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4446F4C800B6
	for <poky@yoctoproject.org>; Thu,  5 May 2011 22:36:42 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 May 2011 20:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,324,1301900400"; d="scan'208";a="918710390"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 05 May 2011 20:36:34 -0700
Message-Id: <efd81e828bd876b7d329c67ebf8963c31dcc3f7e.1304652773.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1304652773.git.nitin.a.kamble@intel.com>
References: <cover.1304652773.git.nitin.a.kamble@intel.com>
Old-Date: Tue, 3 May 2011 15:52:51 -0700
Date: Thu, 05 May 2011 20:36:34 -0700
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 04/10] patch: update upstream status for patches
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
X-List-Received-Date: Fri, 06 May 2011 03:36:42 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/patch/patch/debian.patch     |    2 ++
 .../patch/patch/global-reject-file.diff            |    2 ++
 meta/recipes-devtools/patch/patch/install.patch    |    2 ++
 .../patch/patch/unified-reject-files.diff          |    2 ++
 4 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/patch/patch/debian.patch b/meta/recipes-devtools/patch/patch/debian.patch
index 4601858..e0106dc 100644
--- a/meta/recipes-devtools/patch/patch/debian.patch
+++ b/meta/recipes-devtools/patch/patch/debian.patch
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [debian patch]"
+
 --- patch-2.5.9.orig/m4/hash.m4
 +++ patch-2.5.9/m4/hash.m4
 @@ -0,0 +1,15 @@
diff --git a/meta/recipes-devtools/patch/patch/global-reject-file.diff b/meta/recipes-devtools/patch/patch/global-reject-file.diff
index 66065fc..d837896 100644
--- a/meta/recipes-devtools/patch/patch/global-reject-file.diff
+++ b/meta/recipes-devtools/patch/patch/global-reject-file.diff
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [debian patch]"
+
 Index: patch-2.5.9/patch.man
 ===================================================================
 --- patch-2.5.9.orig/patch.man
diff --git a/meta/recipes-devtools/patch/patch/install.patch b/meta/recipes-devtools/patch/patch/install.patch
index c959189..0359ccd 100644
--- a/meta/recipes-devtools/patch/patch/install.patch
+++ b/meta/recipes-devtools/patch/patch/install.patch
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [embedded specific]"
+
 Index: patch-2.5.4/Makefile.in
 ===================================================================
 --- patch-2.5.4.orig/Makefile.in	2005-03-09 07:23:54.779311824 -0500
diff --git a/meta/recipes-devtools/patch/patch/unified-reject-files.diff b/meta/recipes-devtools/patch/patch/unified-reject-files.diff
index 6bfa00d..1608b5e 100644
--- a/meta/recipes-devtools/patch/patch/unified-reject-files.diff
+++ b/meta/recipes-devtools/patch/patch/unified-reject-files.diff
@@ -1,3 +1,5 @@
+Upstream-Status="Inappropriate [debian patch]"
+
 Generate unified diff style reject files. Also include the C function names
 in reject files whenever possible.
 
-- 
1.7.3.4


