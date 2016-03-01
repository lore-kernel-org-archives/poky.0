Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BBFCE00B3A; Tue,  1 Mar 2016 01:02:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 513B5E00A27
	for <poky@yoctoproject.org>; Tue,  1 Mar 2016 01:02:36 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 01 Mar 2016 01:02:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,522,1449561600"; d="scan'208";a="661698869"
Received: from jlaako-mobl2.ger.corp.intel.com (HELO [10.252.43.135])
	([10.252.43.135])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Mar 2016 01:02:35 -0800
References: <56D4547D.70803@linux.intel.com>
To: poky@yoctoproject.org
From: Jussi Laako <jussi.laako@linux.intel.com>
X-Forwarded-Message-Id: <56D4547D.70803@linux.intel.com>
Message-ID: <56D55AA9.8060605@linux.intel.com>
Date: Tue, 1 Mar 2016 11:02:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <56D4547D.70803@linux.intel.com>
Subject: [PATCH] Fix booting from eMMC on BeagleBone Black
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
X-List-Received-Date: Tue, 01 Mar 2016 09:02:41 -0000
X-Groupsio-MsgNum: 10316
Content-Type: multipart/mixed; boundary="------------060209030004080307090908"

--------------060209030004080307090908
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

By default, on BeagleBone, u-boot only looks for rootfs UUID from first
mmc device and thus only from microSD. Thus booting from eMMC fails in
kernel panic because command line has empty root partition UUID
"root=PARTUUID=".

This patch makes it first look in the same place as before and if the
lookup fails (no microSD inserted) it next looks up for the rootfs UUID
on the second mmc device which is the on-board eMMC. I placed the
bbappend and patch on meta-yocto-bsp layer because the BeagleBone
support in general is located there.


Best regards,

	- Jussi Laako



--------------060209030004080307090908
Content-Type: text/x-patch;
 name="0001-Search-for-rootfs-partitions-on-both-SD-and-eMMC.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Search-for-rootfs-partitions-on-both-SD-and-eMMC.patch"

From f54171b120b1fa47a592bdb8f3fbac2350e1757e Mon Sep 17 00:00:00 2001
From: Jussi Laako <jussi.laako@linux.intel.com>
Date: Mon, 29 Feb 2016 16:12:11 +0200
Subject: [PATCH] Search for rootfs partitions on both SD and eMMC

On BeagleBone Black, first attempt to find rootfs from microSD
and then from eMMC if not available.

Fixes: #9176

Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
---
 ...r-bootable-partitions-on-both-SD-and-eMMC.patch | 38 ++++++++++++++++++++++
 .../recipes-bsp/u-boot/u-boot_2016.01.bbappend     |  3 ++
 2 files changed, 41 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
 create mode 100644 meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.01.bbappend

diff --git a/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
new file mode 100644
index 0000000..729dddf
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
@@ -0,0 +1,38 @@
+From 86cc560ff9a6578326532e277d987e24661e5f04 Mon Sep 17 00:00:00 2001
+From: Jussi Laako <jussi.laako@linux.intel.com>
+Date: Fri, 26 Feb 2016 14:58:32 +0200
+Subject: [PATCH] Search for bootable partitions on both SD and eMMC
+
+On BeagleBone Black, first attempt to boot from microSD and then from
+eMMC if not available.
+
+Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
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
diff --git a/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.01.bbappend b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.01.bbappend
new file mode 100644
index 0000000..01c8e68
--- /dev/null
+++ b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.01.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI_append = " file://0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch"
-- 
2.7.0



--------------060209030004080307090908--
