Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3CDF4C810AF
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:46:06 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2011 02:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="595141897"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEPY-0005ZY-Ne; Fri, 21 Jan 2011 18:40:08 +0800
Message-Id: <8ccbbfb97e0d5f61b671dcb1492a6bf868d176dc.1295605994.git.qing.he@intel.com>
In-Reply-To: <cover.1295605993.git.qing.he@intel.com>
References: <cover.1295605993.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Fri, 21 Jan 2011 17:54:22 +0800
Date: Fri, 21 Jan 2011 18:40:08 +0800
To: poky@yoctoproject.org
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, aleksandr.koltsoff@ebts.fi
Subject: [PATCH 2/5] util-linux: fix dangling symlinks
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
X-List-Received-Date: Fri, 21 Jan 2011 10:46:07 -0000

shutdown and swapon should be in $base_sbindir instead of $sbindir

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-core/util-linux/util-linux.inc       |   18 +++++++++++++-----
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index 44f7834..6830392 100644
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
index 662bde0..d0b1b41 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -1,6 +1,6 @@
 MAJOR_VERSION = "2.17"
 require util-linux.inc
-PR = "r2"
+PR = "r3"
 
 SRC_URI += "file://uclibc-compile.patch \
 	          file://util-linux-ng-replace-siginterrupt.patch"
-- 
1.7.0


