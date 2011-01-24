Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78AD74C81209
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:24:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Jan 2011 20:24:05 -0800
Message-Id: <0d30dc$krcrmj@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="699821781"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by orsmga001.jf.intel.com with ESMTP; 23 Jan 2011 20:23:56 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 20 Jan 2011 23:46:33 -0600
Date: Sun, 23 Jan 2011 22:23:49 -0600
To: poky@yoctoproject.org,bruce.ashfield@windriver.com
Subject: [PATCH 4/6] drm: intel_ldvs.c: add missing arg to backlight_device_register() call
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
X-List-Received-Date: Mon, 24 Jan 2011 04:24:06 -0000

backlight_device_register() added a backlight_props param - give it
another arg to keep it happy.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/intel_lvds.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm-psb/intel_lvds.c b/drivers/gpu/drm-psb/intel_lvds.c
index 16fbd79..a778436 100644
--- a/drivers/gpu/drm-psb/intel_lvds.c
+++ b/drivers/gpu/drm-psb/intel_lvds.c
@@ -801,8 +801,10 @@ void intel_lvds_init(struct drm_device *dev)
 	}
 
 	if ((blc_type == BLC_I2C_TYPE) || (blc_type == BLC_PWM_TYPE)){	
+		struct backlight_properties props;
+		memset(&props, 0, sizeof(struct backlight_properties));
 		/* add /sys/class/backlight interface as standard */
-		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops);
+		psbbl_device = backlight_device_register("psblvds", &dev->pdev->dev, dev, &psbbl_ops, &props);
 		if (psbbl_device){
 #if LINUX_VERSION_CODE <= KERNEL_VERSION(2,6,20)
 			down(&psbbl_device->sem);
-- 
1.7.0.4


