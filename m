Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FDFCE00A1C; Wed, 27 May 2015 05:19:37 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E632FE0095D;
	Wed, 27 May 2015 05:19:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t4RCJYIM004710
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 27 May 2015 05:19:34 -0700 (PDT)
Received: from pek-khao-d1.corp.ad.wrs.com (128.224.162.156) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 27 May 2015 05:19:34 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>, <linux-yocto@yoctoproject.org>
Date: Wed, 27 May 2015 20:19:15 +0800
Message-ID: <1432729155-28307-5-git-send-email-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
References: <1432729155-28307-1-git-send-email-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH] meta-yocto-bsp: bump to linux-yocto 3.19 for the non-x86 BSPs
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
X-List-Received-Date: Wed, 27 May 2015 12:19:37 -0000
Content-Type: text/plain

Boot test for all these boards.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf                   | 2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                   | 2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                 | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend | 9 +++++++++
 4 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index fb0189d5d70d..0daebf35ceb9 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -22,7 +22,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.14%"
+PREFERRED_VERSION_linux-yocto ?= "3.19%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index 9cb84bc03780..45ef23745ccb 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.14%"
+PREFERRED_VERSION_linux-yocto ?= "3.19%"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 43bdce4b1c5b..f372f32ba6ec 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "3.14%"
+PREFERRED_VERSION_linux-yocto ?= "3.19%"
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
index cd3e242e149b..e6aea1c4058b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend
@@ -1,11 +1,20 @@
 KBRANCH_genericx86  = "standard/common-pc"
 KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+KBRANCH_edgerouter = "standard/edgerouter"
+KBRANCH_beaglebone = "standard/beaglebone"
+KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
 SRCREV_machine_genericx86 ?= "0befa35f40997c90936047e57fbbdd7edbf7e525"
 SRCREV_machine_genericx86-64 ?= "0befa35f40997c90936047e57fbbdd7edbf7e525"
+SRCREV_machine_edgerouter ?= "2a5e3b16afa1e599df55aa4c3341c66f317172c9"
+SRCREV_machine_beaglebone ?= "2a5e3b16afa1e599df55aa4c3341c66f317172c9"
+SRCREV_machine_mpc8315e-rdb ?= "2d5ac895707436a0d9afcbb96cd3b68a6e443771"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE_edgerouter = "edgerouter"
+COMPATIBLE_MACHINE_beaglebone = "beaglebone"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-- 
2.1.0


