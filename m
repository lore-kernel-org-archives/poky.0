Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08C384C80AB2
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:28 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2011 10:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="663113047"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2011 10:00:13 -0800
Message-Id: <cb118b739b53fadad1c20e75a9f5a77d3473e7c7.1299088353.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Mon, 28 Feb 2011 16:46:38 +0800
Date: Wed, 02 Mar 2011 10:00:13 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 02/26] ncurses: Change ncurses patch SRC_URI location
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:29 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

One of ncurses's patch has been removed from its original repo
location, use autobuilder cache location instead.

Comment out the original patch address instead of removing it
since we may still need that address when upgrade the recipe later.

This fixes [BUGID #709].

[sgw: fixed having comment embedded in SRC_URI]
Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-core/ncurses/ncurses_5.7.bb |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/ncurses/ncurses_5.7.bb b/meta/recipes-core/ncurses/ncurses_5.7.bb
index f767495..7ab078d 100644
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
@@ -15,11 +15,14 @@ inherit autotools binconfig
 SRC_URI = "${GNU_MIRROR}/ncurses/ncurses-${PV}.tar.gz;name=tarball \
         ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-20100424-patch.sh.bz2;apply=yes;name=p20100424sh \
 \
-        ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
+        http://autobuilder.yoctoproject.org/sources/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 \
         file://tic-hang.patch \
         file://config.cache \
 "
 
+
+#        ftp://invisible-island.net/ncurses/5.7/ncurses-5.7-${PATCHDATE}.patch.gz;name=p20100501 
+
 SRC_URI[tarball.md5sum] = "cce05daf61a64501ef6cd8da1f727ec6"
 SRC_URI[tarball.sha256sum] = "0a9bdea5c7de8ded5c9327ed642915f2cc380753f12d4ad120ef7da3ea3498f4"
 SRC_URI[p20100424sh.md5sum] = "3a5f76613f0f7ec3e0e73b835bc24864"
-- 
1.7.1


