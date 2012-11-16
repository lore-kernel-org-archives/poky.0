Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34A40E00498
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 03:36:47 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Nov 2012 03:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,264,1352102400"; d="scan'208";a="218672584"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 16 Nov 2012 03:36:46 -0800
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 3692F2C8001;
	Fri, 16 Nov 2012 03:36:45 -0800 (PST)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Fri, 16 Nov 2012 13:36:58 +0200
Message-Id: <1353065818-21168-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.7.11.7
Subject: [PATCH] yocto-bsp: update qemu machine.conf template
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
X-List-Received-Date: Fri, 16 Nov 2012 11:36:47 -0000

Building a qemu sato image with a MACHINE created by yocto-bsp fails because nothing RPROVIDES qemugl anymore so remove qemugl support from the template as well (drop the entire XSERVER assign because it's included from qemu.inc)

Also drop redundant glibc configure knobs (nptl and tls are no longer optional and they don't exist in conf/machine/qemux86* anyway).

This is basically a sync with latest commits on meta/conf/machine/qemux86*

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../substrate/target/arch/qemu/conf/machine/{{=machine}}.conf  | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
index d1f50c1..958d6da 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=machine}}.conf
@@ -38,17 +38,7 @@ require conf/machine/include/tune-mips32.inc
 MACHINE_FEATURES += "x86"
 KERNEL_IMAGETYPE = "bzImage"
 SERIAL_CONSOLE = "115200 ttyS0"
-# We bypass swrast but we need it to be present for X to load correctly
-XSERVER ?= "xserver-xorg \
-           mesa-dri-driver-swrast \
-           xf86-input-vmmouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-video-vmware \
-           qemugl"
 require conf/machine/include/qemu.inc
-GLIBC_ADDONS = "nptl"
-GLIBC_EXTRA_OECONF = "--with-tls"
 
 {{ if qemuarch == "arm": }}
 KERNEL_IMAGETYPE = "zImage"
-- 
1.7.11.7


