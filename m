Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CAD0E00726
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:21 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 09 Mar 2014 11:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,619,1389772800"; d="scan'208";a="416722794"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 09 Mar 2014 11:49:20 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id 9A0A46A4083
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:08 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Sun,  9 Mar 2014 20:49:17 +0200
Message-Id: <c99b473f9ae78337426f2bd2e3481f456d4192ef.1394390131.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <cover.1394390131.git.stefanx.stanacar@intel.com>
References: <cover.1394390131.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1394390131.git.stefanx.stanacar@intel.com>
References: <cover.1394390131.git.stefanx.stanacar@intel.com>
Subject: [RFC PATCH 2/4] meta-yocto-bsp: copy install scripts from meta (dummy commit)
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
X-List-Received-Date: Sun, 09 Mar 2014 18:49:22 -0000

These are the install files for a live, an exact copy of init-install.sh
and init-install-efi.sh from core. There are renamed here with -testfs.
This is just dummy commit, just to make it easier to see the diff
in the next commit.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../initrdscripts/files/init-install-efi-testfs.sh | 197 +++++++++++++++++++
 .../initrdscripts/files/init-install-testfs.sh     | 208 +++++++++++++++++++++
 2 files changed, 405 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh

diff --git a/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
new file mode 100644
index 0000000..ed3221b
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
@@ -0,0 +1,197 @@
+#!/bin/sh -e
+#
+# Copyright (c) 2012, Intel Corporation.
+# All rights reserved.
+#
+# install.sh [device_name] [rootfs_name]
+#
+
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+
+# We need 20 Mb for the boot partition
+boot_size=20
+
+# 5% for swap
+swap_ratio=5
+
+found="no"
+
+echo "Searching for a hard drive..."
+for device in 'hda' 'hdb' 'sda' 'sdb' 'mmcblk0' 'mmcblk1'
+do
+    if [ -e /sys/block/${device}/removable ]; then
+        if [ "$(cat /sys/block/${device}/removable)" = "0" ]; then
+            found="yes"
+
+            while true; do
+                # Try sleeping here to avoid getting kernel messages
+                # obscuring/confusing user
+                sleep 5
+                echo "Found drive at /dev/${device}. Do you want to install this image there ? [y/n]"
+                read answer
+                if [ "$answer" = "y" ] ; then
+                    break
+                fi
+
+                if [ "$answer" = "n" ] ; then
+                    found=no
+                    break
+                fi
+
+                echo "Please answer y or n"
+            done
+        fi
+    fi
+
+    if [ "$found" = "yes" ]; then
+        break;
+    fi
+
+done
+
+if [ "$found" = "no" ]; then
+    exit 1
+fi
+
+echo "Installing image on /dev/${device}"
+
+#
+# The udev automounter can cause pain here, kill it
+#
+rm -f /etc/udev/rules.d/automount.rules
+rm -f /etc/udev/scripts/mount*
+
+#
+# Unmount anything the automounter had mounted
+#
+umount /dev/${device}* 2> /dev/null || /bin/true
+
+mkdir -p /tmp
+cat /proc/mounts > /etc/mtab
+
+disk_size=$(parted /dev/${device} unit mb print | grep Disk | cut -d" " -f 3 | sed -e "s/MB//")
+
+swap_size=$((disk_size*swap_ratio/100))
+rootfs_size=$((disk_size-boot_size-swap_size))
+
+rootfs_start=$((boot_size))
+rootfs_end=$((rootfs_start+rootfs_size))
+swap_start=$((rootfs_end))
+
+# MMC devices are special in a couple of ways
+# 1) they use a partition prefix character 'p'
+# 2) they are detected asynchronously (need rootwait)
+rootwait=""
+part_prefix=""
+if [ ! "${device#mmcblk}" = "${device}" ]; then
+    part_prefix="p"
+    rootwait="rootwait"
+fi
+bootfs=/dev/${device}${part_prefix}1
+rootfs=/dev/${device}${part_prefix}2
+swap=/dev/${device}${part_prefix}3
+
+echo "*****************"
+echo "Boot partition size:   $boot_size MB ($bootfs)"
+echo "Rootfs partition size: $rootfs_size MB ($rootfs)"
+echo "Swap partition size:   $swap_size MB ($swap)"
+echo "*****************"
+echo "Deleting partition table on /dev/${device} ..."
+dd if=/dev/zero of=/dev/${device} bs=512 count=2
+
+echo "Creating new partition table on /dev/${device} ..."
+parted /dev/${device} mklabel gpt
+
+echo "Creating boot partition on $bootfs"
+parted /dev/${device} mkpart primary 0% $boot_size
+parted /dev/${device} set 1 boot on
+
+echo "Creating rootfs partition on $rootfs"
+parted /dev/${device} mkpart primary $rootfs_start $rootfs_end
+
+echo "Creating swap partition on $swap"
+parted /dev/${device} mkpart primary $swap_start 100%
+
+parted /dev/${device} print
+
+echo "Formatting $bootfs to vfat..."
+mkfs.vfat $bootfs
+
+echo "Formatting $rootfs to ext3..."
+mkfs.ext3 $rootfs
+
+echo "Formatting swap partition...($swap)"
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
+        echo "/dev/${device}" >> /ssd/etc/udev/mount.blacklist
+    fi
+fi
+
+umount /ssd
+umount /rootmnt
+
+echo "Preparing boot partition..."
+mount $bootfs /ssd
+
+EFIDIR="/ssd/EFI/BOOT"
+mkdir -p $EFIDIR
+cp /media/$1/vmlinuz /ssd
+# Copy the efi loader
+cp /media/$1/EFI/BOOT/*.efi $EFIDIR
+
+if [ -f /media/$1/EFI/BOOT/grub.cfg ]; then
+    GRUBCFG="$EFIDIR/grub.cfg"
+    cp /media/$1/EFI/BOOT/grub.cfg $GRUBCFG
+    # Update grub config for the installed image
+    # Delete the install entry
+    sed -i "/menuentry 'install'/,/^}/d" $GRUBCFG
+    # Delete the initrd lines
+    sed -i "/initrd /d" $GRUBCFG
+    # Delete any LABEL= strings
+    sed -i "s/ LABEL=[^ ]*/ /" $GRUBCFG
+    # Delete any root= strings
+    sed -i "s/ root=[^ ]*/ /" $GRUBCFG
+    # Add the root= and other standard boot options
+    sed -i "s@linux /vmlinuz *@linux /vmlinuz root=$rootfs rw $rootwait quiet @" $GRUBCFG
+fi
+
+if [ -d /media/$1/loader ]; then
+    GUMMIBOOT_CFGS="/ssd/loader/entries/*.conf"
+    # copy config files for gummiboot
+    cp -dr /media/$1/loader /ssd
+    # delete the install entry
+    rm -f /ssd/loader/entries/install.conf
+    # delete the initrd lines
+    sed -i "/initrd /d" $GUMMIBOOT_CFGS
+    # delete any LABEL= strings
+    sed -i "s/ LABEL=[^ ]*/ /" $GUMMIBOOT_CFGS
+    # delete any root= strings
+    sed -i "s/ root=[^ ]*/ /" $GUMMIBOOT_CFGS
+    # add the root= and other standard boot options
+    sed -i "s@options *@options root=$rootfs rw $rootwait quiet @" $GUMMIBOOT_CFGS
+fi
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
diff --git a/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
new file mode 100644
index 0000000..8e433d5
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
@@ -0,0 +1,208 @@
+#!/bin/sh -e
+#
+# Copyright (C) 2008-2011 Intel
+#
+# install.sh [device_name] [rootfs_name] [video_mode] [vga_mode]
+#
+
+PATH=/sbin:/bin:/usr/sbin:/usr/bin
+
+# We need 20 Mb for the boot partition
+boot_size=20
+
+# 5% for the swap
+swap_ratio=5
+
+# Get a list of hard drives
+hdnamelist=""
+live_dev_name=${1%%/*}
+
+echo "Searching for hard drives ..."
+
+for device in `ls /sys/block/`; do
+    case $device in
+	loop*)
+            # skip loop device
+	    ;;
+	ram*)
+            # skip ram device
+	    ;;
+	*)
+	    # skip the device LiveOS is on
+	    # Add valid hard drive name to the list
+	    if [ $device != $live_dev_name -a -e /dev/$device ]; then
+		hdnamelist="$hdnamelist $device"
+	    fi
+	    ;;
+    esac
+done
+
+TARGET_DEVICE_NAME=""
+for hdname in $hdnamelist; do
+    # Display found hard drives and their basic info
+    echo "-------------------------------"
+    echo /dev/$hdname
+    if [ -r /sys/block/$hdname/device/vendor ]; then
+	echo -n "VENDOR="
+	cat /sys/block/$hdname/device/vendor
+    fi
+    echo -n "MODEL="
+    cat /sys/block/$hdname/device/model
+    cat /sys/block/$hdname/device/uevent
+    echo
+    # Get user choice
+    while true; do
+	echo -n "Do you want to install this image there? [y/n] "
+	read answer
+	if [ "$answer" = "y" -o "$answer" = "n" ]; then
+	    break
+	fi
+	echo "Please answer y or n"
+    done
+    if [ "$answer" = "y" ]; then
+	TARGET_DEVICE_NAME=$hdname
+	break
+    fi
+done
+
+if [ -n "$TARGET_DEVICE_NAME" ]; then
+    echo "Installing image on /dev/$TARGET_DEVICE_NAME ..."
+else
+    echo "No hard drive selected. Installation aborted."
+    exit 1
+fi
+
+device=$TARGET_DEVICE_NAME
+
+#
+# The udev automounter can cause pain here, kill it
+#
+rm -f /etc/udev/rules.d/automount.rules
+rm -f /etc/udev/scripts/mount*
+
+#
+# Unmount anything the automounter had mounted
+#
+umount /dev/${device}* 2> /dev/null || /bin/true
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
+swap_size=$((disk_size*swap_ratio/100))
+rootfs_size=$((disk_size-boot_size-swap_size))
+
+rootfs_start=$((boot_size))
+rootfs_end=$((rootfs_start+rootfs_size))
+swap_start=$((rootfs_end))
+
+# MMC devices are special in a couple of ways
+# 1) they use a partition prefix character 'p'
+# 2) they are detected asynchronously (need rootwait)
+rootwait=""
+part_prefix=""
+if [ ! "${device#mmcblk}" = "${device}" ]; then
+	part_prefix="p"
+	rootwait="rootwait"
+fi
+bootfs=/dev/${device}${part_prefix}1
+rootfs=/dev/${device}${part_prefix}2
+swap=/dev/${device}${part_prefix}3
+
+echo "*****************"
+echo "Boot partition size:   $boot_size MB ($bootfs)"
+echo "Rootfs partition size: $rootfs_size MB ($rootfs)"
+echo "Swap partition size:   $swap_size MB ($swap)"
+echo "*****************"
+echo "Deleting partition table on /dev/${device} ..."
+dd if=/dev/zero of=/dev/${device} bs=512 count=2
+
+echo "Creating new partition table on /dev/${device} ..."
+parted /dev/${device} mklabel msdos
+
+echo "Creating boot partition on $bootfs"
+parted /dev/${device} mkpart primary 0% $boot_size
+
+echo "Creating rootfs partition on $rootfs"
+parted /dev/${device} mkpart primary $rootfs_start $rootfs_end
+
+echo "Creating swap partition on $swap"
+parted /dev/${device} mkpart primary $swap_start 100%
+
+parted /dev/${device} print
+
+echo "Formatting $bootfs to ext3..."
+mkfs.ext3 $bootfs
+
+echo "Formatting $rootfs to ext3..."
+mkfs.ext3 $rootfs
+
+echo "Formatting swap partition...($swap)"
+mkswap $swap
+
+mkdir /tgt_root
+mkdir /src_root
+mkdir -p /boot
+
+# Handling of the target root partition
+mount $rootfs /tgt_root
+mount -o rw,loop,noatime,nodiratime /media/$1/$2 /src_root
+echo "Copying rootfs files..."
+cp -a /src_root/* /tgt_root
+if [ -d /tgt_root/etc/ ] ; then
+    echo "$swap                swap             swap       defaults              0  0" >> /tgt_root/etc/fstab
+    echo "$bootfs              /boot            ext3       defaults              1  2" >> /tgt_root/etc/fstab
+    # We dont want udev to mount our root device while we're booting...
+    if [ -d /tgt_root/etc/udev/ ] ; then
+	echo "/dev/${device}" >> /tgt_root/etc/udev/mount.blacklist
+    fi
+fi
+umount /tgt_root
+umount /src_root
+
+# Handling of the target boot partition
+mount $bootfs /boot
+echo "Preparing boot partition..."
+if [ -f /etc/grub.d/40_custom ] ; then
+    echo "Preparing custom grub2 menu..."
+    GRUBCFG="/boot/grub/grub.cfg"
+    mkdir -p $(dirname $GRUBCFG)
+    cp /etc/grub.d/40_custom $GRUBCFG
+    sed -i "s@__ROOTFS__@$rootfs $rootwait@g" $GRUBCFG
+    sed -i "s/__VIDEO_MODE__/$3/g" $GRUBCFG
+    sed -i "s/__VGA_MODE__/$4/g" $GRUBCFG
+    sed -i "s/__CONSOLE__/$5/g" $GRUBCFG
+    sed -i "/#/d" $GRUBCFG
+    sed -i "/exec tail/d" $GRUBCFG
+    chmod 0444 $GRUBCFG
+fi
+grub-install /dev/${device}
+echo "(hd0) /dev/${device}" > /boot/grub/device.map
+
+# If grub.cfg doesn't exist, assume GRUB 0.97 and create a menu.lst
+if [ ! -f /boot/grub/grub.cfg ] ; then
+    echo "Preparing custom grub menu..."
+    echo "default 0" > /boot/grub/menu.lst
+    echo "timeout 30" >> /boot/grub/menu.lst
+    echo "title Live Boot/Install-Image" >> /boot/grub/menu.lst
+    echo "root  (hd0,0)" >> /boot/grub/menu.lst
+    echo "kernel /vmlinuz root=$rootfs rw $3 $4 quiet" >> /boot/grub/menu.lst
+fi
+
+cp /media/$1/vmlinuz /boot/
+
+umount /boot
+
+sync
+
+echo "Remove your installation media, and press ENTER"
+
+read enter
+
+echo "Rebooting..."
+reboot -f
-- 
1.8.5.3


