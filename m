Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC24E006F9
	for <poky@yoctoproject.org>; Mon, 22 Apr 2013 14:20:31 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3MLKIJT012341;
	Mon, 22 Apr 2013 14:20:21 -0700 (PDT)
From: michel.thebeau@windriver.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org
Date: Mon, 22 Apr 2013 17:20:16 -0400
Message-Id: <1366665616-24832-3-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
References: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
Cc: dvhart@linux.intel.com
Subject: [PATCH] kernel 3.8: routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image
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
X-List-Received-Date: Mon, 22 Apr 2013 21:20:31 -0000

From: Michel Thebeau <michel.thebeau@windriver.com>

routerstationpro is limited to 16mb flash size.  Exceeding that size may
not be noticed immediately, which we don't want.

"The current latest kernel for the routerstationpro machine is far
beyond the 16MB of it's flash size [0]. I think it would be good to
[test if the size of the image is above that size]."

Setting this variable will enable the do_sizecheck task and produce an
error when the image is too large:

"ERROR: This kernel (size=90230265 > 16777216) is too big for your
device. Please reduce the size of the kernel by making more of it
modular."

Taken from commit 83716e40edacfd20dec8ef41f415ad5828d4643b.

[YOCTO #3514]

Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.8.bbappend  |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
index 479a386..769dcc0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -12,3 +12,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+
+# routerstationpro has a flash size of 16mb
+KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
-- 
1.7.9.7


