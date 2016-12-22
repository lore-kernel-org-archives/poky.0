Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECDA5E00C98; Thu, 22 Dec 2016 12:27:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBCDBE00A4D
	for <poky@yoctoproject.org>; Thu, 22 Dec 2016 12:27:20 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2016 12:27:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,390,1477983600"; d="scan'208";a="45925496"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga005.fm.intel.com with ESMTP; 22 Dec 2016 12:27:19 -0800
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.38])
	by linux.intel.com (Postfix) with ESMTP id 657ED6A4080;
	Thu, 22 Dec 2016 12:26:29 -0800 (PST)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Thu, 22 Dec 2016 22:27:05 +0200
Message-Id: <1482438425-10932-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] mpc8315e-rdb.conf: produce wic images for MPC8315
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
X-List-Received-Date: Thu, 22 Dec 2016 20:27:24 -0000

Added wic images to the list of default image types for mpc8315e-rdb
machine. Configured wic sdimage-boot plugin to put u-boot.bin, kernel
and device tree on the first partition.

[YOCTO #8719]

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 99182dc..2e164ff 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -29,3 +29,7 @@ MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 IMAGE_FSTYPES ?= "jffs2 tar.bz2"
 JFFS2_ERASEBLOCK = "0x4000"
+
+IMAGE_FSTYPES += "wic"
+WKS_FILE ?= 'mpc8315e-rdb.wks'
+IMAGE_BOOT_FILES ?= "u-boot.bin uImage uImage-mpc8315erdb.dtb;dtb"
-- 
2.1.4


