Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3D68E00726
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 09 Mar 2014 11:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,619,1389772800"; d="scan'208";a="346452703"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Mar 2014 11:49:19 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.156])
	by linux.intel.com (Postfix) with ESMTP id 8F5926A4083
	for <poky@yoctoproject.org>; Sun,  9 Mar 2014 11:49:07 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: poky@yoctoproject.org
Date: Sun,  9 Mar 2014 20:49:16 +0200
Message-Id: <ac373c7b20125fb93cfd99ac90270157ea8bf056.1394390131.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
In-Reply-To: <cover.1394390131.git.stefanx.stanacar@intel.com>
References: <cover.1394390131.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1394390131.git.stefanx.stanacar@intel.com>
References: <cover.1394390131.git.stefanx.stanacar@intel.com>
Subject: [RFC PATCH 1/4] linux-yocto_3.10.bbappend: EFI kernel config for easier building
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
X-List-Received-Date: Sun, 09 Mar 2014 18:49:23 -0000

This is just to simplify building (gummiboot requires this options,
they should be probably be added to the default efi config fragment)

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 meta-yocto-bsp/recipes-kernel/linux/files/efioptions.cfg      | 4 ++++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 5 +++++
 2 files changed, 9 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/efioptions.cfg

diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/efioptions.cfg b/meta-yocto-bsp/recipes-kernel/linux/files/efioptions.cfg
new file mode 100644
index 0000000..bea1993
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/files/efioptions.cfg
@@ -0,0 +1,4 @@
+CONFIG_EFI_STUB=y
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_EFI_PARTITION=y
+CONFIG_EFIVAR_FS=y
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 56f566d..d479d7c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -1,3 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
 KBRANCH_genericx86  = "standard/common-pc/base"
 KBRANCH_genericx86-64  = "standard/common-pc-64/base"
 KBRANCH_routerstationpro = "standard/routerstationpro"
@@ -21,3 +23,6 @@ COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 
 # routerstationpro has a flash size of 16mb
 KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
+
+SRC_URI_append_genericx86-64 = " file://efioptions.cfg"
+SRC_URI_append_genericx86 = " file://efioptions.cfg"
-- 
1.8.5.3


