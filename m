Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B43BE00321
	for <poky@yoctoproject.org>; Wed, 24 Aug 2011 13:55:10 -0700 (PDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7OKt6b5009323;
	Wed, 24 Aug 2011 13:55:07 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Wed, 24 Aug 2011 16:54:51 -0400
Message-Id: <fce8e66d31a6a69ab868585a633db2f9d5c221a3.1314219098.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1314219098.git.bruce.ashfield@windriver.com>
References: <cover.1314219098.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/3] meta-yocto: atom-pc/mpc8315e-rdb change preferred version to 3.0
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
X-List-Received-Date: Wed, 24 Aug 2011 20:55:10 -0000

Updating two more yocto hardware reference platforms to use the
3.0 kernel by default.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/machine/atom-pc.conf               |    1 +
 meta-yocto/conf/machine/mpc8315e-rdb.conf          |    4 +++-
 .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    4 ++--
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
index a0a8104..da795cd 100644
--- a/meta-yocto/conf/machine/atom-pc.conf
+++ b/meta-yocto/conf/machine/atom-pc.conf
@@ -11,6 +11,7 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 wifi \
 KERNEL_IMAGETYPE = "bzImage"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
diff --git a/meta-yocto/conf/machine/mpc8315e-rdb.conf b/meta-yocto/conf/machine/mpc8315e-rdb.conf
index c237609..d67dc18 100644
--- a/meta-yocto/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto/conf/machine/mpc8315e-rdb.conf
@@ -11,7 +11,9 @@ SERIAL_CONSOLE = "115200 ttyS0"
 
 MACHINE_FEATURES = "kernel26 keyboard pci ext2 ext3 serial"
 
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
+
 #PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
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


