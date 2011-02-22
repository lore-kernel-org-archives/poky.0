Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 616E34C80A82
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 09:13:11 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Feb 2011 07:13:10 -0800
Message-Id: <1bdc18$jlll03@fmsmga002.fm.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="660263941"
Received: from unknown (HELO localhost) ([10.255.12.44])
	by fmsmga002.fm.intel.com with ESMTP; 22 Feb 2011 07:13:10 -0800
Old-Date: Mon, 17 Jan 2011 10:10:34 -0600
Date: Tue, 22 Feb 2011  9:13:07 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/3] emenlow: switch kernel to linux-yocto
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
X-List-Received-Date: Tue, 22 Feb 2011 15:13:11 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Make emenlow use the 2.6.37 kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf             |    4 ++--
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)
 create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index 2e20e1c..45adbff 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -16,8 +16,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
new file mode 100644
index 0000000..360c259
--- /dev/null
+++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+COMPATIBLE_MACHINE_emenlow = "emenlow"
+KMACHINE_emenlow  = "yocto/standard/emenlow"
-- 
1.7.0.4


