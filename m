Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 265EEE00C55; Thu,  2 Jun 2016 00:51:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2905E00B11
	for <poky@yoctoproject.org>; Thu,  2 Jun 2016 00:51:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u527pMUM017575
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 2 Jun 2016 00:51:22 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 2 Jun 2016 00:51:21 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 2 Jun 2016 15:51:07 +0800
Message-ID: <1464853867-111723-1-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [PATCH] yocto-bsps: u-boot: Search for rootfs partitions on both SD and eMMC
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Jun 2016 07:51:26 -0000
Content-Type: text/plain

From: Jussi Laako <jussi.laako@linux.intel.com>

On BeagleBone Black, first attempt to find rootfs from microSD
and then from eMMC if not available.

Fixes: #9176

Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
[Kevin: update to 2016.03, also add subject prefix and Upstream-Status]
Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
This is based on the patch [1] posted by Jussi Laako. Add the Upstream-Status
tag as required by Saul, also tweak the subject and u-boot version.

[1] https://lists.yoctoproject.org/pipermail/poky/2016-March/010419.html

 ...r-bootable-partitions-on-both-SD-and-eMMC.patch | 42 ++++++++++++++++++++++
 .../recipes-bsp/u-boot/u-boot_2016.03.bbappend     |  3 ++
 2 files changed, 45 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
 create mode 100644 meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend

diff --git a/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
new file mode 100644
index 0000000..6c4c59b
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
@@ -0,0 +1,42 @@
+From 86cc560ff9a6578326532e277d987e24661e5f04 Mon Sep 17 00:00:00 2001
+From: Jussi Laako <jussi.laako@linux.intel.com>
+Date: Fri, 26 Feb 2016 14:58:32 +0200
+Subject: [PATCH] Search for bootable partitions on both SD and eMMC
+
+On BeagleBone Black, first attempt to boot from microSD and then from
+eMMC if not available.
+
+Upstream-Status: Inappropriate [not author]
+
+Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
+[Kevin: Add the Upstream-Status tag]
+Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
+---
+ include/configs/ti_armv7_common.h | 11 ++++++++++-
+ 1 file changed, 10 insertions(+), 1 deletion(-)
+
+diff --git a/include/configs/ti_armv7_common.h b/include/configs/ti_armv7_common.h
+index 199612b..ece87ab 100644
+--- a/include/configs/ti_armv7_common.h
++++ b/include/configs/ti_armv7_common.h
+@@ -60,7 +60,16 @@
+ #define DEFAULT_MMC_TI_ARGS \
+ 	"mmcdev=0\0" \
+ 	"mmcrootfstype=ext4 rootwait\0" \
+-	"finduuid=part uuid mmc 0:2 uuid\0" \
++	"findsduuid=part uuid mmc 0:2 sduuid\0" \
++	"findemmcuuid=part uuid mmc 1:2 emmcuuid\0" \
++	"finduuid=if run findsduuid; then "\
++		"echo \"Boot from microSD\"; "\
++		"setenv uuid ${sduuid}; " \
++	"else " \
++		"run findemmcuuid; " \
++		"echo \"Boot from eMMC\"; " \
++		"setenv uuid ${emmcuuid}; " \
++	"fi;\0" \
+ 	"args_mmc=run finduuid;setenv bootargs console=${console} " \
+ 		"${optargs} " \
+ 		"root=PARTUUID=${uuid} rw " \
+-- 
+2.7.0
+
diff --git a/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend
new file mode 100644
index 0000000..01c8e68
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append = " file://0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch"
-- 
2.8.1


