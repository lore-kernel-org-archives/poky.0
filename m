Return-Path: <edwin.plauchu.camacho@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C5EEE0093E; Mon,  9 May 2016 12:08:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAF57E008D2
	for <poky@yoctoproject.org>; Mon,  9 May 2016 12:08:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 09 May 2016 12:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,601,1455004800"; d="scan'208";a="975955515"
Received: from pianodaemon-contraption.zpn.intel.com ([10.219.128.59])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2016 12:08:55 -0700
From: edwin.plauchu.camacho@linux.intel.com
To: poky@yoctoproject.org
Date: Mon,  9 May 2016 14:09:02 -0500
Message-Id: <1462820942-15825-1-git-send-email-edwin.plauchu.camacho@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Cc: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: [PATCH] meta-yocto-bsp: Enable xf86 modeset for beaglebone
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
X-List-Received-Date: Mon, 09 May 2016 19:08:57 -0000

From: Edwin Plauchu <edwin.plauchu.camacho@intel.com>

The modesetting driver is better than fbdev driver. This patch is enabling so for beaglebone BSP (Without 3D accelaration).

[YOCTO #7561]

Signed-off-by: Edwin Plauchu <edwin.plauchu.camacho@intel.com>
---
 meta-yocto-bsp/conf/machine/beaglebone.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf b/meta-yocto-bsp/conf/machine/beaglebone.conf
index 179d135..ea50acc 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
@@ -6,7 +6,7 @@ PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-fbdev \
+           xf86-video-modesetting \
            xf86-input-keyboard"
 
 MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
-- 
1.9.1


