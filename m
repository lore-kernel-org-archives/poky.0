Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0567E00CC4; Thu, 31 Aug 2017 20:14:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D7BE00C8B
	for <poky@yoctoproject.org>; Thu, 31 Aug 2017 20:14:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v813EQqY010301
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <poky@yoctoproject.org>; Thu, 31 Aug 2017 20:14:26 -0700
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Thu, 31 Aug 2017 20:14:25 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 1 Sep 2017 11:18:07 +0800
Message-ID: <20170901031807.30380-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Fri, 01 Sep 2017 03:14:27 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.4, 4.9, 4.10 and 4.12. Also
set the default kernel to 4.12.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |  2 +-
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           |  6 +++---
 .../recipes-kernel/linux/linux-yocto_4.12.bbappend           | 12 ++++++++++++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 7 files changed, 30 insertions(+), 18 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 4019e25a1e0e..4a90ba5ab570 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -23,7 +23,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.10%"
+PREFERRED_VERSION_linux-yocto ?= "4.12%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index a9cb1f55d932..ab5a6fc404cb 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.10%"
+PREFERRED_VERSION_linux-yocto ?= "4.12%"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index ce5015256a23..371a3db3d0c7 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.10%"
+PREFERRED_VERSION_linux-yocto ?= "4.12%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 6884731810cc..42c10c4d2cc8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
 SRCREV_machine_genericx86-64 ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
-SRCREV_machine_edgerouter ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
-SRCREV_machine_beaglebone ?= "6648a34e00c55a0634b39e661dd6ba14dd106473"
-SRCREV_machine_mpc8315e-rdb ?= "5ae8cb247756593767d1bb3828bbb9f2a9b72341"
+SRCREV_machine_edgerouter ?= "f4ba3db6e599ed41d1c676f9086ad8b97fd55046"
+SRCREV_machine_beaglebone ?= "f4ba3db6e599ed41d1c676f9086ad8b97fd55046"
+SRCREV_machine_mpc8315e-rdb ?= "e6f168eef50f35513249d120db188453768017ec"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
index d54dcb3b80ff..965c892e790c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.12.bbappend
@@ -3,13 +3,25 @@ KBRANCH_genericx86-64  = "standard/base"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "d09f2ce584d60ecb7890550c22a80c48b83c2e19"
 SRCREV_machine_genericx86-64 ?= "d09f2ce584d60ecb7890550c22a80c48b83c2e19"
+SRCREV_machine_edgerouter ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
+SRCREV_machine_beaglebone ?= "b5c8cfda2dfe296410d51e131289fb09c69e1e7d"
+SRCREV_machine_mpc8315e-rdb ?= "2d1d010240846d7bff15d1fcc0cb6eb8a22fc78a"
 
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.12.7"
 LINUX_VERSION_genericx86-64 = "4.12.7"
+LINUX_VERSION_edgerouter = "4.12.10"
+LINUX_VERSION_beaglebone = "4.12.10"
+LINUX_VERSION_mpc8315e-rdb = "4.12.10"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index 7804bd784f9d..27d8cef3ba2b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
 SRCREV_machine_genericx86-64 ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
-SRCREV_machine_edgerouter ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
-SRCREV_machine_beaglebone ?= "2854678e4ccbb4bbd1bb4c243ac3e2571ef9834a"
-SRCREV_machine_mpc8315e-rdb ?= "f5e6bd8e3a6d43ca08a7a06a76547ebef456d67b"
+SRCREV_machine_edgerouter ?= "0327f8213797c4885f86aec26cf55aeef5834180"
+SRCREV_machine_beaglebone ?= "0327f8213797c4885f86aec26cf55aeef5834180"
+SRCREV_machine_mpc8315e-rdb ?= "9313779872b1c0888cd94f6116fb1819908596e8"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.76"
 LINUX_VERSION_genericx86-64 = "4.4.76"
-LINUX_VERSION_edgerouter = "4.4.76"
-LINUX_VERSION_beaglebone = "4.4.76"
-LINUX_VERSION_mpc8315e-rdb = "4.4.76"
+LINUX_VERSION_edgerouter = "4.4.85"
+LINUX_VERSION_beaglebone = "4.4.85"
+LINUX_VERSION_mpc8315e-rdb = "4.4.85"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index c741c3937642..cc65459e1b28 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
 SRCREV_machine_genericx86-64 ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
-SRCREV_machine_edgerouter ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
-SRCREV_machine_beaglebone ?= "24572abb2cad341dd79e6aafcb9cdd1a7f8a0c1e"
-SRCREV_machine_mpc8315e-rdb ?= "2c59ae4503454e29c11c58b585a61dc4a40193cf"
+SRCREV_machine_edgerouter ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
+SRCREV_machine_beaglebone ?= "cf9a7dd9f41a32c10d19a51497463d6ec2991107"
+SRCREV_machine_mpc8315e-rdb ?= "06cc7d23e026522a996d3a26e9b013f0a5f7e6fa"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.36"
 LINUX_VERSION_genericx86-64 = "4.9.36"
-LINUX_VERSION_edgerouter = "4.9.36"
-LINUX_VERSION_beaglebone = "4.9.36"
-LINUX_VERSION_mpc8315e-rdb = "4.9.36"
+LINUX_VERSION_edgerouter = "4.9.46"
+LINUX_VERSION_beaglebone = "4.9.46"
+LINUX_VERSION_mpc8315e-rdb = "4.9.46"
-- 
2.9.3


