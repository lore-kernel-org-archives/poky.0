Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA04FE00C09; Tue,  5 Sep 2017 15:08:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02249E00B77
	for <poky@yoctoproject.org>; Tue,  5 Sep 2017 15:08:15 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP; 05 Sep 2017 15:08:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,481,1498546800"; d="scan'208";a="148493288"
Received: from yctb02.ostc.intel.com (HELO yctb02.otcr.jf.intel.com)
	([10.54.69.56])
	by fmsmga006.fm.intel.com with ESMTP; 05 Sep 2017 15:08:13 -0700
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue,  5 Sep 2017 15:08:12 -0700
Message-Id: <20170905220812.1852-1-alejandro.hernandez@linux.intel.com>
X-Mailer: git-send-email 2.12.3
Subject: [PATCH] qemu conf: Fix kernel module autoloading for uvesafb on genericx86
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
X-List-Received-Date: Tue, 05 Sep 2017 22:08:17 -0000

After commit e8b1c653946ef921b65d47e52aea0dc530ef4286, we started seeing
errors like the following during boot on genericx86 machines:

uvesafb: failed to execute /sbin/v86d
uvesafb: probe of uvesafb.0 failed with error -22
uvesafb: vbe_init() failed with -22
uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)

These were caused because the uvesa module was being loaded during boot,
when it is only meant to be loaded on qemu according to:
6af89812e8a9931ffed63768ed85367519bf7aef

Since genericx86-common.inc includes qemuboot-x86, the module also tries
to be loaded on genericx86 machines, this patch removes the instruction from
qemuboot-x86 and adds it in specific to both qemux86 machines confs so
it is correctly loaded only on those.

[YOCTO #11879]

Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
---
 meta/conf/machine/include/qemuboot-x86.inc | 2 --
 meta/conf/machine/qemux86-64.conf          | 3 +++
 meta/conf/machine/qemux86.conf             | 3 +++
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/meta/conf/machine/include/qemuboot-x86.inc b/meta/conf/machine/include/qemuboot-x86.inc
index 0596e2ed3fb..100d0ccfd1f 100644
--- a/meta/conf/machine/include/qemuboot-x86.inc
+++ b/meta/conf/machine/include/qemuboot-x86.inc
@@ -14,7 +14,5 @@ QB_KERNEL_CMDLINE_APPEND = "vga=0 uvesafb.mode_option=${UVESA_MODE} oprofile.tim
 # Add the 'virtio-rng-pci' device otherwise the guest may run out of entropy
 QB_OPT_APPEND = "-vga vmware -show-cursor -usb -device usb-tablet -device virtio-rng-pci"
 
-KERNEL_MODULE_AUTOLOAD += "uvesafb"
-KERNEL_MODULE_PROBECONF += "uvesafb"
 UVESA_MODE ?= "640x480-32"
 module_conf_uvesafb = "options uvesafb mode_option=${UVESA_MODE}"
diff --git a/meta/conf/machine/qemux86-64.conf b/meta/conf/machine/qemux86-64.conf
index ff6e5491bbc..a270d6698f3 100644
--- a/meta/conf/machine/qemux86-64.conf
+++ b/meta/conf/machine/qemux86-64.conf
@@ -29,5 +29,8 @@ MACHINE_FEATURES += "x86 pci"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "v86d"
 
+KERNEL_MODULE_AUTOLOAD += "uvesafb"
+KERNEL_MODULE_PROBECONF += "uvesafb"
+
 WKS_FILE ?= "directdisk.wks"
 do_image_wic[depends] += "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
diff --git a/meta/conf/machine/qemux86.conf b/meta/conf/machine/qemux86.conf
index f8b09c37f29..5c6539b95f3 100644
--- a/meta/conf/machine/qemux86.conf
+++ b/meta/conf/machine/qemux86.conf
@@ -28,5 +28,8 @@ MACHINE_FEATURES += "x86 pci"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "v86d"
 
+KERNEL_MODULE_AUTOLOAD += "uvesafb"
+KERNEL_MODULE_PROBECONF += "uvesafb"
+
 WKS_FILE ?= "directdisk.wks"
 do_image_wic[depends] += "syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
-- 
2.12.3


