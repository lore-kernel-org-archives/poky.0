Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A998E00282
	for <poky@yoctoproject.org>; Fri,  6 Sep 2013 13:58:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r86KwhOw005758
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 6 Sep 2013 13:58:43 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.147.67) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Fri, 6 Sep 2013 13:58:42 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 6 Sep 2013 16:58:36 -0400
Message-ID: <373355466ed7a2c31efd16f1b07c0d089c9d38d5.1378500902.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1378500902.git.bruce.ashfield@windriver.com>
References: <cover.1378500902.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 3/4] beagleboard: upgrade the kernel to 3.10.x
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
X-List-Received-Date: Fri, 06 Sep 2013 20:58:45 -0000
Content-Type: text/plain

From: Liming Wang <liming.wang@windriver.com>

In 3.10.x linux kernel, uImage can't be compiled by default. But zImage
has been supported by the latest u-boot, so use zImage as the default kernel
image file. In u-boot command, use "bootz", instead of "bootm", to boot the kernel.

And add device tree files to support dtb in latest kernel.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index 5f4c55a..dd0c222 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -29,9 +29,10 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO2"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.4%"
+PREFERRED_VERSION_linux-yocto ?= "3.10%"
 
-KERNEL_IMAGETYPE = "uImage"
+KERNEL_IMAGETYPE = "zImage"
+KERNEL_DEVICETREE = "${S}/arch/powerpc/boot/dts/omap3-beagle.dts ${S}/arch/powerpc/boot/dts/omap3-beagle-xm.dts"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
-- 
1.7.10.4


