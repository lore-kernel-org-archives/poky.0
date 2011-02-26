Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66E654C80A9C
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 18:36:26 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Feb 2011 16:36:25 -0800
Message-Id: <849307$bo2176@azsmga001.ch.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,229,1297065600"; d="scan'208";a="394331372"
Received: from unknown (HELO localhost) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 25 Feb 2011 16:36:25 -0800
Old-Date: Thu, 24 Feb 2011 22:45:58 -0600
Date: Fri, 25 Feb 2011 18:36:21 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 3/3][KERNEL 2.6.37] emgd: changes needed for 2.6.37
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
X-List-Received-Date: Sat, 26 Feb 2011 00:36:26 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

- change MUTEX_init()s to explicit sema_init()s
- remove get_map_ofs/get_reg_ofs from struct drm_driver - removed as
  there was only one user, the others were cut-and-paste remnants
- fb_changed() was removed, move emgd_fb_probe() to init
- emgd_crtc_gamma_set() param changes
- change DECLARE_MUTEX() to DEFINE_SEMAPHORE
- remove fbdev for now, a later patch will re-add it

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../drm/emgd/emgd/core/init/plb/micro_init_plb.c   |    2 +-
 .../drm/emgd/emgd/core/init/tnc/micro_init_tnc.c   |    2 +-
 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c           |    2 --
 drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c            |   20 ++++++--------------
 drivers/gpu/drm/emgd/emgd/gmm/gtt.c                |    4 ++--
 .../drm/emgd/pvr/services4/srvkm/common/resman.c   |    2 +-
 6 files changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/emgd/emgd/core/init/plb/micro_init_plb.c b/drivers/gpu/drm/emgd/emgd/core/init/plb/micro_init_plb.c
index 0eb165f..e4c153e 100644
--- a/drivers/gpu/drm/emgd/emgd/core/init/plb/micro_init_plb.c
+++ b/drivers/gpu/drm/emgd/emgd/core/init/plb/micro_init_plb.c
@@ -348,7 +348,7 @@ static int query_plb(
 
 	context->platform_context = (void *)&platform_context_plb;
 
-	OS_PTHREAD_MUTEX_INIT(&platform_context_plb.flip_mutex, NULL);
+	sema_init(&platform_context_plb.flip_mutex, 1);
 
 	/*
 	 * Current specs indicate that PLB has only one PCI function.
diff --git a/drivers/gpu/drm/emgd/emgd/core/init/tnc/micro_init_tnc.c b/drivers/gpu/drm/emgd/emgd/core/init/tnc/micro_init_tnc.c
index d6b2bf2..01f9810 100644
--- a/drivers/gpu/drm/emgd/emgd/core/init/tnc/micro_init_tnc.c
+++ b/drivers/gpu/drm/emgd/emgd/core/init/tnc/micro_init_tnc.c
@@ -440,7 +440,7 @@ static int query_tnc(
 	platform_context->did = context->device_context.did;
 	context->platform_context = (void *)&platform_context_tnc;
 
-	OS_PTHREAD_MUTEX_INIT(&platform_context_tnc.flip_mutex, NULL);
+	sema_init(&platform_context_tnc.flip_mutex, 1);
 
 	/* find and store the bridge dev since we will be using it a lot
 	 * in the init modules */
diff --git a/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c b/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
index ab90e44..5c85f49 100644
--- a/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
+++ b/drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
@@ -1920,8 +1920,6 @@ static struct drm_driver driver = {
 	.irq_uninstall      = emgd_driver_irq_uninstall,
 	.irq_handler        = emgd_driver_irq_handler,
 	.reclaim_buffers    = drm_core_reclaim_buffers,
-	.get_map_ofs        = drm_core_get_map_ofs,
-	.get_reg_ofs        = drm_core_get_reg_ofs,
 	.ioctls             = emgd_ioctl,
 	.fops = {
 		.owner   = THIS_MODULE,
diff --git a/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c b/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
index 13150cb..5dc331e 100644
--- a/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
+++ b/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
@@ -80,7 +80,6 @@ static int emgd_fb_blank(int blank, struct fb_info *info);
 
 static const struct drm_mode_config_funcs emgd_mode_funcs = {
 	.fb_create = emgd_fb_create,
-	.fb_changed = emgd_fb_probe,
 };
 
 static const struct drm_framebuffer_funcs emgd_fb_funcs = {
@@ -120,8 +119,8 @@ static int emgd_crtc_cursor_set(struct drm_crtc *crtc,
 		uint32_t width, uint32_t height);
 static int emgd_crtc_cursor_move(struct drm_crtc *crtc, int x, int y);
 static void emgd_crtc_gamma_set(struct drm_crtc *crtc,
-		unsigned short *red, unsigned short *green, unsigned short *blue,
-		uint32_t size);
+		u16 *red, u16 *green, u16 *blue,
+		uint32_t start, uint32_t size);
 static void emgd_crtc_destroy(struct drm_crtc *crtc);
 
 
@@ -270,6 +269,7 @@ void emgd_ms_init(struct drm_device *dev)
 	 * This is a lot of the code that impliments KMS.
 	 */
 
+	emgd_fb_probe(dev);
 }
 
 
@@ -298,9 +298,7 @@ EXPORT_SYMBOL(emgd_fb_probe);
  */
 int emgd_fb_remove(struct drm_device *dev, struct drm_framebuffer *fb)
 {
-	struct fb_info *info;
-
-	info = fb->fbdev;
+	struct fb_info *info = NULL;
 
 	if (info) {
 		unregister_framebuffer(info);
@@ -371,7 +369,6 @@ static struct drm_framebuffer *emgd_fb_create(struct drm_device *dev,
 	info->fbops = (struct fb_ops*)&emgd_fb_ops; 
 	info->screen_base = 0;  /* FIXME: This is kernel memory address */
 	info->screen_size = emgd_fb->size;
-	info->pseudo_palette = emgd_fb->base.pseudo_palette;
 
 	info->var.xres_virtual = emgd_fb->base.width;
 	info->var.yres_virtual = emgd_fb->base.height;
@@ -447,7 +444,6 @@ static struct drm_framebuffer *emgd_fb_create(struct drm_device *dev,
 
 	register_framebuffer(info);
 
-	emgd_fb->base.fbdev = info;
 	par->emgd_fb = emgd_fb;
 	par->dev = dev;
 
@@ -467,10 +463,6 @@ static void emgd_fb_destroy (struct drm_framebuffer *fb)
 
 	/* TODO: Unmap any pages mapped to the GTT */
 
-	if (fb->fbdev) {
-		emgd_fb_remove(dev, fb);
-	}
-
 	drm_framebuffer_cleanup(fb);
 
 	kfree(fb);
@@ -614,8 +606,8 @@ static int emgd_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
 }
 
 static void emgd_crtc_gamma_set(struct drm_crtc *crtc,
-		unsigned short *red, unsigned short *green, unsigned short *blue,
-		uint32_t size)
+		u16 *red, u16 *green, u16 *blue,
+		uint32_t start, uint32_t size)
 {
 	printk(KERN_ALERT "emgd_crtc_gamma_set: STUB\n");
 }
diff --git a/drivers/gpu/drm/emgd/emgd/gmm/gtt.c b/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
index 9af741c..5c1f1c2 100644
--- a/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
+++ b/drivers/gpu/drm/emgd/emgd/gmm/gtt.c
@@ -38,8 +38,8 @@
 #define ST_BIT	0x00000004 /* bit2- stolen memory bit */
 #define PSB_PTE_VALID  0x0001
 
-static DECLARE_MUTEX(client_sem);
-static DECLARE_MUTEX(gtt_sem);
+static DEFINE_SEMAPHORE(client_sem);
+static DEFINE_SEMAPHORE(gtt_sem);
 
 struct client_list_struct {
 	struct list_head list;
diff --git a/drivers/gpu/drm/emgd/pvr/services4/srvkm/common/resman.c b/drivers/gpu/drm/emgd/pvr/services4/srvkm/common/resman.c
index 3c53c1c..1b2718b 100644
--- a/drivers/gpu/drm/emgd/pvr/services4/srvkm/common/resman.c
+++ b/drivers/gpu/drm/emgd/pvr/services4/srvkm/common/resman.c
@@ -46,7 +46,7 @@
 #include <asm/semaphore.h>
 #endif
 
-static DECLARE_MUTEX(lock);
+static DEFINE_SEMAPHORE(lock);
 
 #define ACQUIRE_SYNC_OBJ  do {							\
 		if (in_interrupt()) { 							\
-- 
1.7.0.4


