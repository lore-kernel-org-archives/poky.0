Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A702E00B9E; Tue, 15 Dec 2015 10:17:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C845DE0078A
	for <poky@yoctoproject.org>; Tue, 15 Dec 2015 10:17:42 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2015 10:17:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,433,1444719600"; d="scan'208";a="874242132"
Received: from chang-s2600cp.jf.intel.com ([10.54.31.69])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2015 10:17:41 -0800
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 15 Dec 2015 10:17:42 -0800
Message-Id: <1450203462-175537-1-git-send-email-jianxun.zhang@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [PATCH] Remove uvesafb (v86d) from generic x86 features
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
X-List-Received-Date: Tue, 15 Dec 2015 18:17:44 -0000

When uvesafb is automatically loaded during boot and FW doesn't
support legacy video bios and frame buffer, its user space helper
will throw error messages in kernel log:

[6.843790] uvesafb: Getting VBE info block failed (eax=0x4f00, err=1)
[6.843864] uvesafb: vbe_init() failed with -22
[6.843916] uvesafb: probe of uvesafb.0 failed with error -22

Assuming most x86 boards today don't really rely on this module, this
change simply removes it from the common feature list to get rid of
these harmless messages.

[YOCTO #6584]

Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 7c10b56..1588556 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -13,7 +13,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
             ${XSERVER_X86_MODESETTING} \
            "
 
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware v86d eee-acpi-scripts"
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware eee-acpi-scripts"
 
 GLIBC_ADDONS = "nptl"
 
-- 
1.9.1


