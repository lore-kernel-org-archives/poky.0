Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0AE844C810AF
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:46:36 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2011 02:46:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="879630012"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEPY-0005ZR-N6; Fri, 21 Jan 2011 18:40:08 +0800
Message-Id: <0c0d3126a4628afa087df52956a9678c073d0d94.1295605994.git.qing.he@intel.com>
In-Reply-To: <cover.1295605993.git.qing.he@intel.com>
References: <cover.1295605993.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Wed, 19 Jan 2011 09:44:51 +0800
Date: Fri, 21 Jan 2011 18:40:08 +0800
To: poky@yoctoproject.org
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, aleksandr.koltsoff@ebts.fi
Subject: [PATCH 1/5] util-linux: separately packaging blkid and uuid
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
X-List-Received-Date: Fri, 21 Jan 2011 10:46:37 -0000

To avoid full set of util-linux included by library dependencies.

Fixes [BUGID #661].

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-core/util-linux/util-linux.inc       |    9 ++++++++-
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index 53d8463..44f7834 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -27,7 +27,9 @@ SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/util-linux-ng/v${MAJOR_VERSION}/u
            file://make_include \
            "
 
-PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile "
+PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff \
+                    util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile \
+                    util-linux-libblkid util-linux-libblkid-dev util-linux-libuuid util-linux-libuuid-dev "
 
 PACKAGES_virtclass-native = ""
 
@@ -48,6 +50,11 @@ FILES_util-linux-mount = "/bin/mount.${PN}"
 FILES_util-linux-umount = "/bin/umount.${PN}"
 FILES_util-linux-readprofile = "/sbin/readprofile"
 
+FILES_util-linux-libblkid = "/usr/lib/libblkid.so.*"
+FILES_util-linux-libblkid-dev = "/usr/lib/libblkid.so /usr/lib/libblkid.a /usr/lib/libblkid.la /usr/include/blkid"
+FILES_util-linux-libuuid = "/usr/lib/libuuid.so.*"
+FILES_util-linux-libuuid-dev = "/usr/lib/libuuid.so /usr/lib/libuuid.a /usr/lib/libuuid.la /usr/include/uuid"
+
 RRECOMMENDS_${PN} = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-mount util-linux-readprofile "
 RDEPENDS_${PN} = "util-linux-umount util-linux-swaponoff util-linux-losetup"
 
diff --git a/meta/recipes-core/util-linux/util-linux_2.17.2.bb b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
index 9b344d4..662bde0 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -1,6 +1,6 @@
 MAJOR_VERSION = "2.17"
 require util-linux.inc
-PR="r1"
+PR = "r2"
 
 SRC_URI += "file://uclibc-compile.patch \
 	          file://util-linux-ng-replace-siginterrupt.patch"
-- 
1.7.0


