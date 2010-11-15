Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E20DA4C80B71;
	Mon, 15 Nov 2010 10:55:51 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAFGtmOW018032;
	Mon, 15 Nov 2010 08:55:50 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 15 Nov 2010 11:56:13 -0500
Message-Id: <716eaeb4c451e987b56250bcad5eca043a6aa7b4.1289839979.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1289839979.git.bruce.ashfield@windriver.com>
References: <cover.1289839979.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 2/3] linux-yocto: update board configurations
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
X-List-Received-Date: Mon, 15 Nov 2010 16:55:52 -0000

Now that linuy-wrs has been renamed linux-yocto, we need
to rename and update an board configurations and append
files.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-emenlow/conf/machine/emenlow.conf             |    2 +-
 ...x-wrs_git.bbappend => linux-yocto_git.bbappend} |    0
 meta/conf/machine/atom-pc.conf                     |    2 +-
 meta/conf/machine/beagleboard.conf                 |    2 +-
 meta/conf/machine/include/qemu.inc                 |    2 +-
 meta/conf/machine/mpc8315e-rdb.conf                |    2 +-
 meta/conf/machine/routerstationpro.conf            |    2 +-
 ...-wrs_git.bb => linux-libc-headers-yocto_git.bb} |    0
 .../linux/{linux-wrs_git.bb => linux-yocto_git.bb} |    0
 9 files changed, 6 insertions(+), 6 deletions(-)
 rename meta-emenlow/recipes/linux/{linux-wrs_git.bbappend => linux-yocto_git.bbappend} (100%)
 rename meta/recipes-kernel/linux-libc-headers/{linux-libc-headers-wrs_git.bb => linux-libc-headers-yocto_git.bb} (100%)
 rename meta/recipes-kernel/linux/{linux-wrs_git.bb => linux-yocto_git.bb} (100%)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 897f36e..0f9ed8a 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -16,7 +16,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
diff --git a/meta-emenlow/recipes/linux/linux-wrs_git.bbappend b/meta-emenlow/recipes/linux/linux-yocto_git.bbappend
similarity index 100%
rename from meta-emenlow/recipes/linux/linux-wrs_git.bbappend
rename to meta-emenlow/recipes/linux/linux-yocto_git.bbappend
diff --git a/meta/conf/machine/atom-pc.conf b/meta/conf/machine/atom-pc.conf
index 61d3d94..7ca952a 100644
--- a/meta/conf/machine/atom-pc.conf
+++ b/meta/conf/machine/atom-pc.conf
@@ -13,7 +13,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
index d44b7aa..657bd36 100644
--- a/meta/conf/machine/beagleboard.conf
+++ b/meta/conf/machine/beagleboard.conf
@@ -22,7 +22,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 # Guesswork
 SERIAL_CONSOLE = "115200 ttyS2"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 KERNEL_IMAGETYPE = "uImage"
 
diff --git a/meta/conf/machine/include/qemu.inc b/meta/conf/machine/include/qemu.inc
index 1ef639f..1b1b888 100644
--- a/meta/conf/machine/include/qemu.inc
+++ b/meta/conf/machine/include/qemu.inc
@@ -15,6 +15,6 @@ IMAGE_ROOTFS_SIZE_ext3 ?= "280000"
 RDEPENDS_kernel-base = ""
 
 # Use a common kernel recipe for all QEMU machines
-PREFERRED_PROVIDER_virtual/kernel = "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
diff --git a/meta/conf/machine/mpc8315e-rdb.conf b/meta/conf/machine/mpc8315e-rdb.conf
index e42a9f2..3341186 100644
--- a/meta/conf/machine/mpc8315e-rdb.conf
+++ b/meta/conf/machine/mpc8315e-rdb.conf
@@ -13,4 +13,4 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
diff --git a/meta/conf/machine/routerstationpro.conf b/meta/conf/machine/routerstationpro.conf
index ecacc9b..485ee3c 100644
--- a/meta/conf/machine/routerstationpro.conf
+++ b/meta/conf/machine/routerstationpro.conf
@@ -12,7 +12,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 \
 KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-wrs_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
similarity index 100%
rename from meta/recipes-kernel/linux-libc-headers/linux-libc-headers-wrs_git.bb
rename to meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb
diff --git a/meta/recipes-kernel/linux/linux-wrs_git.bb b/meta/recipes-kernel/linux/linux-yocto_git.bb
similarity index 100%
rename from meta/recipes-kernel/linux/linux-wrs_git.bb
rename to meta/recipes-kernel/linux/linux-yocto_git.bb
-- 
1.7.0.4


