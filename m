Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A44634C8112C
	for <poky@pokylinux.org>; Wed,  5 Jan 2011 06:00:07 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Jan 2011 03:59:37 -0800
Message-Id: <b7da2f$q23q26@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="874637387"
Received: from unknown (HELO localhost) ([10.239.36.131])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jan 2011 03:59:36 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 10:18:21 +0800
Date: Wed, 05 Jan 2011 19:41:44 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/4] binutils: use default ${CC} instead of defining it own
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
X-List-Received-Date: Wed, 05 Jan 2011 12:00:07 -0000

binutils.inc exports its own ${CC} which is similar to default ${CC}
but missing ${TOOLCHAIN_OPTION}, which makes --sysroot option lost
when compiling target binutils which then further breaks sstate.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-devtools/binutils/binutils.inc       |    2 --
 meta/recipes-devtools/binutils/binutils_2.20.1.bb |    2 +-
 2 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils.inc b/meta/recipes-devtools/binutils/binutils.inc
index 7f1f647..d9e859e 100644
--- a/meta/recipes-devtools/binutils/binutils.inc
+++ b/meta/recipes-devtools/binutils/binutils.inc
@@ -75,8 +75,6 @@ export CC_FOR_BUILD = "${BUILD_CC}"
 export CPP_FOR_BUILD = "${BUILD_CPP}"
 export CFLAGS_FOR_BUILD = "${BUILD_CFLAGS}"
 
-export CC = "${CCACHE}${HOST_PREFIX}gcc ${HOST_CC_ARCH}"
-
 do_configure () {
 	(cd ${S}; gnu-configize) || die "Failed to run gnu-configize"
 	oe_runconf
diff --git a/meta/recipes-devtools/binutils/binutils_2.20.1.bb b/meta/recipes-devtools/binutils/binutils_2.20.1.bb
index b7212e7..75837b1 100644
--- a/meta/recipes-devtools/binutils/binutils_2.20.1.bb
+++ b/meta/recipes-devtools/binutils/binutils_2.20.1.bb
@@ -1,6 +1,6 @@
 require binutils.inc
 
-PR = "r3"
+PR = "r4"
 
 LIC_FILES_CHKSUM="\
     file://src-release;endline=17;md5=4830a9ef968f3b18dd5e9f2c00db2d35\
-- 
1.6.0.4


