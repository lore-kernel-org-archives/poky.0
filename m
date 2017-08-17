Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35D38E00C1A; Wed, 16 Aug 2017 17:25:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB9B3E00726
	for <poky@yoctoproject.org>; Wed, 16 Aug 2017 17:25:42 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 16 Aug 2017 17:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,385,1498546800"; d="scan'208";a="140585826"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2017 17:25:41 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 16 Aug 2017 17:25:40 -0700
Message-Id: <20170817002540.27741-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Subject: [PATCH] genericx86-common.inc: Stop autoloading uvesa module at boot
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
X-List-Received-Date: Thu, 17 Aug 2017 00:25:43 -0000

After commit e8b1c653946ef921b65d47e52aea0dc530ef4286, we started seeing
errors like the following during boot:

uvesafb: failed to execute /sbin/v86d
uvesafb: probe of uvesafb.0 failed with error -22
uvesafb: vbe_init() failed with -22
uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)

These were caused because the uvesa module was being loaded during boot.

Since genericx86-common.inc includes qemuboot-x86, the module also tries
to be loaded on genericx86 MACHINES, this patch removes it when this is the
case, getting rid of the errors.

[YOCTO #11879]

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index e35685cb22b..1aabc4e8bad 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -15,6 +15,8 @@ XSERVER ?= "${XSERVER_X86_BASE} \
 
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware eee-acpi-scripts"
 
+KERNEL_MODULE_AUTOLOAD_remove = "uvesafb"
+
 GLIBC_ADDONS = "nptl"
 
 EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
@@ -23,3 +25,4 @@ IMAGE_FSTYPES += "wic wic.bmap"
 WKS_FILE ?= "genericx86.wks"
 do_image_wic[depends] += "gptfdisk-native:do_populate_sysroot"
 do_image_wic[recrdeptask] += "do_bootimg"
+
-- 
2.12.3


