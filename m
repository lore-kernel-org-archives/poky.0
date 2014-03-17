Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A6BE00B21
	for <poky@yoctoproject.org>; Mon, 17 Mar 2014 08:42:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Mar 2014 08:37:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,670,1389772800"; d="scan'208";a="474198630"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 17 Mar 2014 08:42:08 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.60])
	by linux.intel.com (Postfix) with ESMTP id A39886A4087
	for <poky@yoctoproject.org>; Mon, 17 Mar 2014 08:41:55 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Mon, 17 Mar 2014 17:42:15 +0200
Message-Id: <6579b27849485055d3dc440ee65624b7ca215ba9.1395069742.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <cover.1395069742.git.stefanx.stanacar@intel.com>
References: <cover.1395069742.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1395069742.git.stefanx.stanacar@intel.com>
References: <cover.1395069742.git.stefanx.stanacar@intel.com>
Subject: [RFC PATCH v2 2/3] meta-yocto-bsp: add master image for testing purposes
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
X-List-Received-Date: Mon, 17 Mar 2014 15:42:10 -0000

Custom recipe with custom initramfs and installers.
We need a master image running on the target hardware, that should be a
known good build, with a set of utilities installed so that we use it
to deploy the images under test.
This core-image-testmaster recipe isn't a requirement per se, any image can
be used as long as the required conditions are met. The test code assumes:
 - that the device has a second rootfs labeled as testrootfs
 - it has a properly configured bootloader entry for the second kernel and rootfs
 - the master image has a /etc/masterimage file so it can differentiate between master
and test images
 - the master image has tar, mount, bash (basically the normal linux utilities not the busybox
ones)
This recipes adds much more (python and parted aren't actually required, it's just
future proof stuff)

The install scripts are similar to the default ones, but:
 - custom partitioning, replaces the swap partiton with a second root filesystem
 - adds labels to the partitions
 - preconfigures a boot loader entry for the second
Other arches not using installers would simply deploy the image as they do,
they just need to follow the same schema.

[YOCTO #5614]

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../images/core-image-testmaster-initramfs.bb      | 20 ++++++++++++
 .../recipes-core/images/core-image-testmaster.bb   | 15 +++++++++
 .../initrdscripts/files/init-install-efi-testfs.sh | 36 ++++++++++++----------
 .../initrdscripts/files/init-install-testfs.sh     | 33 +++++++++++---------
 .../initramfs-live-install-efi-testfs_1.0.bb       | 20 ++++++++++++
 .../initramfs-live-install-testfs_1.0.bb           | 20 ++++++++++++
 6 files changed, 112 insertions(+), 32 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-testmaster-initramfs.bb
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-testmaster.bb
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-efi-testfs_1.0.bb
 create mode 100644 meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-testfs_1.0.bb

diff --git a/meta-yocto-bsp/recipes-core/images/core-image-testmaster-initramfs.bb b/meta-yocto-bsp/recipes-core/images/core-image-testmaster-initramfs.bb
new file mode 100644
index 0000000..f4de80a
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/images/core-image-testmaster-initramfs.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "Small image capable of booting a device. The kernel includes \
+the Minimal RAM-based Initial Root Filesystem (initramfs), which finds the \
+first 'init' program more efficiently."
+
+PACKAGE_INSTALL = "initramfs-live-boot initramfs-live-install-testfs initramfs-live-install-efi-testfs busybox udev base-passwd ${ROOTFS_BOOTSTRAP_INSTALL}"
+
+# Do not pollute the initrd image with rootfs features
+IMAGE_FEATURES = ""
+
+export IMAGE_BASENAME = "core-image-testmaster-initramfs"
+IMAGE_LINGUAS = ""
+
+LICENSE = "MIT"
+
+IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}"
+inherit core-image
+
+IMAGE_ROOTFS_SIZE = "8192"
+
+BAD_RECOMMENDATIONS += "busybox-syslog"
diff --git a/meta-yocto-bsp/recipes-core/images/core-image-testmaster.bb b/meta-yocto-bsp/recipes-core/images/core-image-testmaster.bb
new file mode 100644
index 0000000..e7f3cc4
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/images/core-image-testmaster.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "A master image to be deployed on a target useful for testing other images"
+
+IMAGE_FEATURES += "ssh-server-openssh package-management"
+
+inherit core-image
+
+IMAGE_INSTALL += "\
+    packagegroup-core-full-cmdline \
+    python-modules \
+    python-misc \
+    e2fsprogs-mke2fs \
+    parted \
+    "
+INITRD_IMAGE = "core-image-testmaster-initramfs"
+
diff --git a/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
index ed3221b..2fea761 100644
--- a/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
+++ b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-efi-testfs.sh
@@ -8,11 +8,11 @@
 
 PATH=/sbin:/bin:/usr/sbin:/usr/bin
 
-# We need 20 Mb for the boot partition
-boot_size=20
+# We need 200 Mb for the boot partition
+boot_size=200
 
-# 5% for swap
-swap_ratio=5
+# 50% for the second rootfs
+testfs_ratio=50
 
 found="no"
 
@@ -71,12 +71,12 @@ cat /proc/mounts > /etc/mtab
 
 disk_size=$(parted /dev/${device} unit mb print | grep Disk | cut -d" " -f 3 | sed -e "s/MB//")
 
-swap_size=$((disk_size*swap_ratio/100))
-rootfs_size=$((disk_size-boot_size-swap_size))
+testfs_size=$((disk_size*testfs_ratio/100))
+rootfs_size=$((disk_size-boot_size-testfs_size))
 
 rootfs_start=$((boot_size))
 rootfs_end=$((rootfs_start+rootfs_size))
-swap_start=$((rootfs_end))
+testfs_start=$((rootfs_end))
 
 # MMC devices are special in a couple of ways
 # 1) they use a partition prefix character 'p'
@@ -89,12 +89,12 @@ if [ ! "${device#mmcblk}" = "${device}" ]; then
 fi
 bootfs=/dev/${device}${part_prefix}1
 rootfs=/dev/${device}${part_prefix}2
-swap=/dev/${device}${part_prefix}3
+testfs=/dev/${device}${part_prefix}3
 
 echo "*****************"
 echo "Boot partition size:   $boot_size MB ($bootfs)"
 echo "Rootfs partition size: $rootfs_size MB ($rootfs)"
-echo "Swap partition size:   $swap_size MB ($swap)"
+echo "Testfs partition size:   $testfs_size MB ($testfs)"
 echo "*****************"
 echo "Deleting partition table on /dev/${device} ..."
 dd if=/dev/zero of=/dev/${device} bs=512 count=2
@@ -109,19 +109,19 @@ parted /dev/${device} set 1 boot on
 echo "Creating rootfs partition on $rootfs"
 parted /dev/${device} mkpart primary $rootfs_start $rootfs_end
 
-echo "Creating swap partition on $swap"
-parted /dev/${device} mkpart primary $swap_start 100%
+echo "Creating testfs partition on $testfs"
+parted /dev/${device} mkpart primary $testfs_start 100%
 
 parted /dev/${device} print
 
 echo "Formatting $bootfs to vfat..."
-mkfs.vfat $bootfs
+mkfs.vfat -n "boot" $bootfs
 
 echo "Formatting $rootfs to ext3..."
-mkfs.ext3 $rootfs
+mkfs.ext3 -L "platform" $rootfs
 
-echo "Formatting swap partition...($swap)"
-mkswap $swap
+echo "Formatting $testfs to ext3..."
+mkfs.ext3 -L "testrootfs" $testfs
 
 mkdir /ssd
 mkdir /rootmnt
@@ -133,9 +133,9 @@ mount -o rw,loop,noatime,nodiratime /media/$1/$2 /rootmnt
 echo "Copying rootfs files..."
 cp -a /rootmnt/* /ssd
 
-if [ -d /ssd/etc/ ] ; then
-    echo "$swap                swap             swap       defaults              0  0" >> /ssd/etc/fstab
+touch /ssd/etc/masterimage
 
+if [ -d /ssd/etc/ ] ; then
     # We dont want udev to mount our root device while we're booting...
     if [ -d /ssd/etc/udev/ ] ; then
         echo "/dev/${device}" >> /ssd/etc/udev/mount.blacklist
@@ -184,6 +184,8 @@ if [ -d /media/$1/loader ]; then
     sed -i "s/ root=[^ ]*/ /" $GUMMIBOOT_CFGS
     # add the root= and other standard boot options
     sed -i "s@options *@options root=$rootfs rw $rootwait quiet @" $GUMMIBOOT_CFGS
+    # Add the test label
+    echo -ne "title test\nlinux /test-kernel\noptions root=$testfs rw $rootwait quiet\n" > /ssd/loader/entries/test.conf
 fi
 
 umount /ssd
diff --git a/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
index 8e433d5..c35fd2a 100644
--- a/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
+++ b/meta-yocto-bsp/recipes-core/initrdscripts/files/init-install-testfs.sh
@@ -8,10 +8,10 @@
 PATH=/sbin:/bin:/usr/sbin:/usr/bin
 
 # We need 20 Mb for the boot partition
-boot_size=20
+boot_size=200
 
-# 5% for the swap
-swap_ratio=5
+# 50% for the the test partition
+testfs_ratio=50
 
 # Get a list of hard drives
 hdnamelist=""
@@ -94,12 +94,12 @@ cat /proc/mounts > /etc/mtab
 
 disk_size=$(parted /dev/${device} unit mb print | grep Disk | cut -d" " -f 3 | sed -e "s/MB//")
 
-swap_size=$((disk_size*swap_ratio/100))
-rootfs_size=$((disk_size-boot_size-swap_size))
+testfs_size=$((disk_size*testfs_ratio/100))
+rootfs_size=$((disk_size-boot_size-testfs_size))
 
 rootfs_start=$((boot_size))
 rootfs_end=$((rootfs_start+rootfs_size))
-swap_start=$((rootfs_end))
+testfs_start=$((rootfs_end))
 
 # MMC devices are special in a couple of ways
 # 1) they use a partition prefix character 'p'
@@ -112,12 +112,12 @@ if [ ! "${device#mmcblk}" = "${device}" ]; then
 fi
 bootfs=/dev/${device}${part_prefix}1
 rootfs=/dev/${device}${part_prefix}2
-swap=/dev/${device}${part_prefix}3
+testfs=/dev/${device}${part_prefix}3
 
 echo "*****************"
 echo "Boot partition size:   $boot_size MB ($bootfs)"
 echo "Rootfs partition size: $rootfs_size MB ($rootfs)"
-echo "Swap partition size:   $swap_size MB ($swap)"
+echo "Testfs partition size: $testfs_size MB ($testfs)"
 echo "*****************"
 echo "Deleting partition table on /dev/${device} ..."
 dd if=/dev/zero of=/dev/${device} bs=512 count=2
@@ -131,19 +131,19 @@ parted /dev/${device} mkpart primary 0% $boot_size
 echo "Creating rootfs partition on $rootfs"
 parted /dev/${device} mkpart primary $rootfs_start $rootfs_end
 
-echo "Creating swap partition on $swap"
-parted /dev/${device} mkpart primary $swap_start 100%
+echo "Creating testfs partition on $testfs"
+parted /dev/${device} mkpart primary $testfs_start 100%
 
 parted /dev/${device} print
 
 echo "Formatting $bootfs to ext3..."
-mkfs.ext3 $bootfs
+mkfs.ext3 -L "boot" $bootfs
 
 echo "Formatting $rootfs to ext3..."
-mkfs.ext3 $rootfs
+mkfs.ext3 -L "platform" $rootfs
 
-echo "Formatting swap partition...($swap)"
-mkswap $swap
+echo "Formatting testfs partition...($testfs)"
+mkfs.ext3 -L "testrootfs" $testfs
 
 mkdir /tgt_root
 mkdir /src_root
@@ -155,7 +155,6 @@ mount -o rw,loop,noatime,nodiratime /media/$1/$2 /src_root
 echo "Copying rootfs files..."
 cp -a /src_root/* /tgt_root
 if [ -d /tgt_root/etc/ ] ; then
-    echo "$swap                swap             swap       defaults              0  0" >> /tgt_root/etc/fstab
     echo "$bootfs              /boot            ext3       defaults              1  2" >> /tgt_root/etc/fstab
     # We dont want udev to mount our root device while we're booting...
     if [ -d /tgt_root/etc/udev/ ] ; then
@@ -179,6 +178,10 @@ if [ -f /etc/grub.d/40_custom ] ; then
     sed -i "s/__CONSOLE__/$5/g" $GRUBCFG
     sed -i "/#/d" $GRUBCFG
     sed -i "/exec tail/d" $GRUBCFG
+
+    # Add the test label
+    echo -ne "\nmenuentry 'test' {\nlinux /test-kernel root=$testfs rw $rootwait quiet\n}\n" >> $GRUBCFG
+
     chmod 0444 $GRUBCFG
 fi
 grub-install /dev/${device}
diff --git a/meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-efi-testfs_1.0.bb b/meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-efi-testfs_1.0.bb
new file mode 100644
index 0000000..2fb56f4
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-efi-testfs_1.0.bb
@@ -0,0 +1,20 @@
+SUMMARY = "Live image install script for grub-efi with a second rootfs/kernel option"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+SRC_URI = "file://init-install-efi-testfs.sh"
+
+RDEPENDS_${PN} = "parted e2fsprogs-mke2fs dosfstools"
+
+do_install() {
+        install -m 0755 ${WORKDIR}/init-install-efi-testfs.sh ${D}/install-efi.sh
+}
+
+# While this package maybe an allarch due to it being a
+# simple script, reality is that it is Host specific based
+# on the COMPATIBLE_HOST below, which needs to take precedence
+#inherit allarch
+INHIBIT_DEFAULT_DEPS = "1"
+
+FILES_${PN} = " /install-efi.sh "
+
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
diff --git a/meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-testfs_1.0.bb b/meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-testfs_1.0.bb
new file mode 100644
index 0000000..3e47c56
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/initrdscripts/initramfs-live-install-testfs_1.0.bb
@@ -0,0 +1,20 @@
+SUMMARY = "Live image install script for grub with a second rootfs"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+SRC_URI = "file://init-install-testfs.sh"
+
+RDEPENDS_${PN} = "grub parted e2fsprogs-mke2fs"
+
+do_install() {
+        install -m 0755 ${WORKDIR}/init-install-testfs.sh ${D}/install.sh
+}
+
+# While this package maybe an allarch due to it being a 
+# simple script, reality is that it is Host specific based
+# on the COMPATIBLE_HOST below, which needs to take precedence
+#inherit allarch
+INHIBIT_DEFAULT_DEPS = "1"
+
+FILES_${PN} = " /install.sh "
+
+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"
-- 
1.8.5.3


