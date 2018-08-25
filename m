Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0912EE0080F; Sat, 25 Aug 2018 05:57:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB38CE0074B
	for <poky@yoctoproject.org>; Sat, 25 Aug 2018 05:57:03 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7PCv2D6017454
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 25 Aug 2018 05:57:03 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Sat, 25 Aug 2018 05:57:02 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 25 Aug 2018 20:51:34 +0800
Message-ID: <20180825125134.267328-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: Bump the kernel to v4.18
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
X-List-Received-Date: Sat, 25 Aug 2018 12:57:06 -0000
Content-Type: text/plain

Bump the kernel to v4.18 for all the boards in meta-yocto-bsp layer.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---

This is based on the following patches from Bruce:
  http://lists.openembedded.org/pipermail/openembedded-core/2018-August/154796.html

 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf        |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf      |  2 +-
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend | 27 ++++++++++++++++++++++
 4 files changed, 30 insertions(+), 3 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 5cc292390367..e911e7500490 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -23,7 +23,7 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLES = "115200;ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.15%"
+PREFERRED_VERSION_linux-yocto ?= "4.18%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index a3eeebf2f66a..b7a94e9cbbe3 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.15%"
+PREFERRED_VERSION_linux-yocto ?= "4.18%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 441987a78e92..6f5b9859d722 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLES = "115200;ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.15%"
+PREFERRED_VERSION_linux-yocto ?= "4.18%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
new file mode 100644
index 000000000000..0ce757860aa1
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -0,0 +1,27 @@
+KBRANCH_genericx86  = "v4.18/standard/base"
+KBRANCH_genericx86-64  = "v4.18/standard/base"
+KBRANCH_edgerouter = "v4.18/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v4.18/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v4.18/standard/fsl-mpc8315e-rdb"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine_genericx86    ?= "eba03655e8e436ef6090100423bcea43e4911478"
+SRCREV_machine_genericx86-64 ?= "eba03655e8e436ef6090100423bcea43e4911478"
+SRCREV_machine_edgerouter ?= "eba03655e8e436ef6090100423bcea43e4911478"
+SRCREV_machine_beaglebone-yocto ?= "eba03655e8e436ef6090100423bcea43e4911478"
+SRCREV_machine_mpc8315e-rdb ?= "193513391ec14cb5402fcc4ed7bb2b49193842bb"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+
+LINUX_VERSION_genericx86 = "4.18.3"
+LINUX_VERSION_genericx86-64 = "4.18.3"
+LINUX_VERSION_edgerouter = "4.18.3"
+LINUX_VERSION_beaglebone-yocto = "4.18.3"
+LINUX_VERSION_mpc8315e-rdb = "4.18.3"
-- 
2.14.4


