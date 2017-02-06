Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59FBBE009A0; Mon,  6 Feb 2017 00:42:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F5CE00935
	for <poky@yoctoproject.org>; Mon,  6 Feb 2017 00:42:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v168g2GB016684
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 6 Feb 2017 00:42:05 -0800 (PST)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Mon, 6 Feb 2017 00:42:03 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 6 Feb 2017 16:41:52 +0800
Message-ID: <20170206084152.223852-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Mon, 06 Feb 2017 08:42:11 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.1, 4.4, 4,8 and 4.9. Also set
the default kernel to 4.9.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |  2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend |  6 +++---
 7 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 9286d1bba614..2d1d9f03cd72 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -23,7 +23,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.8%"
+PREFERRED_VERSION_linux-yocto ?= "4.9%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index ce7de60998de..8e7a1376dcc4 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.8%"
+PREFERRED_VERSION_linux-yocto ?= "4.9%"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 2e164ffd063f..fa02edc554a2 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.8%"
+PREFERRED_VERSION_linux-yocto ?= "4.9%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 68bae2c4e439..b5550945425e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
 SRCREV_machine_genericx86-64 ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
-SRCREV_machine_edgerouter ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
-SRCREV_machine_beaglebone ?= "938cc4ac8d36f166c9e2e0517d6ffd6d278fe631"
-SRCREV_machine_mpc8315e-rdb ?= "fec49247816d7045aa8abe0047bcd4737af9a853"
+SRCREV_machine_edgerouter ?= "34753ac5e7c52bd1f0144c0a5ce9f0c6345f99d8"
+SRCREV_machine_beaglebone ?= "da5b7beb9866d5de72d61f297c682224e3e62ab5"
+SRCREV_machine_mpc8315e-rdb ?= "34753ac5e7c52bd1f0144c0a5ce9f0c6345f99d8"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.36"
 LINUX_VERSION_genericx86-64 = "4.1.36"
-LINUX_VERSION_edgerouter = "4.1.36"
-LINUX_VERSION_beaglebone = "4.1.36"
-LINUX_VERSION_mpc8315e-rdb = "4.1.36"
+LINUX_VERSION_edgerouter = "4.1.37"
+LINUX_VERSION_beaglebone = "4.1.37"
+LINUX_VERSION_mpc8315e-rdb = "4.1.37"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index a0efb152b8fe..c1881af32e36 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
 SRCREV_machine_genericx86-64 ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
-SRCREV_machine_edgerouter ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
-SRCREV_machine_beaglebone ?= "35482df5d5ba0807eb8a7c40b554bd657e3f9987"
-SRCREV_machine_mpc8315e-rdb ?= "772f071dbdd4b813c921058ddf9cba207237228b"
+SRCREV_machine_edgerouter ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
+SRCREV_machine_beaglebone ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
+SRCREV_machine_mpc8315e-rdb ?= "b01922f8b85d96b9f6996b17ed0995c6f782fdbf"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.36"
 LINUX_VERSION_genericx86-64 = "4.4.36"
-LINUX_VERSION_edgerouter = "4.4.36"
-LINUX_VERSION_beaglebone = "4.4.36"
-LINUX_VERSION_mpc8315e-rdb = "4.4.36"
+LINUX_VERSION_edgerouter = "4.4.41"
+LINUX_VERSION_beaglebone = "4.4.41"
+LINUX_VERSION_mpc8315e-rdb = "4.4.41"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 761e6e0a3588..13f72bdd1a1d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "021b4aef55b44597587a1ce5879be642b3dca155"
 SRCREV_machine_genericx86-64 ?= "021b4aef55b44597587a1ce5879be642b3dca155"
-SRCREV_machine_edgerouter ?= "6076f16536329465b62bd2037b8582a5e18f85d1"
-SRCREV_machine_beaglebone ?= "85dc85153cd7e3b72d34f967c4c0edde590c79a8"
-SRCREV_machine_mpc8315e-rdb ?= "f73222eb3bbd07a45564397a88dec554e848da7d"
+SRCREV_machine_edgerouter ?= "a8fe1262827fd0d32b447ecccfb08e5d39b2a31d"
+SRCREV_machine_beaglebone ?= "6014be20d9c9c49e88fd4f15ad019ea8ed0200ec"
+SRCREV_machine_mpc8315e-rdb ?= "c57440898239989e0f568e1404548b9e26bdf182"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8.12"
 LINUX_VERSION_genericx86-64 = "4.8.12"
-LINUX_VERSION_edgerouter = "4.8.12"
-LINUX_VERSION_beaglebone = "4.8.12"
-LINUX_VERSION_mpc8315e-rdb = "4.8.12"
+LINUX_VERSION_edgerouter = "4.8.17"
+LINUX_VERSION_beaglebone = "4.8.17"
+LINUX_VERSION_mpc8315e-rdb = "4.8.17"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 6a0493070065..930d0e6d0131 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "021b4aef55b44597587a1ce5879be642b3dca155"
 SRCREV_machine_genericx86-64 ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
-SRCREV_machine_edgerouter ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
-SRCREV_machine_beaglebone ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
-SRCREV_machine_mpc8315e-rdb ?= "b4a4ce5c575d3673dcb4a6922285a78868539fb2"
+SRCREV_machine_edgerouter ?= "4700f2f8b9dbaad5ae441b682d04b09e811135fc"
+SRCREV_machine_beaglebone ?= "4700f2f8b9dbaad5ae441b682d04b09e811135fc"
+SRCREV_machine_mpc8315e-rdb ?= "d74a507be01425d02fedc22a5a53306729101948"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
2.9.3


