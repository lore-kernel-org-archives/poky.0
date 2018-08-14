Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F680E00ADD; Mon, 13 Aug 2018 18:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C29BFE00AA9
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w7E1cPLh009775
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:25 -0700
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 13 Aug 2018 18:38:24 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 14 Aug 2018 09:31:25 +0800
Message-ID: <20180814013126.191534-6-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
In-Reply-To: <20180814013126.191534-1-kexin.hao@windriver.com>
References: <20180814013126.191534-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 5/6] meta-yocto-bsp: beaglebone: Add the u-boot boot config file for the wic image
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
X-List-Received-Date: Tue, 14 Aug 2018 01:38:26 -0000
Content-Type: text/plain

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 meta-yocto-bsp/wic/beaglebone-yocto.wks           | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index ae682a47d31b..faa4f1bd3627 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -37,4 +37,4 @@ UBOOT_LOADADDRESS = "0x80008000"
 
 MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
 
-IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO"
+IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO zImage am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/wic/beaglebone-yocto.wks
index 967cad78b870..0b5d793b73ec 100644
--- a/meta-yocto-bsp/wic/beaglebone-yocto.wks
+++ b/meta-yocto-bsp/wic/beaglebone-yocto.wks
@@ -2,5 +2,5 @@
 # long-description: Creates a partitioned SD card image for Beaglebone.
 # Boot files are located in the first vfat partition.
 
-part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16
+part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot"
 part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4
-- 
2.14.4


