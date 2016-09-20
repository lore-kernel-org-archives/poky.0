Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EAC5E00A7D; Tue, 20 Sep 2016 02:26:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7679BE00A61
	for <poky@yoctoproject.org>; Tue, 20 Sep 2016 02:26:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP; 20 Sep 2016 02:26:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,367,1470726000"; d="scan'208";a="1053735684"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2016 02:26:49 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.68])
	by linux.intel.com (Postfix) with ESMTP id D2E706A4006;
	Tue, 20 Sep 2016 02:26:23 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Sep 2016 12:15:59 +0300
Message-Id: <1474362959-2247-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] genericx86-common.inc: produce wic images
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
X-List-Received-Date: Tue, 20 Sep 2016 09:26:51 -0000

Added wic images to the list of default image types for genericx86
and genericx86-64 machines. This is a first step of using wic as a
recommended way of creating images for reference BSPs.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 16b689d..dda7d20 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -18,3 +18,7 @@ MACHINE_EXTRA_RRECOMMENDS += "linux-firmware eee-acpi-scripts"
 GLIBC_ADDONS = "nptl"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
+
+IMAGE_FSTYPES += "wic"
+WKS_FILE = "directdisk.wks"
+do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot syslinux-native:do_populate_sysroot syslinux:do_build"
-- 
2.1.4


