Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37B004C811B7
	for <poky@yoctoproject.org>; Sun, 23 Jan 2011 22:24:00 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jan 2011 20:23:59 -0800
Message-Id: <b9dded$ho5q9a@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,368,1291622400"; d="scan'208";a="595781933"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2011 20:23:59 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
Old-Date: Thu, 20 Jan 2011 23:49:41 -0600
Date: Sun, 23 Jan 2011 22:23:52 -0600
To: poky@yoctoproject.org,bruce.ashfield@windriver.com
Subject: [PATCH 6/6] drm: Fix psb ioctl assignment
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
X-List-Received-Date: Mon, 24 Jan 2011 04:24:00 -0000

Replace drm_ioctl with drm_unlocked_ioctl.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm-psb/drm_drv.c |    2 ++
 drivers/gpu/drm-psb/psb_drv.c |    2 +-
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm-psb/drm_drv.c b/drivers/gpu/drm-psb/drm_drv.c
index b34f2e5..573427b 100644
--- a/drivers/gpu/drm-psb/drm_drv.c
+++ b/drivers/gpu/drm-psb/drm_drv.c
@@ -663,7 +663,9 @@ long drm_unlocked_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		   ((ioctl->flags & DRM_MASTER) && !file_priv->master)) {
 		retcode = -EACCES;
 	} else {
+		lock_kernel();
 		retcode = func(dev, kdata, file_priv);
+		unlock_kernel();
 	}
 
 	if ((retcode == 0) && (cmd & IOC_OUT)) {
diff --git a/drivers/gpu/drm-psb/psb_drv.c b/drivers/gpu/drm-psb/psb_drv.c
index 794c180..67486c0 100644
--- a/drivers/gpu/drm-psb/psb_drv.c
+++ b/drivers/gpu/drm-psb/psb_drv.c
@@ -984,7 +984,7 @@ static struct drm_driver driver = {
 		 .owner = THIS_MODULE,
 		 .open = drm_open,
 		 .release = psb_release,
-		 .ioctl = drm_ioctl,
+		 .unlocked_ioctl = drm_unlocked_ioctl,
 		 .mmap = drm_mmap,
 		 .poll = psb_poll,
 		 .fasync = drm_fasync,
-- 
1.7.0.4


