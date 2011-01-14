Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8FE44C811DD
	for <poky@yoctoproject.org>; Fri, 14 Jan 2011 16:02:12 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Jan 2011 14:02:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,324,1291622400"; d="scan'208";a="877576308"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2011 14:01:18 -0800
Message-Id: <386ac08ab4ef197f398cca5963ef7a34f6e822c9.1295042140.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1295042138.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Thu, 13 Jan 2011 22:08:21 +0800
Date: Sat, 15 Jan 2011  6:14:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/5] emenlow: Change PACKAGE_EXTRA_ARCHS and BASE_PACKAGE_ARCH to core2
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
X-List-Received-Date: Fri, 14 Jan 2011 22:02:12 -0000

After machine specific sysroot is implemented, emenlow and atom-pc
could build together as one architecture. Thus change emenlow
architecture back to core2.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta-emenlow/conf/machine/emenlow.conf |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index d4234ff..faedfe5 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -5,11 +5,11 @@
 # Webs-2120 box.
 
 TARGET_ARCH = "i586"
-PACKAGE_EXTRA_ARCHS = "x86 emen"
+PACKAGE_EXTRA_ARCHS = "x86 core2"
 
 include conf/machine/include/tune-atom.inc
 
-BASE_PACKAGE_ARCH="emen"
+BASE_PACKAGE_ARCH="core2"
 
 MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
                     acpi serial usbgadget"
@@ -45,4 +45,4 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 SRCREV_machine_pn-linux-yocto-stable_emenlow ?= "aae69fdf104b0a9d7b3710f808aac6ab303490f7"
-SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
\ No newline at end of file
+SRCREV_meta_pn-linux-yocto-stable_emenlow ?= "50ccd2b3213b6a1bacb3f898c035119802dac420"
-- 
1.6.3.3


