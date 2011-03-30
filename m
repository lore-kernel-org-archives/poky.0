Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68F644C80AB0
	for <poky@yoctoproject.org>; Wed, 30 Mar 2011 17:10:26 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 30 Mar 2011 15:10:26 -0700
Message-Id: <b9dded$igfoa4@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,270,1299484800"; d="scan'208";a="621273416"
Received: from unknown (HELO localhost) ([10.255.12.192])
	by orsmga002.jf.intel.com with ESMTP; 30 Mar 2011 15:10:25 -0700
Old-Date: Thu, 17 Mar 2011 10:35:24 -0500
Date: Wed, 30 Mar 2011 17:09:28 -0500
To: poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH] meta-crownbay: switch to linux-yocto kernel
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
X-List-Received-Date: Wed, 30 Mar 2011 22:10:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update kernel SRCREVs and switch crownbay/crownbay-noemgd to the
2.6.37 kernel.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf |   12 ++++--------
 meta-crownbay/conf/machine/crownbay.conf        |   12 ++++--------
 2 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 277c5ff..a65339b 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -16,9 +16,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
-#PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
@@ -43,8 +42,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
-
-SRCREV_machine_pn-linux-yocto-stable_crownbay-noemgd ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto-stable_crownbay-noemgd ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "86bd1278bbf11589d87639df17d2f5f42db97b60"
+SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "51c761795b078bf3c80104ed6e73b3d995067384"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 0d61380..3660383 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -16,9 +16,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-stable"
-#PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
-#PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-emgd"
@@ -47,8 +46,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-SRCREV_machine_pn-linux-yocto_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto_crownbay ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
-
-SRCREV_machine_pn-linux-yocto-stable_crownbay ?= "56fe215d3f1a2cc3a5a26482ac9809ba44495695"
-SRCREV_meta_pn-linux-yocto-stable_crownbay ?= "e1f85a470934a0cf6abde5d95533e74501822c6b"
+SRCREV_machine_pn-linux-yocto_crownbay ?= "86bd1278bbf11589d87639df17d2f5f42db97b60"
+SRCREV_meta_pn-linux-yocto_crownbay ?= "51c761795b078bf3c80104ed6e73b3d995067384"
-- 
1.7.0.4


