Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CEFA4C81146
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:47:18 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 00:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="349803969"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdah-0007l0-Vc
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:07 +0800
Message-Id: <da001ef98f848feb129c43457d1c784143fdec75.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Tue, 16 Nov 2010 13:32:31 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/9] syslinux: upgrade to version 4.03
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
X-List-Received-Date: Wed, 17 Nov 2010 08:47:18 -0000

from 3.86
rebased the patch

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../syslinux/files/cross-build.patch               |    7 ++++++-
 .../{syslinux_3.86.bb => syslinux_4.03.bb}         |    2 +-
 2 files changed, 7 insertions(+), 2 deletions(-)
 rename meta/recipes-devtools/syslinux/{syslinux_3.86.bb => syslinux_4.03.bb} (99%)

diff --git a/meta/recipes-devtools/syslinux/files/cross-build.patch b/meta/recipes-devtools/syslinux/files/cross-build.patch
index c90c7af..8115629 100644
--- a/meta/recipes-devtools/syslinux/files/cross-build.patch
+++ b/meta/recipes-devtools/syslinux/files/cross-build.patch
@@ -10,6 +10,10 @@ also AUXDIR stays in $(LIBDIR)/syslinux rather than $(DATADIR)/syslinux
 
 07/08/2010 - qhe
 
+updated for 4.03
+
+11/16/2010 - Qing He <qing.he@intel.com>
+
 ---
 diff --git a/MCONFIG b/MCONFIG
 index e9c16d3..4d49f33 100644
@@ -43,7 +47,8 @@ index e9c16d3..4d49f33 100644
 -CC	 = gcc
 +CC	 ?= gcc
  gcc_ok   = $(shell tmpf=gcc_ok.$$$$.tmp; \
- 		   if $(CC) $(1) -c $(topdir)/dummy.c -o $$tmpf 2>/dev/null ; \
+ 		   if $(CC) $(GCCOPT) $(1) -c $(topdir)/dummy.c \
+ 			-o $$tmpf 2>/dev/null ; \
  		   then echo '$(1)'; else echo '$(2)'; fi; \
  		   rm -f $$tmpf)
  
diff --git a/meta/recipes-devtools/syslinux/syslinux_3.86.bb b/meta/recipes-devtools/syslinux/syslinux_4.03.bb
similarity index 99%
rename from meta/recipes-devtools/syslinux/syslinux_3.86.bb
rename to meta/recipes-devtools/syslinux/syslinux_4.03.bb
index 42295b5..74e3f60 100644
--- a/meta/recipes-devtools/syslinux/syslinux_3.86.bb
+++ b/meta/recipes-devtools/syslinux/syslinux_4.03.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
 # If you really want to run syslinux, you need mtools.  We just want the
 # ldlinux.* stuff for now, so skip mtools-native
 DEPENDS = "nasm-native"
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/boot/syslinux/syslinux-${PV}.tar.bz2 \
            file://cross-build.patch"
-- 
1.7.0


