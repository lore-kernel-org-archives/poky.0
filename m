Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 708174C810B6
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 00:45:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2011 22:45:47 -0800
Message-Id: <0d30dc$km9uun@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="694483930"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.19])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2011 22:45:47 -0800
From: Kevin Tian <kevin.tian@intel.com>
Old-Date: Wed, 5 Jan 2011 10:26:36 +0800
Date: Fri, 07 Jan 2011 14:28:28 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/2] flex-native: create a wrapper script for sstate installation
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
X-List-Received-Date: Fri, 07 Jan 2011 06:45:48 -0000

flex-native encodes M4 staging path in its binary, which breaks sstate
installation in a new build environment. Use create_wrapper to create
a wrapper script which explicitly set M4 environmental variable to the
new path

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-devtools/flex/flex.inc       |    3 +++
 meta/recipes-devtools/flex/flex_2.5.35.bb |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/flex/flex.inc b/meta/recipes-devtools/flex/flex.inc
index 93fa7e8..54c400c 100644
--- a/meta/recipes-devtools/flex/flex.inc
+++ b/meta/recipes-devtools/flex/flex.inc
@@ -11,3 +11,6 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/flex/flex-${PV}.tar.bz2 "
 
 inherit autotools
 
+do_install_append_virtclass-native() {
+	create_wrapper ${D}/${bindir}/flex M4=${STAGING_BINDIR_NATIVE}/m4
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


