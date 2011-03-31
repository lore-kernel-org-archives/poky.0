Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4629B4C8059A
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 19:42:13 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Mar 2011 17:42:12 -0700
Message-Id: <b9dded$ighv6b@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,271,1299484800"; d="scan'208";a="621346003"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by orsmga002.jf.intel.com with ESMTP; 30 Mar 2011 17:42:12 -0700
Old-Date: Wed, 30 Mar 2011 17:34:44 -0500
Date: Wed, 30 Mar 2011 19:41:53 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1] meta-fishriver: new layer for Fish River Island (Z530/EG20T) systems
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
X-List-Received-Date: Thu, 31 Mar 2011 00:42:13 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This layer provides support for Z530 + EG20T Intel systems.

Currently it supports only vesa graphics, which will be upgraded
shortly.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-fishriver/COPYING.MIT                         |   17 ++++
 meta-fishriver/README                              |   94 ++++++++++++++++++++
 meta-fishriver/conf/layer.conf                     |   10 ++
 meta-fishriver/conf/machine/fishriver.conf         |   46 ++++++++++
 .../formfactor/formfactor/fishriver/machconfig     |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../xserver-xf86-config/fishriver/xorg.conf        |   26 ++++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    4 +
 9 files changed, 206 insertions(+), 0 deletions(-)
 create mode 100644 meta-fishriver/COPYING.MIT
 create mode 100644 meta-fishriver/README
 create mode 100644 meta-fishriver/binary/.gitignore
 create mode 100644 meta-fishriver/conf/layer.conf
 create mode 100644 meta-fishriver/conf/machine/fishriver.conf
 create mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
 create mode 100644 meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
 create mode 100644 meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-fishriver/COPYING.MIT b/meta-fishriver/COPYING.MIT
new file mode 100644
index 0000000..fb950dc
--- /dev/null
+++ b/meta-fishriver/COPYING.MIT
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
diff --git a/meta-fishriver/README b/meta-fishriver/README
new file mode 100644
index 0000000..57b4926
--- /dev/null
+++ b/meta-fishriver/README
@@ -0,0 +1,94 @@
+This README file contains information on building the meta-fishriver
+BSP layer, and booting the images contained in the /binary directory.
+Please see the corresponding sections below for details.
+
+
+Table of Contents
+=================
+
+  I. Special notes on the meta-fishriver BSP layer
+ II. Building the meta-fishriver BSP layer
+III. Booting the images in /binary
+
+
+I. Special notes on the meta-fishriver BSP layer
+================================================
+
+The meta-fishriver layer currently and temporarily uses the crownbay
+kernel branch.  This will change once we have new patches and/or
+config changes for:
+
+- Zigbee
+- wifi
+- upstream gma500
+- EMGD?
+
+
+II. Building the meta-fishriver BSP layer
+=========================================
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
+at the top-level of your yocto build tree, you can build a fishriver
+image by adding the location of the meta-fishriver layer to
+bblayers.conf e.g.:
+
+  yocto/meta-intel/meta-fishriver \
+
+To enable the fishriver layer, add the fishriver MACHINE to local.conf:
+
+  MACHINE ?= "fishriver"
+
+You should then be able to build a fishriver image as such:
+
+  $ source poky-init-build-env
+  $ bitbake poky-image-sato-live
+
+At the end of a successful build, you should have a live image that
+you can boot from a USB flash drive (see instructions on how to do
+that below, in the section 'Booting the images from /binary').
+
+
+III. Booting the images in /binary
+==================================
+
+This BSP contains bootable live images, which can be used to directly
+boot Yocto off of a USB flash drive.
+
+Under Linux, insert a USB flash drive.  Assuming the USB flash drive
+takes device /dev/sdf, use dd to copy the live image to it.  For
+example:
+
+# dd if=poky-image-sato-live-fishriver-20101207053738.hddimg of=/dev/sdf
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
diff --git a/meta-fishriver/binary/.gitignore b/meta-fishriver/binary/.gitignore
new file mode 100644
index 0000000..e69de29
diff --git a/meta-fishriver/conf/layer.conf b/meta-fishriver/conf/layer.conf
new file mode 100644
index 0000000..595bbe3
--- /dev/null
+++ b/meta-fishriver/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS_fishriver += "fishriver"
+BBFILE_PATTERN_fishriver := "^${LAYERDIR}/"
+BBFILE_PRIORITY_fishriver = "6"
diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishriver/conf/machine/fishriver.conf
new file mode 100644
index 0000000..64c194b
--- /dev/null
+++ b/meta-fishriver/conf/machine/fishriver.conf
@@ -0,0 +1,46 @@
+#@TYPE: Machine
+#@NAME: fishriver
+
+#@DESCRIPTION: Machine configuration for Fish River Island systems
+# i.e. Z530/E660 + EG20T
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
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
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
+IMAGE_ROOTFS_SIZE_ext3 = "1000000"
+
+IMAGE_FSTYPES ?= "ext3 cpio.gz"
+
+GLIBC_ADDONS = "nptl"
+GLIBC_EXTRA_OECONF = "--with-tls"
+
+SRCREV_machine_pn-linux-yocto_fishriver ?= "86bd1278bbf11589d87639df17d2f5f42db97b60"
+SRCREV_meta_pn-linux-yocto_fishriver ?= "51c761795b078bf3c80104ed6e73b3d995067384"
diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig b/meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
new file mode 100644
index 0000000..ffce012
--- /dev/null
+++ b/meta-fishriver/recipes-bsp/formfactor/formfactor/fishriver/machconfig
@@ -0,0 +1,3 @@
+# Assume a USB mouse and keyboard are connected
+HAVE_TOUCHSCREEN=0
+HAVE_KEYBOARD=1
diff --git a/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
new file mode 100644
index 0000000..4a41d48
--- /dev/null
+++ b/meta-fishriver/recipes-bsp/formfactor/formfactor_0.0.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+ 
+PRINC = "1"
diff --git a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
new file mode 100644
index 0000000..da4fc3c
--- /dev/null
+++ b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config/fishriver/xorg.conf
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
diff --git a/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
new file mode 100644
index 0000000..4b8d0e6
--- /dev/null
+++ b/meta-fishriver/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -0,0 +1,3 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+
diff --git a/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
new file mode 100644
index 0000000..549d085
--- /dev/null
+++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+COMPATIBLE_MACHINE_fishriver = "fishriver"
+# zzzz /yocto/standard/crownbay->fishriver
+KMACHINE_fishriver  = "yocto/standard/crownbay"
-- 
1.7.0.4


