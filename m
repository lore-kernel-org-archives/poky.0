Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C51E3E00524; Mon,  9 Jan 2017 10:55:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE1EE00443
	for <poky@yoctoproject.org>; Mon,  9 Jan 2017 10:55:26 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 09 Jan 2017 10:55:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,340,1477983600"; d="scan'208";a="28166030"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 09 Jan 2017 10:55:25 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id D91676A4080;
	Mon,  9 Jan 2017 10:54:31 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  9 Jan 2017 20:33:01 +0200
Message-Id: <1483986781-16335-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] edgerouter: add edgerouter.wks
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
X-List-Received-Date: Mon, 09 Jan 2017 18:55:28 -0000

Currently edgerouter machine uses sdimage-bootpart.wks from
scripts/lib/wic/canned-wks. It'd be easier to find this file
if it's name contains machine name and it's located in the same
layer.

Added edgerouter.wks to meta-yocto-bsp/wic/ to make it independent
from changes in oe-core and easier to maintain.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/edgerouter.conf | 2 +-
 meta-yocto-bsp/wic/edgerouter.wks           | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/wic/edgerouter.wks

diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index c6193d9..ce7de60 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -21,6 +21,6 @@ MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 IMAGE_FSTYPES ?= "jffs2 tar.bz2 wic wic.bmap"
 JFFS2_ERASEBLOCK = "0x10000"
 
-WKS_FILE ?= "sdimage-bootpart.wks"
+WKS_FILE ?= "edgerouter.wks"
 IMAGE_BOOT_FILES ?= "vmlinux;vmlinux.64"
 do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
diff --git a/meta-yocto-bsp/wic/edgerouter.wks b/meta-yocto-bsp/wic/edgerouter.wks
new file mode 100644
index 0000000..7176fe4
--- /dev/null
+++ b/meta-yocto-bsp/wic/edgerouter.wks
@@ -0,0 +1,4 @@
+# short-description: Create SD card image for Edgerouter
+# long-description: Create a partitioned SD card image for MIPS64 Edgerouter reference hardware.
+part /boot --source bootimg-partition --ondisk sda --fstype=vfat --label boot --active --align 4 --size 16
+part / --source rootfs --ondisk sda --fstype=ext4 --label root --align 4
-- 
2.1.4


