Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A98C4C80BD8
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 12:00:37 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Dec 2010 10:00:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,203,1291622400"; d="scan'208";a="364236795"
Received: from unknown (HELO [10.255.14.34]) ([10.255.14.34])
	by azsmga001.ch.intel.com with ESMTP; 20 Dec 2010 10:00:36 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 20 Dec 2010 12:00:51 -0600
Message-ID: <1292868051.2104.527.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 1/1] meta-crownbay: upgrade to master
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
X-List-Received-Date: Mon, 20 Dec 2010 18:00:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Upgrade the meta-crownbay BSP to current master.

This updates the layer to reflect the naming changes that took place
between laverne and the current master, and allows the BSP to be built
for master.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 +++---
 meta-crownbay/conf/machine/crownbay.conf           |    6 +++---
 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    7 -------
 .../linux/linux-yocto-stable_git.bbappend          |    7 +++++++
 4 files changed, 13 insertions(+), 13 deletions(-)
 delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend

diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
index 535cf55..0cf7d66 100644
--- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
+++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
@@ -16,7 +16,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
@@ -41,5 +41,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-SRCREV_machine_pn-linux-wrs_crownbay-noemgd = "f0afe10edaed24575eb115ad69c366fc24ea9380"
-SRCREV_meta_pn-linux-wrs = "2f315f96f26a93d22fe0fc524de629e7c46b8469"
+SRCREV_machine_pn-linux-yocto-stable_crownbay-noemgd ?= "f0afe10edaed24575eb115ad69c366fc24ea9380"
+SRCREV_meta_pn-linux-yocto-stable_crownbay-noemgd ?= "2f315f96f26a93d22fe0fc524de629e7c46b8469"
diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index de59bc0..959d4c7 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -16,7 +16,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
 
 KERNEL_IMAGETYPE = "bzImage"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-wrs"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-stable"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-emgd"
@@ -45,5 +45,5 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
-SRCREV_machine_pn-linux-wrs_crownbay = "f0afe10edaed24575eb115ad69c366fc24ea9380"
-SRCREV_meta_pn-linux-wrs = "2f315f96f26a93d22fe0fc524de629e7c46b8469"
+SRCREV_machine_pn-linux-yocto-stable_crownbay ?= "f0afe10edaed24575eb115ad69c366fc24ea9380"
+SRCREV_meta_pn-linux-yocto-stable_crownbay ?= "2f315f96f26a93d22fe0fc524de629e7c46b8469"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
deleted file mode 100644
index aebe789..0000000
--- a/meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
-
-COMPATIBLE_MACHINE_crownbay = "crownbay"
-WRMACHINE_crownbay  = "crownbay"
-
-COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
-WRMACHINE_crownbay-noemgd  = "crownbay"
diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
new file mode 100644
index 0000000..4136536
--- /dev/null
+++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
@@ -0,0 +1,7 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+
+COMPATIBLE_MACHINE_crownbay = "crownbay"
+KMACHINE_crownbay  = "crownbay"
+
+COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
+KMACHINE_crownbay-noemgd  = "crownbay"
-- 
1.7.0.4




