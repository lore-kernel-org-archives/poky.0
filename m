Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E58904C800BD
	for <poky@yoctoproject.org>; Thu, 10 Feb 2011 10:30:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Feb 2011 08:30:53 -0800
Message-Id: <0d30dc$l1h9tc@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,451,1291622400"; d="scan'208";a="706258871"
Received: from unknown (HELO localhost) ([10.255.14.114])
	by orsmga001.jf.intel.com with ESMTP; 10 Feb 2011 08:30:52 -0800
Old-Date: Thu, 10 Feb 2011 01:58:14 -0600
Date: Thu, 10 Feb 2011 10:30:40 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] meta-crownbay: apply init-live.sh coldplug udev trigger patch here instead
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
X-List-Received-Date: Thu, 10 Feb 2011 16:30:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

At the moment, we can't spin a new laverne release, so we need to
add it to the crownbay layer instead.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 ...01-init-live.sh-add-coldplug-udev-trigger.patch |   44 ++++++++++++++++++++
 .../initrdscripts/initramfs-live-boot_1.0.bbappend |    6 +++
 2 files changed, 50 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot/0001-init-live.sh-add-coldplug-udev-trigger.patch
 create mode 100644 meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot_1.0.bbappend

diff --git a/meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot/0001-init-live.sh-add-coldplug-udev-trigger.patch b/meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot/0001-init-live.sh-add-coldplug-udev-trigger.patch
new file mode 100644
index 0000000..5119b3f
--- /dev/null
+++ b/meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot/0001-init-live.sh-add-coldplug-udev-trigger.patch
@@ -0,0 +1,44 @@
+From 0b8fcb95dd4209d56e150d0b20133e728b22776c Mon Sep 17 00:00:00 2001
+From: Tom Zanussi <tom.zanussi@intel.com>
+Date: Mon, 7 Feb 2011 13:45:45 -0600
+Subject: [PATCH 1/2] init-live.sh: add 'coldplug' udev trigger
+
+Fixes [BUGID #693]
+
+The init-live.sh script starts udevd in init-live.sh:early_setup(),
+but doesn't account for the possibility that the root device may have
+already been registered by the kernel before udevd starts up.
+
+If the device is detected after udevd starts up, everything's fine -
+udevd gets the 'add' uevent for the device, the root image shows up at
+e.g. /media/sda/rootfs.img, and the boot continues.
+
+If however the device is detected before udevd starts up, udevd misses
+the 'add' uevent and the root image never shows up, causing it to stay
+in the 'waiting for removable media' loop forever.
+
+The 'udevadm trigger' command is meant to be used to avoid this
+situation, but init-live.sh doesn't use it.  Furthermore, since the
+default was changed in udev 152 from 'add' to 'change', the command
+needs to explicity name 'add' as the action.
+
+Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
+---
+ meta/recipes-core/initrdscripts/files/init-live.sh |    1 +
+ 1 files changed, 1 insertions(+), 0 deletions(-)
+
+diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
+index c96b1f4..f3e5145 100644
+--- a/init-live.sh
++++ b/init-live.sh
+@@ -11,6 +11,7 @@ early_setup() {
+     mount -t proc proc /proc
+     mount -t sysfs sysfs /sys
+     udevd --daemon
++    /sbin/udevadm trigger --action=add
+ }
+ 
+ read_args() {
+-- 
+1.7.0.4
+
diff --git a/meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot_1.0.bbappend b/meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot_1.0.bbappend
new file mode 100644
index 0000000..c5d929d
--- /dev/null
+++ b/meta-crownbay/recipes-core/initrdscripts/initramfs-live-boot_1.0.bbappend
@@ -0,0 +1,6 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+S = "${WORKDIR}"
+
+PR .= ".1"
+
+SRC_URI_append += " file://0001-init-live.sh-add-coldplug-udev-trigger.patch"
-- 
1.7.0.4


