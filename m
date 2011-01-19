Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C6B214C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 10:56:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2011 08:55:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="594507078"
Received: from unknown (HELO helios) ([10.255.16.92])
	by orsmga002.jf.intel.com with SMTP; 19 Jan 2011 08:55:46 -0800
Received: by helios (sSMTP sendmail emulation); Wed, 19 Jan 2011 16:55:44 +0000
Message-Id: <fb9759c8337b340da206eda14281be85f4db0675.1295455496.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1295455496.git.paul.eggleton@linux.intel.com>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 16:41:24 +0000
Date: Wed, 19 Jan 2011 16:55:44 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/3] Bump PR on recipes that depend on util-linux
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
X-List-Received-Date: Wed, 19 Jan 2011 16:56:03 -0000

This ensures package runtime dependencies are up-to-date after splitting
out libuuid and libblkid.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
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
1.7.1


