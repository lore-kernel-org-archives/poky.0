Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A7BCE006F9
	for <poky@yoctoproject.org>; Mon, 22 Apr 2013 14:20:32 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3MLKIJS012341;
	Mon, 22 Apr 2013 14:20:20 -0700 (PDT)
From: michel.thebeau@windriver.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org
Date: Mon, 22 Apr 2013 17:20:15 -0400
Message-Id: <1366665616-24832-2-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
References: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
Cc: dvhart@linux.intel.com
Subject: [PATCH] routerstationpro: move board off 3.4 and onto the 3.8 kernel
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
X-List-Received-Date: Mon, 22 Apr 2013 21:20:32 -0000

From: Michel Thebeau <michel.thebeau@windriver.com>

The updated patch series to support this target is in place on the BSP
specific branch in the 3.8 kernel tree now[1], so we can move it ahead
off of the old 3.4 kernel.

[1] https://lists.yoctoproject.org/pipermail/linux-yocto/2013-April/000542.html

Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
---
 meta-yocto-bsp/conf/machine/routerstationpro.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
index 723625b..d9575eb 100644
--- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
+++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.4%"
+PREFERRED_VERSION_linux-yocto ?= "3.8%"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
-- 
1.7.9.7


