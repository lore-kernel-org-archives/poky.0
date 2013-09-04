Return-Path: <liming.wang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFFA5E013AB
	for <poky@yoctoproject.org>; Wed,  4 Sep 2013 00:22:09 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r847M6VJ013238
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Sep 2013 00:22:06 -0700 (PDT)
Received: from pek-lwang0-d1.corp.ad.wrs.com (128.224.162.222) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Wed, 4 Sep 2013 00:22:06 -0700
From: Liming Wang <liming.wang@windriver.com>
To: <saul.wold@intel.com>, <richard.purdie@linuxfoundation.org>
Date: Wed, 4 Sep 2013 15:08:29 +0800
Message-ID: <1378278510-19727-2-git-send-email-liming.wang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1378278510-19727-1-git-send-email-liming.wang@windriver.com>
References: <1378278510-19727-1-git-send-email-liming.wang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] beagleboard: upgrade u-boot to the latest version
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
X-List-Received-Date: Wed, 04 Sep 2013 07:22:10 -0000
Content-Type: text/plain

Now the latest version of u-boot is 2013.07 and it depends on
its own MLO, instead of x-load, as the Second Program Loader. So remove
x-load and use u-boot's MLO.

And also replace u-boot.bin with u-boot.img as the u-boot image file.

Signed-off-by: Liming Wang <liming.wang@windriver.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index 6633880..5f4c55a 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -13,7 +13,7 @@ XSERVER ?= "xserver-xorg \
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
 
 # Allow for MMC booting (required by the NAND-less Beagleboard XM)
-EXTRA_IMAGEDEPENDS += "u-boot x-load"
+EXTRA_IMAGEDEPENDS += "u-boot"
 
 # Uncomment the following line to enable the hard floating point abi. Note that
 # this breaks some binary libraries and 3D (neither of which ship with
@@ -33,6 +33,8 @@ PREFERRED_VERSION_linux-yocto ?= "3.4%"
 
 KERNEL_IMAGETYPE = "uImage"
 
+SPL_BINARY = "MLO"
+UBOOT_SUFFIX = "img"
 UBOOT_MACHINE = "omap3_beagle_config"
 UBOOT_ENTRYPOINT = "0x80008000"
 UBOOT_LOADADDRESS = "0x80008000"
-- 
1.7.9.5


