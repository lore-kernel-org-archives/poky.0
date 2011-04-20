Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 923634C80581
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 07:58:36 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Apr 2011 05:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,246,1301900400"; d="scan'208";a="631464221"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by orsmga002.jf.intel.com with ESMTP; 20 Apr 2011 05:58:35 -0700
Message-Id: <1f48391e558a8f235a6ba187bfc9f41b1a963e58.1303303969.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303303969.git.edwin.zhai@intel.com>
References: <cover.1303303969.git.edwin.zhai@intel.com>
Old-Date: Thu, 14 Apr 2011 15:41:30 +0800
Date: Wed, 20 Apr 2011 20:58:26 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 2/2] puzzles: Upgrade to svn r9151 (from r9084)
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
X-List-Received-Date: Wed, 20 Apr 2011 12:58:36 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../puzzles/files/oh-puzzles-owl-menu.patch        |    5 +++++
 .../puzzles/{puzzles_r9084.bb => puzzles_r9151.bb} |    2 +-
 2 files changed, 6 insertions(+), 1 deletions(-)
 rename meta/recipes-sato/puzzles/{puzzles_r9084.bb => puzzles_r9151.bb} (94%)

diff --git a/meta/recipes-sato/puzzles/files/oh-puzzles-owl-menu.patch b/meta/recipes-sato/puzzles/files/oh-puzzles-owl-menu.patch
index 61da919..7e2c3ab 100644
--- a/meta/recipes-sato/puzzles/files/oh-puzzles-owl-menu.patch
+++ b/meta/recipes-sato/puzzles/files/oh-puzzles-owl-menu.patch
@@ -1,3 +1,8 @@
+This patch enable owl menu, which is hidden in the title bar to save space on
+small screen. It has not been used for a long time, rebase needed.
+
+Upstream-Status: Inappropriate [enable feature]
+
 Index: src/gtk.c
 ===================================================================
 --- src/gtk.c	(revision 22)
diff --git a/meta/recipes-sato/puzzles/puzzles_r9084.bb b/meta/recipes-sato/puzzles/puzzles_r9151.bb
similarity index 94%
rename from meta/recipes-sato/puzzles/puzzles_r9084.bb
rename to meta/recipes-sato/puzzles/puzzles_r9151.bb
index fbd0e37..5cd8bb9 100644
--- a/meta/recipes-sato/puzzles/puzzles_r9084.bb
+++ b/meta/recipes-sato/puzzles/puzzles_r9151.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://LICENCE;md5=9928b60f3b78be315b7ab699c1b03ff5"
 
 SRC_URI = "http://www.chiark.greenend.org.uk/~sgtatham/puzzles/puzzles-${PV}.tar.gz"
 
-# Checksums seem to be changing regularly right now, need to verify with upstream
+# Upstream updates puzzles.tar.gz for the new release, so checksums seem to be changing regularly right now
 #SRC_URI[md5sum] = "e8b4c7e2341264789f3cd6733857bf1c"
 #SRC_URI[sha256sum] = "69f37e497e63b2f7ab44e7bbd50aee078269c16dbc2d78ec1b00257678f2cbd2"
 #SRC_URI = "svn://ixion.tartarus.org/main;module=puzzles;rev=${MOD_PV}"
-- 
1.7.1


