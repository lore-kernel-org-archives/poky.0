Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E07C2E00CF5; Wed, 26 Oct 2016 02:15:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA443E00C17
	for <poky@yoctoproject.org>; Wed, 26 Oct 2016 02:15:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP; 26 Oct 2016 02:15:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,550,1473145200"; d="scan'208";a="1059318927"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2016 02:14:30 -0700
Received: from theory.fi.intel.com (theory.fi.intel.com [10.237.72.53])
	by linux.intel.com (Postfix) with ESMTP id 6D76A6A4006;
	Wed, 26 Oct 2016 02:13:55 -0700 (PDT)
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
To: poky@yoctoproject.org
Date: Wed, 26 Oct 2016 12:14:26 +0300
Message-Id: <1477473266-11264-1-git-send-email-jussi.kukkonen@intel.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCHv2] conf: Remove legacy X input drivers
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
X-List-Received-Date: Wed, 26 Oct 2016 09:15:19 -0000

xf86-input-libinput is RRECOMMENDed by xserver-xorg, these
legacy drivers are not needed.

Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
---

Changes since v1:
* Include scripts/lib/bsp changes in this patch (originally
  mistakenly sent as part of the oe-core patch)


 meta-yocto-bsp/conf/machine/beaglebone.conf                           | 4 +---
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                         | 1 -
 scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf   | 4 +---
 scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf  | 1 -
 .../lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf    | 1 -
 .../lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf   | 1 -
 scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf  | 3 ---
 7 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index c487bd8..7a19d1f 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -4,10 +4,8 @@
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-           xf86-input-evdev \
-           xf86-input-mouse \
            xf86-video-modesetting \
-           xf86-input-keyboard"
+           "
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
 
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index a2ff07c..99182dc 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -19,7 +19,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-            xf86-input-evdev \
             xf86-video-fbdev"
 
 UBOOT_ENTRYPOINT = "0x00000000"
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
index 588367a..624750c 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
@@ -8,10 +8,8 @@
 {{ if xserver == "y": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-           xf86-input-evdev \
-           xf86-input-mouse \
            xf86-video-fbdev \
-           xf86-input-keyboard"
+           "
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
 
diff --git a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf
index b319d62..37da253 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips/conf/machine/machine.conf
@@ -27,7 +27,6 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 {{ if xserver == "y": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-            xf86-input-evdev \
             xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
diff --git a/scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf
index 3afc5e0..a8eea2c 100644
--- a/scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/mips64/conf/machine/machine.conf
@@ -27,7 +27,6 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 {{ if xserver == "y": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-            xf86-input-evdev \
             xf86-video-fbdev"
 
 SERIAL_CONSOLE = "115200 ttyS0"
diff --git a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
index 583c5e4..352b972 100644
--- a/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/powerpc/conf/machine/machine.conf
@@ -71,7 +71,6 @@ PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 {{ if xserver == "y": }}
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-           xf86-input-evdev \
            xf86-video-fbdev"
 
 PREFERRED_VERSION_u-boot ?= "v2016.01%"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
index 67e1cbd..9188858 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/machine.conf
@@ -54,9 +54,6 @@ KERNEL_IMAGETYPE = "bzImage"
 SERIAL_CONSOLE = "115200 ttyS0"
 XSERVER = "xserver-xorg \
            ${@bb.utils.contains('DISTRO_FEATURES', 'opengl', 'mesa-driver-swrast', '', d)} \
-           xf86-input-vmmouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
            xf86-video-vmware"
 
 {{ if qemuarch == "arm": }}
-- 
2.1.4


