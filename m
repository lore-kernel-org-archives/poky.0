Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A8BCE01247
	for <poky@yoctoproject.org>; Thu, 22 Dec 2011 10:12:35 -0800 (PST)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-145-187.ottawa.windriver.com [128.224.145.187])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pBMICVsA014521;
	Thu, 22 Dec 2011 10:12:32 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Thu, 22 Dec 2011 13:12:18 -0500
Message-Id: <502913003ff017a5b291661d67d6fa6e6a2116bc.1324577368.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1324577368.git.bruce.ashfield@windriver.com>
References: <cover.1324577368.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1324577368.git.bruce.ashfield@windriver.com>
References: <cover.1324577368.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] linux-yocto/meta-yocto: routerstationpro/beagleboard: add 3.0.x support
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
X-List-Received-Date: Thu, 22 Dec 2011 18:12:35 -0000

Updating the routerstationpro and beagleboard compatibility and SRCREV
to pickup v3.0.12 support.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/machine/beagleboard.conf           |    1 +
 meta-yocto/conf/machine/routerstationpro.conf      |    1 +
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
 3 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/machine/beagleboard.conf b/meta-yocto/conf/machine/beagleboard.conf
index 4d21388..dd549d0 100644
--- a/meta-yocto/conf/machine/beagleboard.conf
+++ b/meta-yocto/conf/machine/beagleboard.conf
@@ -32,6 +32,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO2"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 
 KERNEL_IMAGETYPE = "uImage"
 
diff --git a/meta-yocto/conf/machine/routerstationpro.conf b/meta-yocto/conf/machine/routerstationpro.conf
index 9338ca1..83c2f8a 100644
--- a/meta-yocto/conf/machine/routerstationpro.conf
+++ b/meta-yocto/conf/machine/routerstationpro.conf
@@ -11,6 +11,7 @@ KERNEL_IMAGETYPE = "vmlinux"
 KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
 
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index 4f68bc1..e510880 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -5,11 +5,11 @@ KMACHINE_beagleboard = "yocto/standard/beagleboard"
 
 
 SRCREV_machine_atom-pc ?= "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
-SRCREV_machine_routerstationpro ?= "ed0e03a8b04388a982141919da805392b7ca1c91"
+SRCREV_machine_routerstationpro ?= "8f38705810634a84326d3a3ebe9653951aa4bf61"
 SRCREV_machine_mpc8315e-rdb ?= "58ffdb8000e34d2ba7c3ef278b26680b0886e8b5"
-SRCREV_machine_beagleboard ?= "2bba211297d10047637b8f49abd2c5415480ce4d"
+SRCREV_machine_beagleboard ?= "6b4bf6173b0bd2d1619a8218bac66ebc4681dd35"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
-# COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-# COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.4.1


