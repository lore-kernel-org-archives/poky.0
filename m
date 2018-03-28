Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31EDDE00C88; Wed, 28 Mar 2018 03:09:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C788DE00CBC
	for <poky@yoctoproject.org>; Wed, 28 Mar 2018 03:09:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w2SA9Mid026062
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 28 Mar 2018 03:09:22 -0700 (PDT)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 28 Mar 2018 03:09:21 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 28 Mar 2018 18:12:09 +0800
Message-ID: <20180328101209.7407-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20180328101209.7407-1-kexin.hao@windriver.com>
References: <20180328101209.7407-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] meta-yocto-bsp: introduce v4.14&v4.15 kernel for non-x86 BSPs
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
X-List-Received-Date: Wed, 28 Mar 2018 10:09:25 -0000
Content-Type: text/plain

Also set the default kernel of these BSPs to v4.15.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf           |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                 |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf               |  2 +-
 .../recipes-kernel/linux/linux-yocto_4.14.bbappend          | 13 +++++++++++++
 .../recipes-kernel/linux/linux-yocto_4.15.bbappend          | 13 +++++++++++++
 5 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 990c9674162d..8d0f62bf67cb 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -23,7 +23,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.12%"
+PREFERRED_VERSION_linux-yocto ?= "4.15%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index ab5a6fc404cb..acfd69c2bca7 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.12%"
+PREFERRED_VERSION_linux-yocto ?= "4.15%"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 371a3db3d0c7..04c54f2710f0 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.12%"
+PREFERRED_VERSION_linux-yocto ?= "4.15%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
index 3f73eea118a4..5130707dd7de 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.14.bbappend
@@ -1,14 +1,27 @@
 KBRANCH_genericx86  = "v4.14/standard/base"
 KBRANCH_genericx86-64  = "v4.14/standard/base"
+KBRANCH_edgerouter = "v4.14/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v4.14/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v4.14/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "1d50ce210b0536eb9a66d1e56ae215f92176444a"
 SRCREV_machine_genericx86-64 ?= "1d50ce210b0536eb9a66d1e56ae215f92176444a"
+SRCREV_machine_edgerouter ?= "f2dc94f77d19ab65a832bad6f42662c509d2ef9e"
+SRCREV_machine_beaglebone-yocto ?= "6c1a02d4a9c227eca356911715a52cf92457ec16"
+SRCREV_machine_mpc8315e-rdb ?= "7e9a0b017be7b685e094638f4bdaa33a7df8f7c0"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.14.30"
 LINUX_VERSION_genericx86-64 = "4.14.30"
+LINUX_VERSION_edgerouter = "4.14.30"
+LINUX_VERSION_beaglebone-yocto = "4.14.30"
+LINUX_VERSION_mpc8315e-rdb = "4.14.30"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
index 9ae1735469fa..c0c6ad92dab3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.15.bbappend
@@ -1,14 +1,27 @@
 KBRANCH_genericx86  = "v4.15/standard/base"
 KBRANCH_genericx86-64  = "v4.15/standard/base"
+KBRANCH_edgerouter = "v4.15/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v4.15/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v4.15/standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine_genericx86    ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
 SRCREV_machine_genericx86-64 ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
+SRCREV_machine_edgerouter ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
+SRCREV_machine_beaglebone-yocto ?= "f73fd8783a3e7529902366ba75aafb81c19ec3c9"
+SRCREV_machine_mpc8315e-rdb ?= "cc2711c4f3b83b5cd78358e7c949fdbb6076e25b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.15.13"
 LINUX_VERSION_genericx86-64 = "4.15.13"
+LINUX_VERSION_edgerouter = "4.15.13"
+LINUX_VERSION_beaglebone-yocto = "4.15.13"
+LINUX_VERSION_mpc8315e-rdb = "4.15.13"
-- 
2.9.3


