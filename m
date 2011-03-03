Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C4BA4C80A71
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 10:45:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2011 08:45:07 -0800
Message-Id: <b9dded$i4g29s@orsmga002.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,258,1297065600"; d="scan'208";a="608700732"
Received: from unknown (HELO localhost) ([10.255.12.145])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2011 08:45:07 -0800
Old-Date: Mon, 28 Feb 2011 14:23:36 -0600
Date: Thu, 03 Mar 2011 10:45:01 -0600
To: bruce.ashfield@windriver.com,poky@yoctoproject.org
From: Tom Zanussi <tom.zanussi@intel.com>
Subject: [PATCH 1/1][KERNEL] emgd: add fb_info
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
X-List-Received-Date: Thu, 03 Mar 2011 16:45:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add fb_info along with a new way to store and access it.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c |   12 +++++++++++-
 1 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c b/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
index 5dc331e..4d668c8 100644
--- a/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
+++ b/drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
@@ -38,10 +38,13 @@
  */
 typedef struct _emgd_framebuffer {
 	struct drm_framebuffer base;
+	struct fb_info *info;
 	unsigned long size;
 	unsigned long offset;
 } emgd_framebuffer_t;
 
+#define to_emgd_framebuffer(x) container_of(x, struct _emgd_framebuffer, base)
+
 typedef struct _emgdfb_par {
 	struct drm_device *dev;
 	emgd_framebuffer_t *emgd_fb;
@@ -298,7 +301,8 @@ EXPORT_SYMBOL(emgd_fb_probe);
  */
 int emgd_fb_remove(struct drm_device *dev, struct drm_framebuffer *fb)
 {
-	struct fb_info *info = NULL;
+	emgd_framebuffer_t *emgd_fb = to_emgd_framebuffer(fb);
+	struct fb_info *info= emgd_fb->info;
 
 	if (info) {
 		unregister_framebuffer(info);
@@ -444,6 +448,7 @@ static struct drm_framebuffer *emgd_fb_create(struct drm_device *dev,
 
 	register_framebuffer(info);
 
+	emgd_fb->info = info;
 	par->emgd_fb = emgd_fb;
 	par->dev = dev;
 
@@ -459,10 +464,15 @@ static struct drm_framebuffer *emgd_fb_create(struct drm_device *dev,
  */
 static void emgd_fb_destroy (struct drm_framebuffer *fb)
 {
+	emgd_framebuffer_t *emgd_fb = to_emgd_framebuffer(fb);
 	struct drm_device *dev = fb->dev;
 
 	/* TODO: Unmap any pages mapped to the GTT */
 
+	if (emgd_fb->info) {
+		emgd_fb_remove(dev, fb);
+	}
+
 	drm_framebuffer_cleanup(fb);
 
 	kfree(fb);
-- 
1.7.0.4


