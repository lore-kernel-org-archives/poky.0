Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63D7AE014CB
	for <poky@yoctoproject.org>; Wed, 10 Apr 2013 05:37:41 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3ACbZBh014714;
	Wed, 10 Apr 2013 05:37:35 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, poky@yoctoproject.org
Date: Wed, 10 Apr 2013 08:37:33 -0400
Message-Id: <1365597453-16109-2-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1365597453-16109-1-git-send-email-michel.thebeau@windriver.com>
References: <1365597453-16109-1-git-send-email-michel.thebeau@windriver.com>
Subject: [PATCH] routerstationpro: strip the output kernel of .comment section
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
X-List-Received-Date: Wed, 10 Apr 2013 12:37:41 -0000

From: Michel Thebeau <michel.thebeau@windriver.com>

The routerstationpro has a 16mb flash which the kernel image should
fit into.  The default build type for vmlinux then should be a
stripped vmlinux.

Use KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  to do this.

Reverts commit 9cd3816e4db97c8fd093a120a75a2b5d193afcdd, which causes:
RedBoot> load -v vlm-boards/19256/kernel
Using default protocol (TFTP)
Unrecognized image type: 0x0

[YOCTO 3515]
[YOCTO 4220]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
---
 meta-yocto-bsp/conf/machine/routerstationpro.conf |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
index a727e2a..723625b 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -6,8 +6,9 @@ require conf/machine/include/tune-mips32.inc
 
 MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
 
-KERNEL_ALT_IMAGETYPE = "vmlinux"
-KERNEL_IMAGETYPE = "vmlinux.bin"
+KERNEL_IMAGETYPE = "vmlinux"
+KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
+KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
-- 
1.7.9.7


