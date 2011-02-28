Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0628F4C800B1
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 02:30:01 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Feb 2011 00:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,238,1297065600"; d="scan'208";a="891861597"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 28 Feb 2011 00:30:00 -0800
Message-Id: <eee6a4543ae8ad214bd7512afded93f3d6fff08e.1298882840.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1298882840.git.dongxiao.xu@intel.com>
References: <cover.1298882840.git.dongxiao.xu@intel.com>
Old-Date: Mon, 28 Feb 2011 16:46:38 +0800
Date: Mon, 28 Feb 2011 16:50:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 2/2] ncurses: Change ncurses patch SRC_URI location
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
X-List-Received-Date: Mon, 28 Feb 2011 08:30:02 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

One of ncurses's patch has been removed from its original repo
location, use autobuilder cache location instead.

Comment out the original patch address instead of removing it
since we may still need that address when upgrade the recipe later.

This fixes [BUGID #709].

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-core/ncurses/ncurses_5.7.bb |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/ncurses/ncurses_5.7.bb b/meta/recipes-core/ncurses/ncurses_5.7.bb
index f767495..b01c333 100644
--- a/meta/recipes-core/ncurses/ncurses_5.7.bb
+++ b/meta/recipes-core/ncurses/ncurses_5.7.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://ncurses/base/version.c;beginline=1;endline=27;md5=cbc
 SECTION = "libs"
 PATCHDATE = "20100501"
 PKGV = "${PV}+${PATCHDATE}"
-PR = "r0"
+PR = "r1"
 
 DEPENDS = "ncurses-native"
 DEPENDS_virtclass-native = ""
@@ -15,7 +15,8 @@ inherit autotools binconfig
 SRC_URI = "${GNU_MIRROR}/ncurses/ncurses-${PV}.tar.gz;name=tarball \
         ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-20100424-patch.sh.bz2;apply=yes;name=p20100424sh \
 \
-        ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
+#        ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
+        http://autobuilder.yoctoproject.org/sources/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
         file://tic-hang.patch \
         file://config.cache \
 "
-- 
1.6.3.3


