Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A41094C81110
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:46:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="649623351"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEPY-0005Zt-Pi; Fri, 21 Jan 2011 18:40:08 +0800
Message-Id: <cce2ddfd39a43dda8b22a9ccba58855e7643d0fd.1295605995.git.qing.he@intel.com>
In-Reply-To: <cover.1295605993.git.qing.he@intel.com>
References: <cover.1295605993.git.qing.he@intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Thu, 20 Jan 2011 00:55:44 +0800
Date: Fri, 21 Jan 2011 18:40:08 +0800
To: poky@yoctoproject.org
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, aleksandr.koltsoff@ebts.fi
Subject: [PATCH 5/5] nfs-utils, e2fsprogs, mtd-utils, libsm: bump PR
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
X-List-Received-Date: Fri, 21 Jan 2011 10:46:06 -0000

This ensures package runtime dependencies are up-to-date after splitting
out libuuid and libblkid in util-linux recipe

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Qing He <qing.he@intel.com>
---
 .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
 .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
 meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
 meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
index a2bac61..b456474 100644
--- a/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
+++ b/meta/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bb
@@ -13,7 +13,7 @@ DEPENDS = "libcap libnfsidmap libevent util-linux tcp-wrappers"
 RDEPENDS_${PN} = "portmap"
 RRECOMMENDS_${PN} = "kernel-module-nfsd"
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "${SOURCEFORGE_MIRROR}/nfs/nfs-utils-${PV}.tar.bz2 \
            file://nfs-utils-1.0.6-uclibc.patch \
diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
index 3681ab3..ffe6dce 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.41.12.bb
@@ -1,6 +1,6 @@
 require e2fsprogs.inc
 
-PR = "r19"
+PR = "r20"
 
 SRC_URI += "file://quotefix.patch;patch=1 \
             file://acinclude.m4"
diff --git a/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
index 8189bff..5e6db0e 100644
--- a/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
+++ b/meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb
@@ -11,7 +11,7 @@ SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=v${PV} \
 
 S = "${WORKDIR}/git/"
 
-PR = "r0"
+PR = "r1"
 
 EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"
 
diff --git a/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb b/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
index 5ce01b7..9ad5e4a 100644
--- a/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
+++ b/meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=d98446615b962372d6a46057170043fa"
 
 DEPENDS += "libice xproto xtrans e2fsprogs"
 
-PR = "r0"
+PR = "r1"
 PE = "1"
 
 XORG_PN = "libSM"
-- 
1.7.0


