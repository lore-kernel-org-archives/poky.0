Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F49F4C811A7
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2010 21:55:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="632278326"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2010 21:55:34 -0800
Message-Id: <440226918220e571e809d792aae0768934878379.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Tue, 30 Nov 2010 16:34:52 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/14] puzzles: Update to svn r9023
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:35 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../recipes-sato/puzzles/files/makedist_hack.patch |   17 -----------------
 .../puzzles/{puzzles_r7593.bb => puzzles_r9023.bb} |   14 ++++++++------
 2 files changed, 8 insertions(+), 23 deletions(-)
 delete mode 100644 meta/recipes-sato/puzzles/files/makedist_hack.patch
 rename meta/recipes-sato/puzzles/{puzzles_r7593.bb => puzzles_r9023.bb} (74%)

diff --git a/meta/recipes-sato/puzzles/files/makedist_hack.patch b/meta/recipes-sato/puzzles/files/makedist_hack.patch
deleted file mode 100644
index d07e066..0000000
--- a/meta/recipes-sato/puzzles/files/makedist_hack.patch
+++ /dev/null
@@ -1,17 +0,0 @@
----
- makedist.sh |    2 ++
- 1 file changed, 2 insertions(+)
-
-Index: puzzles/makedist.sh
-===================================================================
---- puzzles.orig/makedist.sh	2007-05-17 11:49:59.000000000 +0100
-+++ puzzles/makedist.sh	2007-05-17 12:07:39.000000000 +0100
-@@ -30,6 +30,8 @@ fi
- 
- perl mkfiles.pl
- 
-+exit 0
-+
- mkdir tmp.$$
- mkdir tmp.$$/puzzles$arcsuffix
- 
diff --git a/meta/recipes-sato/puzzles/puzzles_r7593.bb b/meta/recipes-sato/puzzles/puzzles_r9023.bb
similarity index 74%
rename from meta/recipes-sato/puzzles/puzzles_r7593.bb
rename to meta/recipes-sato/puzzles/puzzles_r9023.bb
index 7471352..e51bd7a 100644
--- a/meta/recipes-sato/puzzles/puzzles_r7593.bb
+++ b/meta/recipes-sato/puzzles/puzzles_r9023.bb
@@ -1,18 +1,20 @@
+DESCRIPTION="Simon Tatham's Portable Puzzle Collection"
+HOMEPAGE="http://www.chiark.greenend.org.uk/~sgtatham/puzzles/"
 
 DEPENDS = "gtk+ libxt"
-PR = "r8"
+PR = "r0"
 MOD_PV = "${@bb.data.getVar('PV',d,1)[1:]}"
 
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENCE;md5=9928b60f3b78be315b7ab699c1b03ff5"
 
-#SRC_URI = "http://www.chiark.greenend.org.uk/~sgtatham/puzzles/puzzles-${PV}.tar.gz"
-SRC_URI = "svn://ixion.tartarus.org/main;module=puzzles;rev=${MOD_PV} \
-           file://makedist_hack.patch;patch=1"
+SRC_URI = "http://www.chiark.greenend.org.uk/~sgtatham/puzzles/puzzles-${PV}.tar.gz"
+#SRC_URI = "svn://ixion.tartarus.org/main;module=puzzles;rev=${MOD_PV}"
 
-S = "${WORKDIR}/${PN}"
+S = "${WORKDIR}/${PN}-${PV}"
 
 do_configure () {
-	./makedist.sh ${MOD_PV}
+	./mkfiles.pl
 }
 
 do_compile_prepend = " \
-- 
1.7.0.4


