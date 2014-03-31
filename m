Return-Path: <denis@denix.org>
Received: from vms173021pub.verizon.net (vms173021pub.verizon.net
	[206.46.173.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25CC1E00C0B;
	Mon, 31 Mar 2014 08:04:56 -0700 (PDT)
Received: from gandalf.denix.org ([unknown] [71.191.205.189])
	by vms173021.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009))
	with ESMTPA id <0N3B00I3E37FL7G0@vms173021.mailsrvcs.net>; Mon,
	31 Mar 2014 10:04:38 -0500 (CDT)
Received: from localhost.localdomain (elrond [192.168.0.7])
	by gandalf.denix.org (Postfix) with ESMTP id 5047E200BA; Mon,
	31 Mar 2014 11:04:27 -0400 (EDT)
From: Denys Dmytriyenko <denis@denix.org>
To: yocto@yoctoproject.org,	poky@yoctoproject.org
Date: Mon, 31 Mar 2014 11:04:25 -0400
Message-id: <1396278265-1705-1-git-send-email-denis@denix.org>
X-Mailer: git-send-email 1.9.1
Cc: Denys Dmytriyenko <denys@ti.com>
Subject: [PATCH] beaglebone: fix typo in the U-Boot config name
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
X-List-Received-Date: Mon, 31 Mar 2014 15:04:57 -0000

From: Denys Dmytriyenko <denys@ti.com>

Signed-off-by: Denys Dmytriyenko <denys@ti.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 1dcf351..8b474a5 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -30,7 +30,7 @@ KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
-UBOOT_MACHINE = "am335_evm_config"
+UBOOT_MACHINE = "am335x_evm_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
 
-- 
1.9.1


