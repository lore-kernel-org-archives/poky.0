Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 700DD4C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 14:02:50 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Dec 2010 12:02:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,189,1291622400"; d="scan'208";a="637616087"
Received: from unknown (HELO [10.255.14.44]) ([10.255.14.44])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2010 12:02:49 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 17 Dec 2010 14:02:37 -0600
Message-ID: <1292616157.2104.462.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 1/1] meta-crownbay: add a machine configuration that doesn't use EMGD graphics
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Dec 2010 20:02:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This adds a second machine to the meta-crownbay BSP that uses generic
vesa graphics instead of the Intel-proprietary straight 'crownbay'
version that does.

The name of the new machine is 'crownbay-noemgd'.

Though the graphics quality isn't as nice, the binaries for this
version can be distributed without any need for license click-throughs
or the manual step currently required for the EMGD version.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/layer.conf                      |    6 ++-
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |   45 ++++++++++++++++++++
 .../formfactor/crownbay-noemgd/machconfig          |    3 +
 .../xserver-xf86-config/crownbay-noemgd/xorg.conf  |   26 +++++++++++
 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    4 ++
 5 files changed, 83 insertions(+), 1 deletions(-)
 create mode 100644 meta-crownbay/conf/machine/crownbay-noemgd.conf
 create mode 100644 meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf

diff --git a/meta-crownbay/conf/layer.conf b/meta-crownbay/conf/layer.conf
index 52581e1..cee4ba2 100644
--- a/meta-crownbay/conf/layer.conf
+++ b/meta-crownbay/conf/layer.conf
@@ -5,6 +5,10 @@ BBPATH := "${BBPATH}:${LAYERDIR}"
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
-BBFILE_COLLECTIONS += "crownbay"
+BBFILE_COLLECTIONS_crownbay += "crownbay"
 BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
 BBFILE_PRIORITY_crownbay = "6"
+
+BBFILE_COLLECTIONS_crownbay-noemgd += "crownbay-noemgd"
+BBFILE_PATTERN_crownbay-noemgd := "^${LAYERDIR}/"
+BBFILE_PRIORITY_crownbay-noemgd = "6"
diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
new file mode 100644
index 0000000..535cf55
--- /dev/null
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -0,0 +1,45 @@
+#@TYPE: Machine
+#@NAME: crownbay-noemgd
+
+#@DESCRIPTION: Machine configuration for Crown Bay systems, without Intel-proprietary graphics bits
+# i.e. E660 + EG20T
+
+TARGET_ARCH = "i586"
+PACKAGE_EXTRA_ARCHS = "x86 atom"
+
+include conf/machine/include/tune-atom.inc
+
+BASE_PACKAGE_ARCH="atom"
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-wrs"
+PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
+PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
+XSERVER ?= "xserver-xf86-dri-lite \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           xf86-video-vesa"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+
+MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
+
+GUI_MACHINE_CLASS = "bigscreen"
+
+IMAGE_ROOTFS_SIZE_ext3 = "2000000"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
+
+SRCREV_machine_pn-linux-wrs_crownbay-noemgd = "f0afe10edaed24575eb115ad69c366fc24ea9380"
+SRCREV_meta_pn-linux-wrs = "2f315f96f26a93d22fe0fc524de629e7c46b8469"
diff --git a/meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig b/meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Generic VESA"
+    Driver	"vesa"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Generic VESA"
+    Monitor       "Generic Monitor"
+    DefaultDepth  24
+EndSection
+
+Section "ServerLayout"
+    Identifier     "Default Layout"
+    Screen         "Default Screen"
+EndSection
+
+Section "ServerFlags"
+    Option        "DontZap"  "0"
+    Option        "AutoAddDevices"  "False"
+EndSection
diff --git a/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
index 9709c36..aebe789 100644
--- a/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
+++ b/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
@@ -1,3 +1,7 @@
 FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
 COMPATIBLE_MACHINE_crownbay = "crownbay"
 WRMACHINE_crownbay  = "crownbay"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+WRMACHINE_crownbay-noemgd  = "crownbay"
-- 
1.7.0.4




