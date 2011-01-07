Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93EB24C811E7
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 00:46:39 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jan 2011 22:46:09 -0800
Message-Id: <b7da2f$q2nul6@fmsmga001.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="875297450"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2011 22:46:08 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 11:04:12 +0800
Date: Fri, 07 Jan 2011 14:28:30 +0800
To: poky@pokylinux.org
Subject: [PATCH 2/2] bison-native: create a wrapper script for sstate installation
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
X-List-Received-Date: Fri, 07 Jan 2011 06:46:39 -0000

bison-native encodes M4 and PKGDATA staging path in its binary, which
breaks sstate installation in a new build environment. Use create_wrapper
similar as flex-native to solve this issue

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-devtools/bison/bison_2.4.3.bb |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/bison/bison_2.4.3.bb b/meta/recipes-devtools/bison/bison_2.4.3.bb
index 03fd463..fa2f154 100644
--- a/meta/recipes-devtools/bison/bison_2.4.3.bb
+++ b/meta/recipes-devtools/bison/bison_2.4.3.bb
@@ -10,7 +10,7 @@ SECTION = "devel"
 PRIORITY = "optional"
 DEPENDS = "gettext bison-native"
 
-PR = "r0"
+PR = "r1"
 
 BASE_SRC_URI = "${GNU_MIRROR}/bison/bison-${PV}.tar.gz \
 	   file://m4.patch;patch=1"
@@ -27,4 +27,10 @@ SRC_URI_virtclass-native = "${BASE_SRC_URI}"
 inherit autotools
 acpaths = "-I ${S}/m4"
 
+do_install_append_virtclass-native() {
+	create_wrapper ${D}/${bindir}/bison \
+		M4=${STAGING_BINDIR_NATIVE}/m4 \
+		BISON_PKGDATADIR=${STAGING_DATADIR_NATIVE}/bison
+}
+#bison-native encodes the staging M4 path
 BBCLASSEXTEND = "native"
-- 
1.6.0.4


