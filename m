Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B833F4C80FA4
	for <poky@yoctoproject.org>; Fri, 10 Dec 2010 02:53:11 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Dec 2010 00:53:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,323,1288594800"; d="scan'208";a="685788157"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by orsmga001.jf.intel.com with ESMTP; 10 Dec 2010 00:53:10 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PQydz-00039D-6n; Fri, 10 Dec 2010 16:47:59 +0800
Message-Id: <55e92be605be9b86e3fba5df863651c3bd824cd2.1291970759.git.qing.he@intel.com>
In-Reply-To: <cover.1291970759.git.qing.he@intel.com>
References: <cover.1291970759.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Fri, 10 Dec 2010 14:03:42 +0800
To: poky@yoctoproject.org
Subject: [PATCH 2/8] fakeroot: upgrade to version 1.14.5
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
X-List-Received-Date: Fri, 10 Dec 2010 08:53:12 -0000

from 1.14.4

changes:
 - install to ${includedir} instead of ${STAGING_INCDIR}
 - fakeroot has long been under GPLv3

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../absolutepaths.patch                            |    0
 .../{fakeroot_1.14.4.bb => fakeroot_1.14.5.bb}     |   13 +++++++++----
 2 files changed, 9 insertions(+), 4 deletions(-)
 rename meta/recipes-devtools/fakeroot/{fakeroot-1.14.4 => fakeroot-1.14.5}/absolutepaths.patch (100%)
 rename meta/recipes-devtools/fakeroot/{fakeroot_1.14.4.bb => fakeroot_1.14.5.bb} (75%)

diff --git a/meta/recipes-devtools/fakeroot/fakeroot-1.14.4/absolutepaths.patch b/meta/recipes-devtools/fakeroot/fakeroot-1.14.5/absolutepaths.patch
similarity index 100%
rename from meta/recipes-devtools/fakeroot/fakeroot-1.14.4/absolutepaths.patch
rename to meta/recipes-devtools/fakeroot/fakeroot-1.14.5/absolutepaths.patch
diff --git a/meta/recipes-devtools/fakeroot/fakeroot_1.14.4.bb b/meta/recipes-devtools/fakeroot/fakeroot_1.14.5.bb
similarity index 75%
rename from meta/recipes-devtools/fakeroot/fakeroot_1.14.4.bb
rename to meta/recipes-devtools/fakeroot/fakeroot_1.14.5.bb
index 4edeccf..2d2604f 100644
--- a/meta/recipes-devtools/fakeroot/fakeroot_1.14.4.bb
+++ b/meta/recipes-devtools/fakeroot/fakeroot_1.14.5.bb
@@ -1,7 +1,9 @@
 DESCRIPTION = "Provides a fake \"root environment\" by means of LD_PRELOAD and SYSV IPC or TCP trickery"
 HOMEPAGE = "http://fakeroot.alioth.debian.org/"
 SECTION = "base"
-LICENSE = "GPLv2"
+LICENSE = "GPLv3+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949"
+
 # fakeroot needs getopt which is provided by the util-linux package
 RDEPENDS = "util-linux"
 RDEPENDS_virtclass-native = "util-linux-native"
@@ -10,7 +12,7 @@ PROVIDES += "virtual/fakeroot"
 
 SRC_URI = "${DEBIAN_MIRROR}/main/f/fakeroot/fakeroot_${PV}.orig.tar.bz2 \
            file://absolutepaths.patch"
-	    
+
 inherit autotools
 
 do_configure_prepend() {
@@ -20,8 +22,8 @@ do_configure_prepend() {
 }
 
 do_install_append() {
-	install -d ${D}${STAGING_INCDIR}/fakeroot/
-	install -m 644 *.h ${D}${STAGING_INCDIR}/fakeroot
+	install -d ${D}${includedir}/fakeroot/
+	install -m 644 *.h ${D}${includedir}/fakeroot
 }
 
 # Compatability for the rare systems not using or having SYSV
@@ -31,3 +33,6 @@ python () {
 }
 
 BBCLASSEXTEND = "native"
+
+SRC_URI[md5sum] = "659a1f3a36554abfc2a3eaad2fdc0604"
+SRC_URI[sha256sum] = "b035c834944bf9482027f48c388de8492e96609825265ac03f05408d0b3aae68"
-- 
1.7.0


