Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95BD4E011B2
	for <poky@yoctoproject.org>; Thu, 18 Aug 2011 22:26:29 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7J5QPYB005930;
	Thu, 18 Aug 2011 22:26:26 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Fri, 19 Aug 2011 01:26:20 -0400
Message-Id: <a6c57963b2c2434e5d95932b3ba9018c8a1cf13e.1313731370.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1313731370.git.bruce.ashfield@windriver.com>
References: <cover.1313731370.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1313731370.git.bruce.ashfield@windriver.com>
References: <cover.1313731370.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/2] meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0
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
X-List-Received-Date: Fri, 19 Aug 2011 05:26:29 -0000

Updating two more yocto hardware reference platforms to use the
3.0 kernel by default.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/machine/atom-pc.conf               |    1 +
 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 ++
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index a0a8104..81542dd 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -11,6 +11,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0+git%"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index 172deec..21fbb71 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -11,6 +11,8 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
+PREFERRED_VERSION_linux-yocto ?= "3.0+git%"
+
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
diff --git a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
index ef580a5..e224d80 100644
--- a/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
+++ b/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
@@ -9,7 +9,7 @@ SRCREV_machine_routerstationpro = "fd6d538850a28413e3c4867b905c56039773df3a"
 SRCREV_machine_mpc8315e-rdb = "5d3c0b06071abd663c7790df141060ae462660a9"
 SRCREV_machine_beagleboard = "32631d785b0b907e5c14435ef7531ed041ab8c64"
 
-# COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
+COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 # COMPATIBLE_MACHINE_beagleboard = "beagleboard"
-# COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.4.1


