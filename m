Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62C2AE009FA; Mon, 10 Oct 2016 08:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0157AE007B7
	for <poky@yoctoproject.org>; Mon, 10 Oct 2016 08:09:15 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 10 Oct 2016 08:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,324,1473145200"; d="scan'208";a="18116874"
Received: from linux.intel.com ([10.54.29.200])
	by orsmga005.jf.intel.com with ESMTP; 10 Oct 2016 08:09:14 -0700
Received: from vmed.fi.intel.com (vmed.fi.intel.com [10.237.72.68])
	by linux.intel.com (Postfix) with ESMTP id 6B7016A4006;
	Mon, 10 Oct 2016 08:08:43 -0700 (PDT)
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 10 Oct 2016 17:43:50 +0300
Message-Id: <1476110630-18460-1-git-send-email-ed.bartosh@linux.intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] genericx86-common.inc: add dependency do_image_wic -> do_bootimg
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
X-List-Received-Date: Mon, 10 Oct 2016 15:09:17 -0000

do_image_wic depends on do_bootimg on genericx86 machines as it
copies files from hddimg/EFI/BOOT directory to boot partition.

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 7d3b93f..2e59a95 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -23,3 +23,4 @@ EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
 IMAGE_FSTYPES += "wic"
 WKS_FILE ?= "mkefidisk.wks"
 do_image_wic[depends] += "gptfdisk-native:do_populate_sysroot"
+do_image_wic[recrdeptask] += "do_bootimg"
-- 
2.1.4


