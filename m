Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78F894C810AF
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:46:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2011 02:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="699136369"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEPY-0005Zf-O7; Fri, 21 Jan 2011 18:40:08 +0800
Message-Id: <9b53c03edd7bf705d283ffa1b804c81f29c2d7af.1295605995.git.qing.he@intel.com>
In-Reply-To: <cover.1295605993.git.qing.he@intel.com>
References: <cover.1295605993.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Fri, 21 Jan 2011 18:01:25 +0800
Date: Fri, 21 Jan 2011 18:40:08 +0800
To: poky@yoctoproject.org
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, aleksandr.koltsoff@ebts.fi
Subject: [PATCH 3/5] util-linux: fix lscpu packaging
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
X-List-Received-Date: Fri, 21 Jan 2011 10:46:06 -0000

lscpu in util-linux 2.17.2 is specially under GPLv3, ensure it's
packaged separately if it's being built.

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-core/util-linux/util-linux.inc       |    5 ++++-
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index 6830392..7dc0cc5 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -29,7 +29,9 @@ SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/util-linux-ng/v${MAJOR_VERSION}/u
 
 PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff \
                     util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile \
-                    util-linux-libblkid util-linux-libblkid-dev util-linux-libuuid util-linux-libuuid-dev "
+                    util-linux-libblkid util-linux-libblkid-dev util-linux-libuuid util-linux-libuuid-dev \
+                    util-linux-lscpu \
+                   "
 
 PACKAGES_virtclass-native = ""
 
@@ -49,6 +51,7 @@ FILES_util-linux-losetup = "/sbin/losetup.${PN}"
 FILES_util-linux-mount = "/bin/mount.${PN}"
 FILES_util-linux-umount = "/bin/umount.${PN}"
 FILES_util-linux-readprofile = "/sbin/readprofile"
+FILES_util-linux-lscpu = "/usr/bin/lscpu"
 
 FILES_util-linux-libblkid = "/usr/lib/libblkid.so.*"
 FILES_util-linux-libblkid-dev = "/usr/lib/libblkid.so /usr/lib/libblkid.a /usr/lib/libblkid.la /usr/include/blkid"
diff --git a/meta/recipes-core/util-linux/util-linux_2.17.2.bb b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
index d0b1b41..082b3f0 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -1,6 +1,6 @@
 MAJOR_VERSION = "2.17"
 require util-linux.inc
-PR = "r3"
+PR = "r4"
 
 SRC_URI += "file://uclibc-compile.patch \
 	          file://util-linux-ng-replace-siginterrupt.patch"
-- 
1.7.0


