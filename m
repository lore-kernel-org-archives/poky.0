Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C3BE014D1
	for <poky@yoctoproject.org>; Thu, 28 Mar 2013 12:33:14 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2SJX9tk024526;
	Thu, 28 Mar 2013 12:33:10 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com
Date: Thu, 28 Mar 2013 15:32:55 -0400
Message-Id: <1364499175-29014-2-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1364499175-29014-1-git-send-email-michel.thebeau@windriver.com>
References: <1364499175-29014-1-git-send-email-michel.thebeau@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] routerstationpro: swap KERNEL_IMAGETYPE and KERNEL_ALT_IMAGETYPE
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
X-List-Received-Date: Thu, 28 Mar 2013 19:33:15 -0000

From: Michel Thebeau <michel.thebeau@windriver.com>

The routerstationpro has a 16mb flash which the kernel image should
fit into.  The default build type for vmlinux then should be the
stripped arch/mips/boot/vmlinux.bin.

Swapping KERNEL_IMAGETYPE and KERNEL_ALT_IMAGETYPE for rsp causes
vmlinux.bin to be linked in tmp/deploy/images instead of vmlinux, and
causes vmlinux.bin to appear in the kernel rpm file.

[YOCTO #3515]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
---
 meta-yocto-bsp/conf/machine/routerstationpro.conf |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
index e5e4d1a..a727e2a 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -6,8 +6,8 @@ require conf/machine/include/tune-mips32.inc
 
 MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 serial"
 
-KERNEL_IMAGETYPE = "vmlinux"
-KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
+KERNEL_ALT_IMAGETYPE = "vmlinux"
+KERNEL_IMAGETYPE = "vmlinux.bin"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.4%"
-- 
1.7.9.7


