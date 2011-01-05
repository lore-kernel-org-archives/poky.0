Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60CE24C8086F
	for <poky@pokylinux.org>; Wed,  5 Jan 2011 05:59:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jan 2011 03:59:38 -0800
Message-Id: <849307$b15lvd@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="370333680"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.131])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 03:59:38 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 10:26:36 +0800
Date: Wed, 05 Jan 2011 19:42:25 +0800
To: poky@pokylinux.org
Subject: [PATCH 2/4] flex-native: create a wrapper script for sstate installation
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
X-List-Received-Date: Wed, 05 Jan 2011 11:59:39 -0000

flex-native encodes M4 staging path in its binary, which breaks sstate
installation in a new build environment. Use create_wrapper to create
a wrapper script which explicitly set M4 environmental variable to the
new path

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-devtools/flex/flex.inc       |    6 ++++++
 meta/recipes-devtools/flex/flex_2.5.35.bb |    2 +-
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/flex/flex.inc b/meta/recipes-devtools/flex/flex.inc
index 93fa7e8..e5e423e 100644
--- a/meta/recipes-devtools/flex/flex.inc
+++ b/meta/recipes-devtools/flex/flex.inc
@@ -11,3 +11,9 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/flex/flex-${PV}.tar.bz2 "
 
 inherit autotools
 
+SYSROOT_PREPROCESS_FUNCS_append_virtclass-native = " flex_path_fixup"
+
+flex_path_fixup() {
+	create_wrapper ${SYSROOT_DESTDIR}/${STAGING_DIR_HOST}/${bindir}/flex \
+		M4=${STAGING_BINDIR_NATIVE}/m4
+}
diff --git a/meta/recipes-devtools/flex/flex_2.5.35.bb b/meta/recipes-devtools/flex/flex_2.5.35.bb
index 4fdce33..28a4f1f 100644
--- a/meta/recipes-devtools/flex/flex_2.5.35.bb
+++ b/meta/recipes-devtools/flex/flex_2.5.35.bb
@@ -1,5 +1,5 @@
 require flex.inc
-PR = "r1"
+PR = "r2"
 LICENSE="BSD"
 LIC_FILES_CHKSUM = "file://COPYING;md5=e4742cf92e89040b39486a6219b68067"
 BBCLASSEXTEND = "native"
-- 
1.6.0.4


