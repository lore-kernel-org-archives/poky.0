Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 129A8E0136C
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 08:32:11 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2KFWApW022837;
	Wed, 20 Mar 2013 08:32:11 -0700 (PDT)
From: michel.thebeau@windriver.com
To: Bruce.Ashfield@windriver.com, poky@yoctoproject.org
Date: Wed, 20 Mar 2013 11:32:02 -0400
Message-Id: <1363793522-3452-2-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1363793522-3452-1-git-send-email-michel.thebeau@windriver.com>
References: <1363793522-3452-1-git-send-email-michel.thebeau@windriver.com>
Subject: [PATCH] routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image
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
X-List-Received-Date: Wed, 20 Mar 2013 15:32:12 -0000

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

[YOCTO #3514]

Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 3e80bf1..40ebe15 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -13,3 +13,6 @@ COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
 COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
+
+# routerstationpro has a flash size of 16mb
+KERNEL_IMAGE_MAXSIZE_append_routerstationpro = "16777216"
-- 
1.7.9.7


