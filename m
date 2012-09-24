Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BC51E0049F
	for <poky@yoctoproject.org>; Mon, 24 Sep 2012 13:31:38 -0700 (PDT)
Received: from yow-bashfiel-l1.wrs.com (yow-bashfiel-d3.wrs.com
	[128.224.147.67])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q8OKVZ3d001058;
	Mon, 24 Sep 2012 13:31:36 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 24 Sep 2012 16:31:06 -0400
Message-Id: <9c3d7421375b0339bf91506960b906e15030e9d6.1348518450.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1348518450.git.bruce.ashfield@windriver.com>
References: <cover.1348518450.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1348518450.git.bruce.ashfield@windriver.com>
References: <cover.1348518450.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, liang.li@windriver.com
Subject: [PATCH 1/1] beagleboard: update to 3.4
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
X-List-Received-Date: Mon, 24 Sep 2012 20:31:38 -0000

Updating the default preference of the beagleboard to the 3.4
kernel.

build, boot and testing has been done on the beagleboard (revC) and
beagleboard XM. Existing functionality has been confirmed using
core-image-sato, and in particular mouse, keyboard and graphics have
been re-validated.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf       |    2 +-
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index dbce1e2..6633880 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -29,7 +29,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO2"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 KERNEL_IMAGETYPE = "uImage"
 
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index b1ee952..6a6176e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -11,5 +11,5 @@ SRCREV_machine_beagleboard ?= "59c3ff750831338d05ab67d5efd7fc101c451aff"
 
 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-# COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
-- 
1.7.5.4


