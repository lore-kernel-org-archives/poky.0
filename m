Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1E9FE00C3A; Tue, 20 Sep 2016 05:03:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A988E00AC5;
	Tue, 20 Sep 2016 05:02:31 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u8KC2UB0013583
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 20 Sep 2016 05:02:30 -0700
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 20 Sep 2016 05:02:29 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <linux-yocto@yoctoproject.org>, <poky@yoctoproject.org>
Date: Tue, 20 Sep 2016 20:01:43 +0800
Message-ID: <20160920120143.159649-2-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20160920120143.159649-1-kexin.hao@windriver.com>
References: <20160920120143.159649-1-kexin.hao@windriver.com>
MIME-Version: 1.0
Subject: [kernel-meta] meta-yocto-bsp: beaglebone: linux-4.1: remove the stale kernel options
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
X-List-Received-Date: Tue, 20 Sep 2016 12:03:01 -0000
Content-Type: text/plain

The kernel_configcheck complains about these unnecessary kernel options.
The final .config is the same with or without them.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 bsp/beaglebone/beaglebone.cfg | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/bsp/beaglebone/beaglebone.cfg b/bsp/beaglebone/beaglebone.cfg
index 781ecfc27901..38c7c0a5390d 100644
--- a/bsp/beaglebone/beaglebone.cfg
+++ b/bsp/beaglebone/beaglebone.cfg
@@ -239,19 +239,15 @@ CONFIG_FB_TILEBLITTING=y
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
 CONFIG_OMAP2_VRFB=y
 CONFIG_OMAP2_DSS=y
-# CONFIG_OMAP2_DSS_COLLECT_IRQ_STATS is not set
 CONFIG_OMAP2_DSS_DPI=y
-# CONFIG_OMAP2_DSS_RFBI is not set
 CONFIG_OMAP2_DSS_VENC=y
 # CONFIG_OMAP2_DSS_SDI is not set
 CONFIG_OMAP2_DSS_DSI=y
-- 
2.9.3


