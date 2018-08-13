Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67189E00A38; Mon, 13 Aug 2018 11:04:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [188.165.38.232 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 403 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Aug 2018 11:04:25 PDT
Received: from 15.mo1.mail-out.ovh.net (15.mo1.mail-out.ovh.net
	[188.165.38.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 057D8E006D8
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 11:04:25 -0700 (PDT)
Received: from player688.ha.ovh.net (unknown [10.109.160.143])
	by mo1.mail-out.ovh.net (Postfix) with ESMTP id 42C411199DA
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 19:57:41 +0200 (CEST)
Received: from localhost.localdomain (89-66-157-179.dynamic.chello.pl
	[89.66.157.179]) (Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player688.ha.ovh.net (Postfix) with ESMTPSA id D9944200B0;
	Mon, 13 Aug 2018 19:57:39 +0200 (CEST)
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2018 19:57:13 +0200
Message-Id: <20180813175713.8094-1-maciej.pijanowski@3mdeb.com>
X-Mailer: git-send-email 2.17.1
X-Ovh-Tracer-Id: 14309343393127542430
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtjedrudefgdduvddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Subject: [PATCH] machine configs: replace deprecated "SERIAL_CONSOLE"
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
X-List-Received-Date: Mon, 13 Aug 2018 18:04:27 -0000

SERIAL_CONSOLE was already deprecated in 2013, yet still some
machine configuration files were using it. This patch replaces
it with SERIAL_CONSOLES, which is the successor.

The default value in systemd-serialgetty.bb can also be safely
transitioned from SERIAL_CONSOLE to SERIAL_CONSOLES, as this
recipe already uses SERIAL_CONSOLES within do_install().

The documentation seems to be already up do date.
beaglebone-yocto.conf in the bsp-guide already uses
SERIAL_CONSOLES. The ref-manual redirects from SERIAL_CONSOLE
to SERIAL_CONSOLES.

[YOCTO #12653]

Signed-off-by: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf       | 2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf     | 4 ++--
 meta/conf/machine/include/x86-base.inc            | 2 +-
 meta/recipes-core/systemd/systemd-serialgetty.bb  | 2 +-
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index ae682a47d31b..44c7a1af8d97 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -20,7 +20,7 @@ WKS_FILE ?= "beaglebone-yocto.wks"
 IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
 do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"
 
-SERIAL_CONSOLE = "115200 ttyO0"
+SERIAL_CONSOLES = "115200;ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "4.15%"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 61f2145fd59a..a3eeebf2f66a 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -13,7 +13,7 @@ KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "4.15%"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index eae8157eab4a..441987a78e92 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -1,5 +1,5 @@
 #@TYPE: Machine
-#@DESCRIPTION: Machine configuration for running 
+#@DESCRIPTION: Machine configuration for running
 
 TARGET_FPU = ""
 
@@ -10,7 +10,7 @@ KERNEL_IMAGETYPE = "uImage"
 EXTRA_IMAGEDEPENDS += "u-boot"
 UBOOT_MACHINE = "MPC8315ERDB_config"
 
-SERIAL_CONSOLE = "115200 ttyS0"
+SERIAL_CONSOLES = "115200;ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
diff --git a/meta/conf/machine/include/x86-base.inc b/meta/conf/machine/include/x86-base.inc
index be037beb290f..06de778b5bf9 100644
--- a/meta/conf/machine/include/x86-base.inc
+++ b/meta/conf/machine/include/x86-base.inc
@@ -12,7 +12,7 @@ IMAGE_FSTYPES ?= "hddimg"
 
 KERNEL_IMAGETYPE ?= "bzImage"
 
-SERIAL_CONSOLE ?= "115200 ttyS0"
+SERIAL_CONSOLES ?= "115200;ttyS0"
 
 #
 # kernel-related variables
diff --git a/meta/recipes-core/systemd/systemd-serialgetty.bb b/meta/recipes-core/systemd/systemd-serialgetty.bb
index d67a3c91b4a6..65a931f418de 100644
--- a/meta/recipes-core/systemd/systemd-serialgetty.bb
+++ b/meta/recipes-core/systemd/systemd-serialgetty.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0;md5=80
 
 PR = "r5"
 
-SERIAL_CONSOLE ?= "115200 ttyS0"
+SERIAL_CONSOLES ?= "115200;ttyS0"
 
 SRC_URI = "file://serial-getty@.service"
 
-- 
2.17.1


