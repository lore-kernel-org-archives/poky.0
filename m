Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18B9E4C8008E
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 22:35:57 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jan 2011 20:35:57 -0800
Message-Id: <849307$bcoftt@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,408,1291622400"; d="scan'208";a="382484419"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by azsmga001.ch.intel.com with ESMTP; 31 Jan 2011 20:35:56 -0800
Old-Date: Mon, 31 Jan 2011 01:05:15 -0600
Date: Mon, 31 Jan 2011 22:35:55 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 2/2] meta-sugarbay: new layer for Sandy Bridge/Cougar Point systems
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
X-List-Received-Date: Tue, 01 Feb 2011 04:35:58 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This layer provides support for Sandy Bridge + Cougar Point Intel
systems.

The 'Sugar Bay' platform consists of the Intel Sandy Bridge processor,
plus the Cougar Point PCH (Q67 Express or B65 Express chipsets).

This BSP assumes that the Sandy Bridge integrated graphics are being
used, and makes use of the grub2 and associated live-install changes
in meta-intel/common.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/COPYING.MIT                          |   17 ++++
 meta-sugarbay/README                               |   84 ++++++++++++++++++++
 meta-sugarbay/conf/layer.conf                      |   12 +++
 meta-sugarbay/conf/machine/sugarbay.conf           |   57 +++++++++++++
 .../formfactor/formfactor/sugarbay/machconfig      |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../xserver-xf86-config/sugarbay/xorg.conf         |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../xserver-xf86-dri-lite_1.9.3.bbappend           |    1 +
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 +
 10 files changed, 211 insertions(+), 0 deletions(-)
 create mode 100644 meta-sugarbay/COPYING.MIT
 create mode 100644 meta-sugarbay/README
 create mode 100644 meta-sugarbay/binary/.gitignore
 create mode 100644 meta-sugarbay/conf/layer.conf
 create mode 100644 meta-sugarbay/conf/machine/sugarbay.conf
 create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor/sugarbay/machconfig
 create mode 100644 meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config/sugarbay/xorg.conf
 create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
 create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-sugarbay/COPYING.MIT b/meta-sugarbay/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/meta-sugarbay/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy 
+of this software and associated documentation files (the "Software"), to deal 
+in the Software without restriction, including without limitation the rights 
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
+copies of the Software, and to permit persons to whom the Software is 
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in 
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN 
+THE SOFTWARE.
diff --git a/meta-sugarbay/README b/meta-sugarbay/README
new file mode 100644
index 0000000..bcc46c2
--- /dev/null
+++ b/meta-sugarbay/README
@@ -0,0 +1,84 @@
+This README file contains information on building the meta-sugarbay
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+The 'Sugar Bay' platform consists of the Intel Sandy Bridge processor,
+plus the Cougar Point PCH (Q67 Express or B65 Express chipsets).  This
+BSP assumes that the Sandy Bridge integrated graphics are being used.
+
+Table of Contents
+=================
+
+  I. Building the meta-sugarbay BSP layer
+ II. Special notes for building the meta-sugarbay BSP layer
+III. Booting the images in /binary
+
+
+I. Building the meta-sugarbay BSP layer
+=======================================
+
+For each BSP in the 'meta-intel' repository, there are multiple
+branches, one corresponding to each major release starting with
+'laverne' (0.90), in addition to the latest code which tracks the
+current master.
+
+In order to build an image with BSP support for a given release, you
+need to check out the 'meta-intel' branch corresponding to the release
+you're building against e.g. to build for laverne (0.90), check out
+the 'laverne' branch of both poky and 'meta-intel'.
+
+Having done that, and assuming you cloned the 'meta-intel' repository
+at the top-level of your yocto build tree, you can build a sugarbay
+image by adding the location of the meta-sugarbay layer to
+bblayers.conf e.g.:
+
+  yocto/meta-intel/meta-sugarbay \
+
+To enable the sugarbay layer, add the sugarbay MACHINE to local.conf:
+
+  MACHINE ?= "sugarbay"
+
+You should then be able to build a sugarbay image as such:
+
+  $ source poky-init-build-env
+  $ bitbake poky-image-sato-live
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+
+II. Booting the images in /binary
+=================================
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=poky-image-sato-live-sugarbay-20101207053738.hddimg of=/dev/sdf
+# sync
+# eject /dev/sdf
+
+This should give you a bootable USB flash device.  Insert the device
+into a bootable USB socket on the target, and power on.  This should
+result in a system booted to the Sato graphical desktop.
+
+If you want a terminal, use the arrows at the top of the UI to move to
+different pages of available applications, one of which is named
+'Terminal'.  Clicking that should give you a root terminal.
+
+If you want to ssh into the system, you can use the root terminal to
+ifconfig the IP address and use that to ssh in.  The root password is
+empty, so to log in type 'root' for the user name and hit 'Enter' at
+the Password prompt: and you should be in.
+
+----
+
+If you find you're getting corrupt images on the USB (it doesn't show
+the syslinux boot: prompt, or the boot: prompt contains strange
+characters), try doing this first:
+
+# dd if=/dev/zero of=/dev/sdf bs=1M count=512
diff --git a/meta-sugarbay/binary/.gitignore b/meta-sugarbay/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-sugarbay/conf/layer.conf b/meta-sugarbay/conf/layer.conf
new file mode 100644
index 0000000..e23d123
--- /dev/null
+++ b/meta-sugarbay/conf/layer.conf
@@ -0,0 +1,12 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend \
+	${LAYERDIR}/../common/recipes-*/*/*.bb \
+	${LAYERDIR}/../common/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS_sugarbay += "sugarbay"
+BBFILE_PATTERN_sugarbay := "^${LAYERDIR}/"
+BBFILE_PRIORITY_sugarbay = "6"
diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/conf/machine/sugarbay.conf
new file mode 100644
index 0000000..4d58d05
--- /dev/null
+++ b/meta-sugarbay/conf/machine/sugarbay.conf
@@ -0,0 +1,57 @@
+#@TYPE: Machine
+#@NAME: sugarbay
+
+#@DESCRIPTION: Machine configuration for Sugar Bay systems
+# i.e. Sandy Bridge + Cougar Point
+
+TARGET_ARCH = "x86_64"
+PACKAGE_EXTRA_ARCHS = "x86 snb"
+
+BASE_PACKAGE_ARCH="snb"
+
+MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
+                    acpi serial usbgadget"
+
+KERNEL_IMAGETYPE = "bzImage"
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+
+PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
+PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
+PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
+XSERVER ?= "xserver-xf86-dri-lite \
+           xf86-input-mouse \
+           xf86-input-keyboard \
+           xf86-input-evdev \
+           xf86-input-synaptics \
+           xf86-video-intel"
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
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
+
+TARGET_CC_ARCH = "-m64"
+
+PREFERRED_VERSION_xf86-video-intel ?= "2.14.0"
+PREFERRED_VERSION_mesa-dri ?= "7.10"
+PREFERRED_VERSION_libdrm ?= "2.4.23"
+PREFERRED_VERSION_cairo ?= "1.10.2"
+PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"
+
+PREFERRED_VERSION_grub ?= "1.98"
+
+#SRCREV_machine_pn-linux-yocto_sugarbay ?= "0431115c9d720fee5bb105f6a7411efb4f851d26"
+#SRCREV_meta_pn-linux-yocto_sugarbay ?= "39b796c508a80dcab6b4511b46183d4dfee6284d"
diff --git a/meta-sugarbay/recipes-bsp/formfactor/formfactor/sugarbay/machconfig b/meta-sugarbay/recipes-bsp/formfactor/formfactor/sugarbay/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-sugarbay/recipes-bsp/formfactor/formfactor/sugarbay/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..4a41d48
--- /dev/null
+++ b/meta-sugarbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+ 
+PRINC = "1"
diff --git a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config/sugarbay/xorg.conf b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config/sugarbay/xorg.conf
new file mode 100644
index 0000000..96b94b4
--- /dev/null
+++ b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config/sugarbay/xorg.conf
@@ -0,0 +1,26 @@
+Section "Device"
+    Identifier	"Intel Graphics Driver"
+    Driver	"intel"
+EndSection
+
+Section "Monitor"
+    Identifier    "Generic Monitor"
+    Option        "DPMS"
+EndSection
+
+Section "Screen"
+    Identifier    "Default Screen"
+    Device	  "Intel Graphics Driver"
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
diff --git a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
new file mode 100644
index 0000000..b2808ef
--- /dev/null
+++ b/meta-sugarbay/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF += "--enable-dga"
diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
new file mode 100644
index 0000000..07fd27b
--- /dev/null
+++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -0,0 +1,5 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
+COMPATIBLE_MACHINE_sugarbay = "sugarbay"
+KMACHINE_sugarbay  = "yocto/standard/sugarbay"
+
-- 
1.7.0.4


