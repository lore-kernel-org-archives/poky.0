Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00AD2E00DEF; Thu, 29 Aug 2019 01:46:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE8DE00C78
	for <poky@yoctoproject.org>; Thu, 29 Aug 2019 01:46:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x7T8kbET015047
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 29 Aug 2019 01:46:38 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 29 Aug 2019 01:46:37 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 29 Aug 2019 16:43:20 +0800
Message-ID: <20190829084320.5767-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: Bump to the v5.2 kernel
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
X-List-Received-Date: Thu, 29 Aug 2019 08:46:39 -0000
Content-Type: text/plain

Boot test for all the supported boards. Also drop the v5.0 bbappend
since we no plan to support it anymore. There are some
kernel_configcheck warning when building some boards, the patches [1]
for them have been sent to kernel-meta for merging.

[1] https://lists.yoctoproject.org/pipermail/linux-yocto/2019-August/007908.html

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf  |  2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf        |  2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf      |  2 +-
 .../recipes-kernel/linux/linux-yocto_5.0.bbappend  | 27 ----------------------
 .../recipes-kernel/linux/linux-yocto_5.2.bbappend  | 27 ++++++++++++++++++++++
 5 files changed, 30 insertions(+), 30 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 57b799294d4e..08dd3a5074ee 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.0%"
+PREFERRED_VERSION_linux-yocto ?= "5.2%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 88592dbc8543..6331368f87aa 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "5.0%"
+PREFERRED_VERSION_linux-yocto ?= "5.2%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index e2dce567386f..5382796284b4 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -15,7 +15,7 @@ SERIAL_CONSOLES = "115200;ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "5.0%"
+PREFERRED_VERSION_linux-yocto ?= "5.2%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
deleted file mode 100644
index d7cf1216f45d..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.0.bbappend
+++ /dev/null
@@ -1,27 +0,0 @@
-KBRANCH_genericx86  = "v5.0/standard/base"
-KBRANCH_genericx86-64  = "v5.0/standard/base"
-KBRANCH_edgerouter = "v5.0/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v5.0/standard/beaglebone"
-KBRANCH_mpc8315e-rdb = "v5.0/standard/fsl-mpc8315e-rdb"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KMACHINE_beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine_genericx86    ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_genericx86-64 ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_edgerouter ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_beaglebone-yocto ?= "f990fd0ce123aa6035042efad09b2ddc3e7d48f4"
-SRCREV_machine_mpc8315e-rdb ?= "670ce7e9db627d0c2067cfdb571ddc1f117818d8"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-
-LINUX_VERSION_genericx86 = "5.0.13"
-LINUX_VERSION_genericx86-64 = "5.0.13"
-LINUX_VERSION_edgerouter = "5.0.13"
-LINUX_VERSION_beaglebone-yocto = "5.0.13"
-LINUX_VERSION_mpc8315e-rdb = "5.0.13"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
new file mode 100644
index 000000000000..de596e870ad1
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
@@ -0,0 +1,27 @@
+KBRANCH_genericx86  = "v5.2/standard/base"
+KBRANCH_genericx86-64  = "v5.2/standard/base"
+KBRANCH_edgerouter = "v5.2/standard/edgerouter"
+KBRANCH_beaglebone-yocto = "v5.2/standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "v5.2/standard/fsl-mpc8315e-rdb"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+KMACHINE_beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine_genericx86    ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
+SRCREV_machine_genericx86-64 ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
+SRCREV_machine_edgerouter ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
+SRCREV_machine_beaglebone-yocto ?= "77c28ea0e55cabb0b22b47d4eb2cc94b0940dfe6"
+SRCREV_machine_mpc8315e-rdb ?= "f6aea5d606851f5b9d739aae36fc868d85fb649c"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+
+LINUX_VERSION_genericx86 = "5.2.10"
+LINUX_VERSION_genericx86-64 = "5.2.10"
+LINUX_VERSION_edgerouter = "5.2.10"
+LINUX_VERSION_beaglebone-yocto = "5.2.10"
+LINUX_VERSION_mpc8315e-rdb = "5.2.10"
-- 
2.14.4


