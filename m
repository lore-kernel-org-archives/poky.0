Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8176D4C8106A
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:28:32 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 23:28:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,343,1291622400"; d="scan'208";a="594354858"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 23:28:31 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PfSNJ-0003rf-6s; Wed, 19 Jan 2011 15:22:37 +0800
Message-Id: <d84aea4ae948d5d14d4f320fadba5d0ac60e7e69.1295421399.git.qing.he@intel.com>
In-Reply-To: <cover.1295421399.git.qing.he@intel.com>
References: <cover.1295421399.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Wed, 19 Jan 2011 09:44:51 +0800
Date: Wed, 19 Jan 2011 15:22:37 +0800
To: poky@yoctoproject.org
Cc: aleksandr.koltsoff@ebts.fi
Subject: [PATCH 1/2] util-linux: separately packaging blkid and uuid
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
X-List-Received-Date: Wed, 19 Jan 2011 07:28:32 -0000

To avoid full set of util-linux included by library dependencies.

Fixes [BUGID #661].

Signed-off-by: Qing He <qing.he@intel.com>
---
 meta/recipes-core/util-linux/util-linux.inc       |    9 ++++++++-
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index 53d8463..fe002c0 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -27,7 +27,9 @@ SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/util-linux-ng/v${MAJOR_VERSION}/u
            file://make_include \
            "
 
-PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile "
+PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff \
+                    util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile \
+                    libblkid libblkid-dev libuuid libuuid-dev "
 
 PACKAGES_virtclass-native = ""
 
@@ -48,6 +50,11 @@ FILES_util-linux-mount = "/bin/mount.${PN}"
 FILES_util-linux-umount = "/bin/umount.${PN}"
 FILES_util-linux-readprofile = "/sbin/readprofile"
 
+FILES_libblkid = "/usr/lib/libblkid.so.*"
+FILES_libblkid-dev = "/usr/lib/libblkid.so /usr/lib/libblkid.a /usr/lib/libblkid.la /usr/include/blkid"
+FILES_libuuid = "/usr/lib/libuuid.so.*"
+FILES_libuuid-dev = "/usr/lib/libuuid.so /usr/lib/libuuid.a /usr/lib/libuuid.la /usr/include/uuid"
+
 RRECOMMENDS_${PN} = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-mount util-linux-readprofile "
 RDEPENDS_${PN} = "util-linux-umount util-linux-swaponoff util-linux-losetup"
 
diff --git a/meta/recipes-core/util-linux/util-linux_2.17.2.bb b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
index 9b344d4..a287857 100644
--- a/meta/recipes-core/util-linux/util-linux_2.17.2.bb
+++ b/meta/recipes-core/util-linux/util-linux_2.17.2.bb
@@ -1,6 +1,6 @@
 MAJOR_VERSION = "2.17"
 require util-linux.inc
-PR="r1"
+PR="r2"
 
 SRC_URI += "file://uclibc-compile.patch \
 	          file://util-linux-ng-replace-siginterrupt.patch"
-- 
1.7.0


