Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDDC1E0098A; Wed, 15 Mar 2017 19:43:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00, DATE_IN_FUTURE_06_12,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* 1.9 DATE_IN_FUTURE_06_12 Date: is 6 to 12 hours after Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87987E0094C
	for <poky@yoctoproject.org>; Wed, 15 Mar 2017 19:43:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v2G2hAGp028667
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 15 Mar 2017 19:43:13 -0700 (PDT)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Wed, 15 Mar 2017 19:43:09 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 16 Mar 2017 19:23:29 +0800
Message-ID: <20170316112329.8181-1-kexin.hao@windriver.com>
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
X-List-Received-Date: Thu, 16 Mar 2017 02:43:17 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.1, 4.4, 4,9 and 4.10. Also set
the default kernel to 4.10.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |  2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 .../recipes-kernel/linux/linux-yocto_4.10.bbappend           | 12 ++++++++++++
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 7 files changed, 33 insertions(+), 21 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 2d1d9f03cd72..4019e25a1e0e 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -23,7 +23,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.9%"
+PREFERRED_VERSION_linux-yocto ?= "4.10%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 8e7a1376dcc4..a9cb1f55d932 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.9%"
+PREFERRED_VERSION_linux-yocto ?= "4.10%"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index fa02edc554a2..66dbd6944e0b 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.9%"
+PREFERRED_VERSION_linux-yocto ?= "4.10%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
index 5614ebbd2a07..1828f77bcaa3 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
@@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86    ?= "aadda25ee787681666f1d7961cd6c5a641da678d"
 SRCREV_machine_genericx86-64 ?= "aadda25ee787681666f1d7961cd6c5a641da678d"
-SRCREV_machine_edgerouter ?= "34753ac5e7c52bd1f0144c0a5ce9f0c6345f99d8"
-SRCREV_machine_beaglebone ?= "da5b7beb9866d5de72d61f297c682224e3e62ab5"
-SRCREV_machine_mpc8315e-rdb ?= "34753ac5e7c52bd1f0144c0a5ce9f0c6345f99d8"
+SRCREV_machine_edgerouter ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
+SRCREV_machine_beaglebone ?= "235de25be3f143b91dcc69479b770722c508889e"
+SRCREV_machine_mpc8315e-rdb ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.1.37"
 LINUX_VERSION_genericx86-64 = "4.1.37"
-LINUX_VERSION_edgerouter = "4.1.37"
-LINUX_VERSION_beaglebone = "4.1.37"
-LINUX_VERSION_mpc8315e-rdb = "4.1.37"
+LINUX_VERSION_edgerouter = "4.1.38"
+LINUX_VERSION_beaglebone = "4.1.38"
+LINUX_VERSION_mpc8315e-rdb = "4.1.38"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 976cee3fe2f2..8e5665bd0b84 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -3,12 +3,24 @@ KBRANCH_genericx86-64  = "standard/base"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "b259a5d744e8955a03405c6b59c5a61724755ea8"
 SRCREV_machine_genericx86-64 ?= "b259a5d744e8955a03405c6b59c5a61724755ea8"
+SRCREV_machine_edgerouter ?= "827a1164b155110c65f028a13a6c5699be93bbc3"
+SRCREV_machine_beaglebone ?= "827a1164b155110c65f028a13a6c5699be93bbc3"
+SRCREV_machine_mpc8315e-rdb ?= "fc1a68a9046707a9709075afc99eb3b5a2237c4b"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.10"
 LINUX_VERSION_genericx86-64 = "4.10"
+LINUX_VERSION_edgerouter = "4.10.2"
+LINUX_VERSION_beaglebone = "4.10.2"
+LINUX_VERSION_mpc8315e-rdb = "4.10.2"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
index d92bfc0f516f..b499a6677c68 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
 SRCREV_machine_genericx86-64 ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_edgerouter ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_beaglebone ?= "ad8b1d659ddd2699ebf7d50ef9de8940b157bfc2"
-SRCREV_machine_mpc8315e-rdb ?= "b01922f8b85d96b9f6996b17ed0995c6f782fdbf"
+SRCREV_machine_edgerouter ?= "cebe1ad56aebd89e0de29412e19433fb441bf13c"
+SRCREV_machine_beaglebone ?= "cebe1ad56aebd89e0de29412e19433fb441bf13c"
+SRCREV_machine_mpc8315e-rdb ?= "06c0dbdcba374ca7f92a53d69292d6bb7bc9b0f3"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.4.41"
 LINUX_VERSION_genericx86-64 = "4.4.41"
-LINUX_VERSION_edgerouter = "4.4.41"
-LINUX_VERSION_beaglebone = "4.4.41"
-LINUX_VERSION_mpc8315e-rdb = "4.4.41"
+LINUX_VERSION_edgerouter = "4.4.53"
+LINUX_VERSION_beaglebone = "4.4.53"
+LINUX_VERSION_mpc8315e-rdb = "4.4.53"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index b730934243b2..766adb759b06 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
 SRCREV_machine_genericx86-64 ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
-SRCREV_machine_edgerouter ?= "c85c54f5bf53b98afe8105e91bffcdb6c60afe8f"
-SRCREV_machine_beaglebone ?= "c85c54f5bf53b98afe8105e91bffcdb6c60afe8f"
-SRCREV_machine_mpc8315e-rdb ?= "6b67f448d63917f5ea306eb293cd9844077e4a61"
+SRCREV_machine_edgerouter ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
+SRCREV_machine_beaglebone ?= "95c0a80ee83f1cf8e59d733f36e8a9dfd50a0098"
+SRCREV_machine_mpc8315e-rdb ?= "7744d762ee37396dfab60f21a2b974c5b94c47b4"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.13"
 LINUX_VERSION_genericx86-64 = "4.9.13"
-LINUX_VERSION_edgerouter = "4.9.8"
-LINUX_VERSION_beaglebone = "4.9.8"
-LINUX_VERSION_mpc8315e-rdb = "4.9.8"
+LINUX_VERSION_edgerouter = "4.9.13"
+LINUX_VERSION_beaglebone = "4.9.13"
+LINUX_VERSION_mpc8315e-rdb = "4.9.13"
-- 
2.9.3


