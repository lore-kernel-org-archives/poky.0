Return-Path: <denis@denix.org>
Received: from vms173023pub.verizon.net (vms173023pub.verizon.net
	[206.46.173.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C057E00B8B
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 12:21:16 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173023.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0N3200I345RF7QF0@vms173023.mailsrvcs.net> for
	poky@yoctoproject.org; Wed, 26 Mar 2014 14:21:16 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id CBFD7201CF; Wed,
	26 Mar 2014 15:21:15 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: poky@yoctoproject.org
Date: Wed, 26 Mar 2014 15:21:10 -0400
Message-id: <1395861670-20330-1-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.8.3.2
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [PATCH] beaglebone: add OE machine definition for use with linux-yocto kernels
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
X-List-Received-Date: Wed, 26 Mar 2014 19:21:16 -0000

From: Denys Dmytriyenko <denys@ti.com>

Kernel support is now in linux-yocto-dev and will be moved to a versioned
recipe once 3.14 is released.

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf        | 37 ++++++++++++++++++++++
 .../recipes-kernel/linux/linux-yocto-dev.bbappend  |  3 ++
 2 files changed, 40 insertions(+)
 create mode 100644 meta-yocto-bsp/conf/machine/beaglebone.conf
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
new file mode 100644
index 0000000..0765b33
--- /dev/null
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -0,0 +1,37 @@
+#@TYPE: Machine
+#@NAME: Beaglebone machine
+#@DESCRIPTION: Machine configuration for http://beagleboard.org/bone and http://beagleboard.org/black boards
+
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
+           xf86-input-evdev \
+           xf86-input-mouse \
+           xf86-video-omapfb \
+           xf86-input-keyboard"
+
+# Ship all kernel modules by default
+MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
+
+EXTRA_IMAGEDEPENDS += "u-boot"
+
+DEFAULTTUNE ?= "cortexa8hf-neon"
+include conf/machine/include/tune-cortexa8.inc
+
+IMAGE_FSTYPES += "tar.bz2 jffs2"
+EXTRA_IMAGECMD_jffs2 = "-lnp "
+
+SERIAL_CONSOLE = "115200 ttyO2"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-dev"
+PREFERRED_VERSION_linux-yocto-dev ?= "3.14%"
+
+KERNEL_IMAGETYPE = "zImage"
+KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
+
+SPL_BINARY = "MLO"
+UBOOT_SUFFIX = "img"
+UBOOT_MACHINE = "am335_evm_config"
+UBOOT_ENTRYPOINT = "0x80008000"
+UBOOT_LOADADDRESS = "0x80008000"
+
+MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
new file mode 100644
index 0000000..6cb7e55
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -0,0 +1,3 @@
+KBRANCH_beaglebone = "standard/beaglebone"
+
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
-- 
1.8.3.2


