Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FAF5E0050B; Mon,  9 Jan 2017 13:56:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B880E00443
	for <poky@yoctoproject.org>; Mon,  9 Jan 2017 13:56:47 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 09 Jan 2017 13:56:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,341,1477983600"; d="scan'208";a="920655110"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga003.jf.intel.com with ESMTP; 09 Jan 2017 13:56:47 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 4D03B6A4080;
	Mon,  9 Jan 2017 13:55:53 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  9 Jan 2017 23:34:27 +0200
Message-Id: <1483997667-20711-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] genericx86: add genericx86.wks
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
X-List-Received-Date: Mon, 09 Jan 2017 21:56:50 -0000

Currently genericx86* machines use mkefidisk.wks from
scripts/lib/wic/canned-wks. It'd be easier to find this file
if it's name contains machine name and it's located in the same
layer.

Added genericx86.wks to meta-yocto-bsp/wic/ to make it independent
from changes in oe-core and easier to maintain.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 meta-yocto-bsp/wic/genericx86.wks                         | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/wic/genericx86.wks

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index eb6f0b9..cec7970 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -21,6 +21,6 @@ GLIBC_ADDONS = "nptl"
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 
 IMAGE_FSTYPES += "wic wic.bmap"
-WKS_FILE ?= "mkefidisk.wks"
+WKS_FILE ?= "genericx86.wks"
 do_image_wic[depends] += "gptfdisk-native:do_populate_sysroot"
 do_image_wic[recrdeptask] += "do_bootimg"
diff --git a/meta-yocto-bsp/wic/genericx86.wks b/meta-yocto-bsp/wic/genericx86.wks
new file mode 100644
index 0000000..dab719c
--- /dev/null
+++ b/meta-yocto-bsp/wic/genericx86.wks
@@ -0,0 +1,7 @@
+# short-description: Create an EFI disk image for genericx86*
+# long-description: Creates a partitioned EFI disk image for genericx86* machines
+part /boot --source bootimg-efi --sourceparams="loader=grub-efi" --ondisk sda --label msdos --active --align 1024
+part / --source rootfs --ondisk sda --fstype=ext4 --label platform --align 1024 --use-uuid
+part swap --ondisk sda --size 44 --label swap1 --fstype=swap
+
+bootloader --ptable gpt --timeout=5 --append="rootfstype=ext4 console=ttyS0,115200 console=tty0"
-- 
2.1.4


