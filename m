Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73437E00C6E; Wed, 28 Sep 2016 02:40:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA59E00C45
	for <poky@yoctoproject.org>; Wed, 28 Sep 2016 02:39:58 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP; 28 Sep 2016 02:39:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,409,1470726000"; d="scan'208";a="14146683"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 28 Sep 2016 02:39:57 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.68])
	by linux.intel.com (Postfix) with ESMTP id 715006A4006;
	Wed, 28 Sep 2016 02:39:30 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 28 Sep 2016 12:29:02 +0300
Message-Id: <1475054942-11456-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1474529249-8248-1-git-send-email-ed.bartosh@linux.intel.com>
References: <1474529249-8248-1-git-send-email-ed.bartosh@linux.intel.com>
Subject: [PATCH v2] beaglebone.conf: produce wic images for Beaglebone
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
X-List-Received-Date: Wed, 28 Sep 2016 09:40:01 -0000

Added wic images to the list of default image types for Beaglebone
machine. Added kernel image and device tree packages to the image
to make it bootable. Added required wic dependencies.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 1b6c2dc..c487bd8 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -16,8 +16,11 @@ EXTRA_IMAGEDEPENDS += "u-boot"
 DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/tune-cortexa8.inc
 
-IMAGE_FSTYPES += "tar.bz2 jffs2"
+IMAGE_FSTYPES += "tar.bz2 jffs2 wic"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
+WKS_FILE = "sdimage-bootpart.wks"
+IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
+do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
 
 SERIAL_CONSOLE = "115200 ttyO0"
 
-- 
2.1.4


