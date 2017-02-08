Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 479BEE00924; Wed,  8 Feb 2017 00:29:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD4F8E0071E
	for <poky@yoctoproject.org>; Wed,  8 Feb 2017 00:29:10 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v188T8Ak019806
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 8 Feb 2017 00:29:09 -0800 (PST)
Received: from pek-lpgbuild2.wrs.com (128.224.153.30) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Wed, 8 Feb 2017 00:29:05 -0800
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 8 Feb 2017 16:27:50 +0800
Message-ID: <20170208082750.24457-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Subject: [PATCH v2] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Wed, 08 Feb 2017 08:29:12 -0000
Content-Type: text/plain

Bump to the latest stable kernel for 4.1, 4.4, 4,8 and 4.9. Also set
the default kernel to 4.9.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
v2: Rebase to the latest linux-yocto kernel.

 meta-yocto-bsp/conf/machine/beaglebone.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                  |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                |  2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.4.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend | 12 ++++++------
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend | 12 ++++++------
 7 files changed, 27 insertions(+), 27 deletions(-)

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
index 761e6e0a3588..6227530389d6 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "021b4aef55b44597587a1ce5879be642b3dca155"
 SRCREV_machine_genericx86-64 ?= "021b4aef55b44597587a1ce5879be642b3dca155"
-SRCREV_machine_edgerouter ?= "6076f16536329465b62bd2037b8582a5e18f85d1"
-SRCREV_machine_beaglebone ?= "85dc85153cd7e3b72d34f967c4c0edde590c79a8"
-SRCREV_machine_mpc8315e-rdb ?= "f73222eb3bbd07a45564397a88dec554e848da7d"
+SRCREV_machine_edgerouter ?= "e9912dbfdabfed45b2e15feabfc66a404a165d9b"
+SRCREV_machine_beaglebone ?= "07250a1be0e99eb54bf7d3b629125cd09129d6f5"
+SRCREV_machine_mpc8315e-rdb ?= "38e8cf7d4e6d8546bb631d109c60243d2ee01aef"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.8.12"
 LINUX_VERSION_genericx86-64 = "4.8.12"
-LINUX_VERSION_edgerouter = "4.8.12"
-LINUX_VERSION_beaglebone = "4.8.12"
-LINUX_VERSION_mpc8315e-rdb = "4.8.12"
+LINUX_VERSION_edgerouter = "4.8.18"
+LINUX_VERSION_beaglebone = "4.8.18"
+LINUX_VERSION_mpc8315e-rdb = "4.8.18"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
index 6a0493070065..e4f5e3ea7027 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.9.bbappend
@@ -9,9 +9,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 SRCREV_machine_genericx86    ?= "021b4aef55b44597587a1ce5879be642b3dca155"
 SRCREV_machine_genericx86-64 ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
-SRCREV_machine_edgerouter ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
-SRCREV_machine_beaglebone ?= "0b52a52fb892c0dd20823268830ab22a9e3a92b8"
-SRCREV_machine_mpc8315e-rdb ?= "b4a4ce5c575d3673dcb4a6922285a78868539fb2"
+SRCREV_machine_edgerouter ?= "c85c54f5bf53b98afe8105e91bffcdb6c60afe8f"
+SRCREV_machine_beaglebone ?= "c85c54f5bf53b98afe8105e91bffcdb6c60afe8f"
+SRCREV_machine_mpc8315e-rdb ?= "6b67f448d63917f5ea306eb293cd9844077e4a61"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
@@ -21,6 +21,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 
 LINUX_VERSION_genericx86 = "4.9.6"
 LINUX_VERSION_genericx86-64 = "4.9.6"
-LINUX_VERSION_edgerouter = "4.9.6"
-LINUX_VERSION_beaglebone = "4.9.6"
-LINUX_VERSION_mpc8315e-rdb = "4.9.6"
+LINUX_VERSION_edgerouter = "4.9.8"
+LINUX_VERSION_beaglebone = "4.9.8"
+LINUX_VERSION_mpc8315e-rdb = "4.9.8"
-- 
2.9.3


