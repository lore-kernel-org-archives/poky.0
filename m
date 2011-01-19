Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D5AF4C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 10:55:43 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Jan 2011 08:55:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,345,1291622400"; d="scan'208";a="698446967"
Received: from unknown (HELO helios) ([10.255.16.92])
	by orsmga001.jf.intel.com with SMTP; 19 Jan 2011 08:55:41 -0800
Received: by helios (sSMTP sendmail emulation); Wed, 19 Jan 2011 16:55:39 +0000
Message-Id: <88be364793ae493d048409762c83ca4126e3fecf.1295455496.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1295455496.git.paul.eggleton@linux.intel.com>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Wed, 19 Jan 2011 16:20:57 +0000
Date: Wed, 19 Jan 2011 16:55:39 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] util-linux: split out libuuid and libblkid into separate packages
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
X-List-Received-Date: Wed, 19 Jan 2011 16:55:43 -0000

libuuid and libblkid can exist on their own separately from the rest
of util-linux. Slightly reduces the overall footprint of other packages
that depend on these libraries.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-core/util-linux/util-linux.inc       |    6 ++++--
 meta/recipes-core/util-linux/util-linux_2.17.2.bb |    2 +-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-core/util-linux/util-linux.inc
index 53d8463..c3e1ace 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -27,7 +27,7 @@ SRC_URI = "${KERNELORG_MIRROR}/pub/linux/utils/util-linux-ng/v${MAJOR_VERSION}/u
            file://make_include \
            "
 
-PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile "
+PACKAGES_prepend = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-swaponoff util-linux-losetup util-linux-umount util-linux-mount util-linux-readprofile util-linux-libuuid util-linux-libblkid "
 
 PACKAGES_virtclass-native = ""
 
@@ -47,9 +47,11 @@ FILES_util-linux-losetup = "/sbin/losetup.${PN}"
 FILES_util-linux-mount = "/bin/mount.${PN}"
 FILES_util-linux-umount = "/bin/umount.${PN}"
 FILES_util-linux-readprofile = "/sbin/readprofile"
+FILES_util-linux-libuuid = "/usr/lib/libuuid.so.*"
+FILES_util-linux-libblkid = "/usr/lib/libblkid.so.*"
 
 RRECOMMENDS_${PN} = "util-linux-fdisk util-linux-cfdisk util-linux-sfdisk util-linux-mount util-linux-readprofile "
-RDEPENDS_${PN} = "util-linux-umount util-linux-swaponoff util-linux-losetup"
+RDEPENDS_${PN} = "util-linux-umount util-linux-swaponoff util-linux-losetup util-linux-libuuid util-linux-libblkid"
 
 RRECOMMENDS_${PN}_virtclass-native = ""
 RDEPENDS_${PN}_virtclass-native = ""
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
1.7.1


