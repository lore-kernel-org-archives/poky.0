Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B06E00B7A; Tue, 20 Sep 2016 05:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB38BE00B7B;
	Tue, 20 Sep 2016 05:00:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8KC0laT013543
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 20 Sep 2016 05:00:47 -0700
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 05:00:46 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 20:00:25 +0800
Message-ID: <20160920120025.159211-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920120025.159211-1-kexin.hao@windriver.com>
References: <20160920120025.159211-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel-meta] meta-yocto-bsp: beaglebone: remove the stale kernel options
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
X-List-Received-Date: Tue, 20 Sep 2016 12:01:09 -0000
Content-Type: text/plain

The kernel_configcheck complains about these unnecessary kernel options.
The final .config is the same with or without them.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 bsp/beaglebone/beaglebone.cfg | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/bsp/beaglebone/beaglebone.cfg b/bsp/beaglebone/beaglebone.cfg
index a6fe6d33d586..4c786d0afbef 100644
--- a/bsp/beaglebone/beaglebone.cfg
+++ b/bsp/beaglebone/beaglebone.cfg
@@ -229,7 +229,6 @@ CONFIG_FB_CFB_FILLRECT=y
 CONFIG_FB_CFB_COPYAREA=y
 CONFIG_FB_CFB_IMAGEBLIT=y
 # CONFIG_FB_FOREIGN_ENDIAN is not set
-# CONFIG_FB_SYS_FOPS is not set
 # CONFIG_FB_SVGALIB is not set
 # CONFIG_FB_MACMODES is not set
 # CONFIG_FB_BACKLIGHT is not set
@@ -240,26 +239,19 @@ CONFIG_FB_TILEBLITTING=y
 # Frame buffer hardware drivers
 #
 # CONFIG_FB_S1D13XXX is not set
-# CONFIG_FB_TMIO is not set
 # CONFIG_FB_VIRTUAL is not set
 # CONFIG_FB_METRONOME is not set
-# CONFIG_FB_MB862XX is not set
 # CONFIG_FB_BROADSHEET is not set
 # CONFIG_FB_OMAP_BOOTLOADER_INIT is not set
 # CONFIG_FB_DA8XX is not set
 # CONFIG_FB_DA8XX_TDA998X is not set
-CONFIG_OMAP2_VRFB=y
 CONFIG_OMAP2_DSS=y
-# CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS is not set
 CONFIG_OMAP2_DSS_DPI=y
-# CONFIG_OMAP2_DSS_RFBI is not set
 CONFIG_OMAP2_DSS_VENC=y
 # CONFIG_OMAP2_DSS_SDI is not set
 CONFIG_OMAP2_DSS_DSI=y
 # CONFIG_OMAP2_DSS_FAKE_VSYNC is not set
 CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=0
-CONFIG_FB_OMAP2=y
-CONFIG_FB_OMAP2_NUM_FBS=3
 
 #
 # OMAP Display Device Drivers (new device model)
-- 
2.9.3


