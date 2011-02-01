Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A77B4C8008E
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 22:35:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 20:35:56 -0800
Message-Id: <1bdc18$jerl8m@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,408,1291622400"; d="scan'208";a="653120795"
Received: from unknown (HELO localhost) ([10.255.14.127])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 20:35:55 -0800
Old-Date: Mon, 31 Jan 2011 00:07:54 -0600
Date: Mon, 31 Jan 2011 22:35:53 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/2] meta-intel: add a /common dir with grub2/live-install changes
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
X-List-Received-Date: Tue, 01 Feb 2011 04:35:56 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a /common dir to contain code shared by multiple BSPs in the
meta-intel repo, along with a couple recipes to live there
temporarily.

In this case, there are two BSPs that need to share the common grub2
and associated initramfs-live-install changes (sugarbay and
jasperforest).

The grub2 and associated initramfs-live-install changes will soon be
submitted to the main poky repo, but for now it makes more sense to
keep them here - they're needed for live-install of the two BSPs
mentioned, but they contain a couple hacks that need to be addressed
and are untested with anything else.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 common/recipes-bsp/grub/grub-1.98/40_custom        |    9 +
 .../grub/grub-1.98/grub-install.in.patch           |   13 ++
 .../grub/grub-1.98/uninit-shdr-fix.patch           |   31 ++++
 common/recipes-bsp/grub/grub_1.98.bb               |   45 +++++
 .../initramfs-live-install/init-install.sh         |  188 ++++++++++++++++++++
 .../initramfs-live-install_1.0.bbappend            |    2 +
 6 files changed, 288 insertions(+), 0 deletions(-)
 create mode 100755 common/recipes-bsp/grub/grub-1.98/40_custom
 create mode 100644 common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
 create mode 100644 common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
 create mode 100644 common/recipes-bsp/grub/grub_1.98.bb
 create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
 create mode 100644 common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend

diff --git a/common/recipes-bsp/grub/grub-1.98/40_custom b/common/recipes-bsp/grub/grub-1.98/40_custom
new file mode 100755
index 0000000..30dad39
--- /dev/null
+++ b/common/recipes-bsp/grub/grub-1.98/40_custom
@@ -0,0 +1,9 @@
+#!/bin/sh
+exec tail -n +3 $0
+# This file provides an easy way to add custom menu entries.  Simply type the
+# menu entries you want to add after this comment.  Be careful not to change
+# the 'exec tail' line above.
+menuentry "Yocto Linux" {
+    set root=(hd0,1)
+    linux /boot/vmlinuz root=__ROOTFS__ rw __VIDEO_MODE__ __VGA_MODE__ quiet
+}
diff --git a/common/recipes-bsp/grub/grub-1.98/grub-install.in.patch b/common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
new file mode 100644
index 0000000..ac96419
--- /dev/null
+++ b/common/recipes-bsp/grub/grub-1.98/grub-install.in.patch
@@ -0,0 +1,13 @@
+Index: grub-1.98/util/grub-install.in
+===================================================================
+--- grub-1.98.orig/util/grub-install.in	2011-01-25 23:47:05.587521825 -0600
++++ grub-1.98/util/grub-install.in	2011-01-25 23:47:23.867521822 -0600
+@@ -306,7 +306,7 @@
+ 
+ if [ "x${devabstraction_module}" = "x" ] ; then
+     if [ x"${install_device}" != x ]; then
+-      if echo "${install_device}" | grep -qx "(.*)" ; then
++      if echo "${install_device}" | grep -q "(.*)" ; then
+         install_drive="${install_device}"
+       else
+         install_drive="`$grub_probe --target=drive --device ${install_device}`"
diff --git a/common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch b/common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
new file mode 100644
index 0000000..67af594
--- /dev/null
+++ b/common/recipes-bsp/grub/grub-1.98/uninit-shdr-fix.patch
@@ -0,0 +1,31 @@
+Index: grub-1.98/loader/i386/bsdXX.c
+===================================================================
+--- grub-1.98.orig/loader/i386/bsdXX.c	2011-01-25 00:12:14.967535179 -0600
++++ grub-1.98/loader/i386/bsdXX.c	2011-01-25 00:13:16.387535169 -0600
+@@ -80,7 +80,7 @@
+ {
+   Elf_Ehdr e;
+   Elf_Shdr *s;
+-  char *shdr;
++  char *shdr = NULL;
+   grub_addr_t curload, module;
+   grub_err_t err;
+ 
+@@ -148,7 +148,7 @@
+ {
+   Elf_Ehdr e;
+   Elf_Shdr *s;
+-  char *shdr;
++  char *shdr = NULL;
+   grub_addr_t curload, module;
+   grub_err_t err;
+ 
+@@ -223,7 +223,7 @@
+   grub_err_t err;
+   Elf_Ehdr e;
+   Elf_Shdr *s;
+-  char *shdr;
++  char *shdr = NULL;
+   unsigned symoff, stroff, symsize, strsize;
+   grub_addr_t curload;
+   grub_freebsd_addr_t symstart, symend, symentsize, dynamic;
diff --git a/common/recipes-bsp/grub/grub_1.98.bb b/common/recipes-bsp/grub/grub_1.98.bb
new file mode 100644
index 0000000..b9d04fc
--- /dev/null
+++ b/common/recipes-bsp/grub/grub_1.98.bb
@@ -0,0 +1,45 @@
+SUMMARY = "GRUB2 is the next-generation GRand Unified Bootloader"
+
+DESCRIPTION = "GRUB2 is the next generaion of a GPLed bootloader \
+intended to unify bootloading across x86 operating systems. In \
+addition to loading the Linux kernel, it implements the Multiboot \
+standard, which allows for flexible loading of multiple boot images."
+
+HOMEPAGE = "http://www.gnu.org/software/grub/"
+SECTION = "bootloaders"
+PRIORITY = "optional"
+
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
+
+RDEPENDS = "diffutils"
+PR = "r0"
+
+SRC_URI = "ftp://alpha.gnu.org/gnu/grub/grub-${PV}.tar.gz \
+          file://uninit-shdr-fix.patch;apply=yes \
+          file://grub-install.in.patch;apply=yes \
+          file://40_custom"
+
+inherit autotools
+inherit gettext
+
+EXTRA_OECONF = "--with-platform=pc --target=i386"
+
+do_configure() {
+    oe_runconf
+}
+
+python __anonymous () {
+    import re
+    host = bb.data.getVar('HOST_SYS', d, 1)
+    if not re.match('x86.64.*-linux', host):
+        raise bb.parse.SkipPackage("incompatible with host %s" % host)
+}
+
+do_install_append () {
+    install -m 0755 ${WORKDIR}/40_custom ${D}${sysconfdir}/grub.d/40_custom
+}
+
+FILES_${PN}-doc = "${datadir}"
+FILES_${PN} = "/usr /etc"
+
diff --git a/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh b/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
new file mode 100644
index 0000000..7f2ea7f
--- /dev/null
+++ b/common/recipes-core/initrdscripts/initramfs-live-install/init-install.sh
@@ -0,0 +1,188 @@
+#!/bin/sh -e
+#
+# Copyright (C) 2008 Intel
+#
+# install.sh [device_name] [rootfs_name] [video_mode] [vga_mode]
+#
+
+# We need 20 Mb for the boot partition
+boot_size=20
+
+# 5% for the swap
+swap_ratio=5
+
+found="no"
+
+echo "Searching for a hard drive..."
+for device in 'hda' 'hdb' 'sda' 'sdb'
+  do
+  if [ -e /sys/block/${device}/removable ]; then
+      if [ "$(cat /sys/block/${device}/removable)" = "0" ]; then
+	  found="yes"
+
+	  while true; do
+	      echo "Found drive at /dev/${device}. Do you want to install poky there ? [y/n]"
+	      read answer
+	      if [ "$answer" = "y" ] ; then
+		  break
+	      fi
+	  
+	      if [ "$answer" = "n" ] ; then
+		  found=no
+		  break
+	      fi
+
+	      echo "Please answer by y or n"
+	  done
+      fi
+  fi
+
+  if [ "$found" = "yes" ]; then
+      break;
+  fi
+
+done
+
+if [ "$found" = "no" ]; then
+      exit 1      
+fi
+
+echo "Installing image on /dev/${device}"
+
+#
+# The udev automounter can cause pain here, kill it
+#
+rm -f /etc/udev/scripts/mount*
+
+#
+# Unmount anything the automounter had mounted
+#
+umount /dev/${device} 2> /dev/null || /bin/true
+umount /dev/${device}1 2> /dev/null || /bin/true
+umount /dev/${device}2 2> /dev/null || /bin/true
+umount /dev/${device}3 2> /dev/null || /bin/true
+umount /dev/${device}4 2> /dev/null || /bin/true
+umount /dev/${device}5 2> /dev/null || /bin/true
+umount /dev/${device}6 2> /dev/null || /bin/true
+
+if [ ! -b /dev/sda ] ; then
+    mknod /dev/sda b 8 0
+fi
+
+if [ ! -b /dev/sdb ] ; then
+    mknod /dev/sdb b 8 16
+fi
+
+if [ ! -b /dev/loop0 ] ; then
+    mknod /dev/loop0 b 7 0
+fi
+
+mkdir -p /tmp
+cat /proc/mounts > /etc/mtab
+
+disk_size=$(parted /dev/${device} unit mb print | grep Disk | cut -d" " -f 3 | sed -e "s/MB//")
+
+swap_size=$((disk_size*5/100))
+rootfs_size=$((disk_size-boot_size-swap_size))
+
+rootfs_start=$((boot_size + 1))
+rootfs_end=$((rootfs_start+rootfs_size))
+swap_start=$((rootfs_end+1))
+
+bootfs=/dev/${device}1
+rootfs=/dev/${device}2
+swap=/dev/${device}3
+
+echo "*****************"
+echo "Boot partition size:   $boot_size MB (/dev/${device}1)"
+echo "Rootfs partition size: $rootfs_size MB (/dev/${device}2)"
+echo "Swap partition size:   $swap_size MB (/dev/${device}3)"
+echo "*****************"
+echo "Deleting partition table on /dev/${device} ..."
+dd if=/dev/zero of=/dev/${device} bs=512 count=2
+
+echo "Creating new partition table on /dev/${device} ..."
+parted /dev/${device} mklabel msdos
+
+echo "Creating boot partition on /dev/${device}1"
+parted /dev/${device} mkpartfs primary ext2 0 $boot_size
+
+echo "Creating rootfs partition on /dev/${device}2"
+parted /dev/${device} mkpartfs primary ext2 $rootfs_start $rootfs_end 
+
+echo "Creating swap partition on /dev/${device}3"
+parted /dev/${device} mkpartfs primary linux-swap $swap_start $disk_size
+
+parted /dev/${device} print
+
+echo "Formatting /dev/${device}1 to ext2..."
+mkfs.ext3 $bootfs
+
+echo "Formatting /dev/${device}2 to ext3..."
+mkfs.ext3 $rootfs
+
+echo "Formatting swap partition...(/dev/${device}3)"
+mkswap $swap
+
+mkdir /ssd
+mkdir /rootmnt
+mkdir /bootmnt
+
+mount $rootfs /ssd
+mount -o rw,loop,noatime,nodiratime /media/$1/$2 /rootmnt
+
+echo "Copying rootfs files..."
+cp -a /rootmnt/* /ssd
+
+if [ -d /ssd/etc/ ] ; then
+    echo "$swap                swap             swap       defaults              0  0" >> /ssd/etc/fstab
+
+    # We dont want udev to mount our root device while we're booting...
+    if [ -d /ssd/etc/udev/ ] ; then
+	echo "/dev/${device}" >> /ssd/etc/udev/mount.blacklist
+    fi
+fi
+
+if [ -f /ssd/etc/grub.d/40_custom ] ; then
+    sed -i "s@__ROOTFS__@$rootfs@g" /ssd/etc/grub.d/40_custom
+    sed -i "s/__VIDEO_MODE__/$3/g" /ssd/etc/grub.d/40_custom
+    sed -i "s/__VGA_MODE__/$4/g" /ssd/etc/grub.d/40_custom
+    mount $bootfs /bootmnt
+    cp /ssd/etc/grub.d/40_custom /bootmnt/40_custom
+    umount /bootmnt
+    force="--force"
+fi
+
+umount /ssd
+umount /rootmnt
+
+echo "Preparing boot partition..."
+mount $bootfs /ssd
+grub-install $force --root-directory=/ssd /dev/${device}
+
+echo "(hd0) /dev/${device}" > /ssd/boot/grub/device.map
+
+if [ -f /ssd/40_custom ] ; then
+    mv /ssd/40_custom /ssd/boot/grub/grub.cfg
+    sed -i "/#/d" /ssd/boot/grub/grub.cfg
+    sed -i "/exec tail/d" /ssd/boot/grub/grub.cfg
+    chmod 0444 /ssd/boot/grub/grub.cfg
+else
+    echo "default 0" > /ssd/boot/grub/menu.lst
+    echo "timeout 30" >> /ssd/boot/grub/menu.lst
+    echo "title Poky-Netbook" >> /ssd/boot/grub/menu.lst
+    echo "root (hd0,1)" >> /ssd/boot/grub/menu.lst
+    echo "kernel /boot/vmlinuz root=$rootfs rw $3 $4 quiet" >> /ssd/boot/grub/menu.lst
+fi
+
+cp /media/$1/vmlinuz /ssd/boot/
+
+umount /ssd
+sync
+
+echo "Remove your installation media, and press ENTER"
+
+read enter
+
+echo "Rebooting..."
+reboot -f
diff --git a/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend b/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
new file mode 100644
index 0000000..d3420e0
--- /dev/null
+++ b/common/recipes-core/initrdscripts/initramfs-live-install_1.0.bbappend
@@ -0,0 +1,2 @@
+THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
+FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-- 
1.7.0.4


