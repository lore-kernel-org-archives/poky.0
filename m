Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C46C4C811EB
	for <poky@pokylinux.org>; Wed,  5 Jan 2011 05:59:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 03:59:40 -0800
Message-Id: <0d30dc$klkeo5@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="693779209"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 03:59:39 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 11:04:12 +0800
Date: Wed, 05 Jan 2011 19:42:27 +0800
To: poky@pokylinux.org
Subject: [PATCH 3/4] bison-native: create a wrapper script for sstate installation
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
X-List-Received-Date: Wed, 05 Jan 2011 11:59:40 -0000

bison-native encodes M4 and PKGDATA staging path in its binary, which
breaks sstate installation in a new build environment. Use create_wrapper
similar as flex-native to solve this issue

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-devtools/bison/bison_2.4.3.bb |   10 +++++++++-
 1 files changed, 9 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/bison/bison_2.4.3.bb b/meta/recipes-devtools/bison/bison_2.4.3.bb
index 03fd463..d81aa79 100644
--- a/meta/recipes-devtools/bison/bison_2.4.3.bb
+++ b/meta/recipes-devtools/bison/bison_2.4.3.bb
@@ -10,7 +10,7 @@ SECTION = "devel"
 PRIORITY = "optional"
 DEPENDS = "gettext bison-native"
 
-PR = "r0"
+PR = "r1"
 
 BASE_SRC_URI = "${GNU_MIRROR}/bison/bison-${PV}.tar.gz \
 	   file://m4.patch;patch=1"
@@ -27,4 +27,12 @@ SRC_URI_virtclass-native = "${BASE_SRC_URI}"
 inherit autotools
 acpaths = "-I ${S}/m4"
 
+SYSROOT_PREPROCESS_FUNCS_append_virtclass-native = " bison_path_fixup"
+
+bison_path_fixup() {
+	create_wrapper ${SYSROOT_DESTDIR}/${STAGING_DIR_HOST}/${bindir}/bison \
+		M4=${STAGING_BINDIR_NATIVE}/m4 \
+		BISON_PKGDATADIR=${STAGING_DATADIR_NATIVE}/bison
+}
+#bison-native encodes the staging M4 path
 BBCLASSEXTEND = "native"
-- 
1.6.0.4


