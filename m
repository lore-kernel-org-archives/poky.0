Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE1B74C8121A
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:31 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=jtl4GgkOhgZcwnD+zYTz+DS8oFsp2AGZJvCYc9gWTCY=;
	b=rGSUbhJufvOrAhGd9pZbpOmwx/RIR4Px76LDcsEE+CcYW4nIlVNXa/nEe8Bz3Qdfyt
	f2s62ZY7q0q9b9MUZ1Ng3KueYMMBGD7M/zNMwQlr3oLBIylY+NM2JZGPQ1L23Z9zWmfA
	ES2IOZm6r4R56HAEIYL70+YC/wjPOb7nyxrxs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=RMT0ow62cCPSYhQuHj6i3xf+LBkCzkrVayYhigiEC49LdDYoPEaa8nXmzL2RuFlDwA
	SONC3NSZdlLjL6P64NjVSZBrs7mPid+tgj3H4qbxuqA+TbNsHRuAt9vLKtuzlrYAOp2s
	iDSPz5UDf20uMfhAuXhZEbdncXh68MQoreuC0=
Received: by 10.91.103.1 with SMTP id f1mr4986816agm.182.1295295871693;
	Mon, 17 Jan 2011 12:24:31 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.29
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:30 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:37 -0600
Message-Id: <1295296178-18590-24-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 24/25] defconfig: virtex5 config for linux 2.6.37.rc4
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jan 2011 20:24:32 -0000

* Update defconfig for linux 2.6.37 rc4
* Enable xilinx spi driver

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../linux/linux-xilinx/virtex5/defconfig           |   45 +++++++++++++++++---
 1 files changed, 39 insertions(+), 6 deletions(-)

diff --git a/recipes-kernel/linux/linux-xilinx/virtex5/defconfig b/recipes-kernel/linux/linux-xilinx/virtex5/defconfig
index 087a530..e873f5e 100644
--- a/recipes-kernel/linux/linux-xilinx/virtex5/defconfig
+++ b/recipes-kernel/linux/linux-xilinx/virtex5/defconfig
@@ -24,6 +24,7 @@ CONFIG_PPC_MMU_NOHASH_32=y
 # CONFIG_PPC_MM_SLICES is not set
 CONFIG_NOT_COHERENT_CACHE=y
 CONFIG_PPC32=y
+CONFIG_32BIT=y
 CONFIG_WORD_SIZE=32
 CONFIG_ARCH_PHYS_ADDR_T_64BIT=y
 CONFIG_MMU=y
@@ -318,7 +319,7 @@ CONFIG_PPC_4K_PAGES=y
 CONFIG_FORCE_MAX_ZONEORDER=11
 CONFIG_PROC_DEVICETREE=y
 CONFIG_CMDLINE_BOOL=y
-CONFIG_CMDLINE=" debug "
+CONFIG_CMDLINE=""
 CONFIG_EXTRA_TARGETS="simpleImage.virtex440-ml507 simpleImage.initrd.virtex440-ml507"
 CONFIG_SECCOMP=y
 # CONFIG_COMPRESSED_DEVICE_TREE is not set
@@ -642,8 +643,21 @@ CONFIG_MTD_PHYSMAP_OF=y
 # UBI - Unsorted block images
 #
 # CONFIG_MTD_UBI is not set
+CONFIG_DTC=y
+CONFIG_OF=y
+
+#
+# Device Tree and Open Firmware support
+#
+CONFIG_PROC_DEVICETREE=y
+CONFIG_OF_FLATTREE=y
+CONFIG_OF_DYNAMIC=y
+CONFIG_OF_ADDRESS=y
+CONFIG_OF_IRQ=y
 CONFIG_OF_DEVICE=y
 CONFIG_OF_GPIO=y
+CONFIG_OF_SPI=y
+CONFIG_OF_MDIO=y
 # CONFIG_PARPORT is not set
 CONFIG_BLK_DEV=y
 # CONFIG_BLK_DEV_FD is not set
@@ -745,7 +759,7 @@ CONFIG_MII=y
 # CONFIG_KS8851_MLL is not set
 # CONFIG_XILINX_EMAC is not set
 # CONFIG_ATL2 is not set
-# CONFIG_XILINX_EMACLITE is not set
+CONFIG_XILINX_EMACLITE=y
 CONFIG_NETDEV_1000=y
 # CONFIG_ACENIC is not set
 # CONFIG_DL2K is not set
@@ -914,7 +928,25 @@ CONFIG_XILINX_HWICAP=y
 # CONFIG_TCG_TPM is not set
 CONFIG_DEVPORT=y
 # CONFIG_I2C is not set
-# CONFIG_SPI is not set
+CONFIG_SPI=y
+# CONFIG_SPI_DEBUG is not set
+CONFIG_SPI_MASTER=y
+
+#
+# SPI Master Controller Drivers
+#
+CONFIG_SPI_BITBANG=y
+# CONFIG_SPI_GPIO is not set
+# CONFIG_SPI_PPC4xx is not set
+# CONFIG_SPI_TOPCLIFF_PCH is not set
+CONFIG_SPI_XILINX=y
+# CONFIG_SPI_DESIGNWARE is not set
+
+#
+# SPI Protocol Masters
+#
+# CONFIG_SPI_SPIDEV is not set
+# CONFIG_SPI_TLE62X0 is not set
 
 #
 # PPS support
@@ -975,6 +1007,7 @@ CONFIG_SSB_POSSIBLE=y
 #
 # CONFIG_AGP is not set
 CONFIG_VGA_ARB=y
+CONFIG_VGA_ARB_MAX_GPUS=16
 # CONFIG_DRM is not set
 # CONFIG_VGASTATE is not set
 # CONFIG_VIDEO_OUTPUT_CONTROL is not set
@@ -1046,7 +1079,7 @@ CONFIG_FB_XILINX=y
 #
 CONFIG_DUMMY_CONSOLE=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
-# CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY is not set
+CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
 # CONFIG_FRAMEBUFFER_CONSOLE_ROTATION is not set
 CONFIG_FONTS=y
 CONFIG_FONT_8x8=y
@@ -1060,8 +1093,8 @@ CONFIG_FONT_8x16=y
 # CONFIG_FONT_SUN12x22 is not set
 # CONFIG_FONT_10x18 is not set
 CONFIG_LOGO=y
-# CONFIG_LOGO_LINUX_MONO is not set
-# CONFIG_LOGO_LINUX_VGA16 is not set
+CONFIG_LOGO_LINUX_MONO=y
+CONFIG_LOGO_LINUX_VGA16=y
 CONFIG_LOGO_LINUX_CLUT224=y
 # CONFIG_SOUND is not set
 # CONFIG_HID_SUPPORT is not set
-- 
1.7.3.4


