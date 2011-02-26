Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EFEF4C80AA3
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 18:36:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Feb 2011 16:36:32 -0800
Message-Id: <849307$bo218f@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,229,1297065600"; d="scan'208";a="394331412"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 25 Feb 2011 16:36:32 -0800
Old-Date: Fri, 25 Feb 2011 18:24:04 -0600
Date: Fri, 25 Feb 2011 18:36:28 -0600
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] meta-crownbay: 2.6.37 changes
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
X-List-Received-Date: Sat, 26 Feb 2011 00:36:33 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This adds the code necessary to move meta-crownbay over to
linux-yocto.  A follow-on patch will actually do the switchover once
the kernel srcrevs are known.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    5 +++++
 meta-crownbay/conf/machine/crownbay.conf           |    7 ++++++-
 .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 +++
 3 files changed, 14 insertions(+), 1 deletions(-)
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index a334202..277c5ff 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -17,6 +17,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
+#PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
@@ -41,5 +43,8 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+
 SRCREV_machine_pn-linux-yocto-stable_crownbay-noemgd ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
 SRCREV_meta_pn-linux-yocto-stable_crownbay-noemgd ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index e6c4315..0d61380 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -16,7 +16,9 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
+#PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-emgd"
@@ -45,5 +47,8 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
+SRCREV_machine_pn-linux-yocto_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+
 SRCREV_machine_pn-linux-yocto-stable_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
 SRCREV_meta_pn-linux-yocto-stable_crownbay ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
new file mode 100644
index 0000000..32bbd10
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "yocto/standard/crownbay"
-- 
1.7.0.4


