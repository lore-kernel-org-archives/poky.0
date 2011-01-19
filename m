Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C09584C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:28:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Jan 2011 23:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,343,1291622400"; d="scan'208";a="376621605"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2011 23:28:31 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PfSNJ-0003rm-A3; Wed, 19 Jan 2011 15:22:37 +0800
Message-Id: <360d78397f333fe601ac2cee047b9acb944c6458.1295421399.git.qing.he@intel.com>
In-Reply-To: <cover.1295421399.git.qing.he@intel.com>
References: <cover.1295421399.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Wed, 19 Jan 2011 13:30:29 +0800
Date: Wed, 19 Jan 2011 15:22:37 +0800
To: poky@yoctoproject.org
Cc: aleksandr.koltsoff@ebts.fi
Subject: [PATCH 2/2] util-linux: fix dangling symlinks
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
X-List-Received-Date: Wed, 19 Jan 2011 07:28:33 -0000

shutdown and swapon should be in $base_sbindir instead of $sbindir

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-core/util-linux/util-linux.inc       |   18 +++++++++++++-----
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index fe002c0..d55d13a 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -149,11 +149,19 @@ do_install () {
 	install -d ${D}${sysconfdir}/default/
 	echo 'MOUNTALL="-t nonfs,nosmbfs,noncpfs"' > ${D}${sysconfdir}/default/mountall
 
-	ln -sf ${sbindir}/swapon ${D}${sbindir}/swapoff.${PN}
-	ln -sf ${sbindir}/shutdown ${D}${sbindir}/reboot.${PN}
-	ln -sf ${sbindir}/shutdown ${D}${sbindir}/halt.${PN}
-	ln -sf ${sbindir}/shutdown ${D}${sbindir}/fastboot
-	ln -sf ${sbindir}/shutdown ${D}${sbindir}/fasthalt
+	# note ${PN} in swapon.${PN}, swapon is an alternative link that is
+	# not guaranteed to provide multiple functions, similar for shutdown
+	ln -sf swapon.${PN} ${D}${base_sbindir}/swapoff.${PN}
+	ln -sf shutdown.${PN} ${D}${base_sbindir}/reboot.${PN}
+	ln -sf shutdown.${PN} ${D}${base_sbindir}/halt.${PN}
+	ln -sf shutdown.${PN} ${D}${base_sbindir}/fastboot
+	ln -sf shutdown.${PN} ${D}${base_sbindir}/fasthalt
+
+	rm -f ${D}${sbindir}/halt
+	rm -f ${D}${sbindir}/reboot
+	rm -f ${D}${sbindir}/fastboot
+	rm -f ${D}${sbindir}/fasthalt
+	rm -f ${D}${sbindir}/swapoff
 }
 
 pkg_postinst_${PN} () {
diff --git a/meta/recipes-core/util-linux/util-linux_2.17.2.bb b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
index a287857..ecd0115 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -1,6 +1,6 @@
 MAJOR_VERSION = "2.17"
 require util-linux.inc
-PR="r2"
+PR="r3"
 
 SRC_URI += "file://uclibc-compile.patch \
 	          file://util-linux-ng-replace-siginterrupt.patch"
-- 
1.7.0


