Return-Path: <net147@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96453E01358
	for <poky@yoctoproject.org>; Tue,  3 Sep 2013 18:47:07 -0700 (PDT)
Received: by mail-pb0-f43.google.com with SMTP id md4so6765345pbc.16
	for <poky@yoctoproject.org>; Tue, 03 Sep 2013 18:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ebOC5AAgm6sjPRr4/VEIIiq7sfbYDQuEHsY7MiIWl4E=;
	b=DR8/yprOM5naUH7cJE5S9Mb6Smg5OF1Q+bG5J9R2L9r0tupm73023eBDAdc8nFA32m
	QlNHSluOc0tdjisQaqjuKnU77tDvo7yolGDOADZIWgdcIl1uuNNFa/EP0GtgSm21KOs+
	GvNffL5qHJtO4WWZk6A+FJp9HNQLp7qbQWEHG0bQp7DqYfVWS3zteYOcw4NYQepIAo+d
	NkCA8SGAwh2exa48O01h3jfpLkB2nhVSrzDnTADhfudebyL8kIOLeDw3m9q+0lPMcku3
	6f4bR3DaJqnSYkGjfIr+uYwsFBHdQ411njRs2GCwvqzdNX8BZ73qCI5C4YKEvbHWXQFX
	Lgeg==
X-Received: by 10.66.178.143 with SMTP id cy15mr462963pac.105.1378259227685;
	Tue, 03 Sep 2013 18:47:07 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by mx.google.com with ESMTPSA id
	iu7sm25494408pbc.45.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 18:47:07 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: poky@yoctoproject.org
Date: Wed,  4 Sep 2013 11:43:35 +1000
Message-Id: <1378259015-25126-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 1.8.4
Subject: [PATCH] genericx86: tune for i586 instead of atom
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
X-List-Received-Date: Wed, 04 Sep 2013 01:47:08 -0000

Tuning for Intel Atom CPU can in result instructions being used that are
not compatible with older x86 CPUs such as Intel Pentium Dual-Core
E2200. This can result in Linux 3.10 failing to boot with:
"This kernel requires the following features not present on the CPU:
movbe
Unable to boot - please use a kernel appropriate for your CPU.".

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 meta-yocto-bsp/conf/machine/genericx86.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index ff5cbc9..f5d9cd5 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -3,7 +3,7 @@
 
 #@DESCRIPTION: Machine configuration for generic X86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
 
-include conf/machine/include/tune-atom.inc
+include conf/machine/include/tune-i586.inc
 
 MACHINE_FEATURES = "screen keyboard pci usbhost ext2 ext3 x86 wifi acpi alsa"
 
-- 
1.8.4


