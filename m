Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 23C0F4C81201
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 21:22:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jan 2011 19:22:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="651590857"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2011 19:22:47 -0800
Message-Id: <ecae45c4f85d7ccb4d88fa152e785896e92ec8db.1296098628.git.ke.yu@intel.com>
In-Reply-To: <cover.1296098628.git.ke.yu@intel.com>
References: <cover.1296098628.git.ke.yu@intel.com>
Old-Date: Tue, 25 Jan 2011 15:15:09 +0800
Date: Thu, 27 Jan 2011 11:26:18 +0800
To: poky@yoctoproject.org
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 1/1] xf86-video-omapfb: upgrade to 044617665d6737f4909aab96
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
X-List-Received-Date: Thu, 27 Jan 2011 03:22:49 -0000

From: Yu Ke <ke.yu@intel.com>

Also apply four patches from Koen to fix four issus:
- The tv-out gets added last and the driver tries to reconfigure dvi to TV resolutions, which fails
- The new DSS mode breaks XV, so force plain mode
- Picture is garbled after switching resolutions
- Virtual size too big

CC: Koen Kooi <koen@dominion.thruhere.net>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../xf86-video-omapfb/omap-blacklist-tv-out.patch  |   25 +++++++++++++++
 .../xf86-video-omapfb/omap-force-plain-mode.patch  |   23 ++++++++++++++
 .../omap-revert-set-CRTC-limit.patch               |   32 ++++++++++++++++++++
 .../omap-revert-set-virtual-size.patch             |   23 ++++++++++++++
 .../xorg-driver/xf86-video-omapfb_git.bb           |    4 ++
 6 files changed, 108 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
 create mode 100644 meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 22f0bef..69ace92 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -182,7 +182,7 @@ SRCREV_pn-xcb-proto ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xcb-proto-native ??= "d81ca233e98be8fa59e8c90d262c0516944c5a66"
 SRCREV_pn-xf86-video-intel ??= "87ea531c5dc5b39809395b277c330854aaaaf019"
 SRCREV_pn-xf86-video-intel-dri2 ??= "3dd7f0f9423bb891bc99cd3b77dc3d57e057a7ef"
-SRCREV_pn-xf86-video-omapfb ??= "6cff996abcb305460e9fa2c75569b776f099c9d5"
+SRCREV_pn-xf86-video-omapfb ??= "044617665d6737f4909aab96f91b06261dff05d2"
 SRCREV_pn-xf86-input-keyboard ??= "3e28d68b50d291938734e9684b8296ca864f3892"
 SRCREV_pn-xf86-input-mouse ??= "ea5cfe804e112f320f14ad896c7802d53551d3e6"
 SRCREV_pn-xf86-input-synaptics ??= "934bc0012f948c52aadc8eda912f7728fb7394a2"
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
new file mode 100644
index 0000000..506e174
--- /dev/null
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
@@ -0,0 +1,25 @@
+commit 05efb061f1945425d214ff6b6050883e6d8633bf
+Author: Koen Kooi <koen@dominion.thruhere.net>
+Date:   Wed Jan 26 13:21:12 2011 +0100
+
+    blacklist tv out
+
+    The tv-out gets added last and the driver tries to reconfigure dvi to TV resolutions, which fails. so blacklist it
+    
+    Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
+
+diff --git a/src/omapfb-output-dss.c b/src/omapfb-output-dss.c
+index 6cc52de..83cb711 100644
+--- a/src/omapfb-output-dss.c
++++ b/src/omapfb-output-dss.c
+@@ -205,6 +205,10 @@ OMAPFBDSSOutputDetect (xf86OutputPtr output)
+ 	if(ofb->timings[idx][0] == '\0')
+ 		return XF86OutputStatusDisconnected;
+ 
++	// Hack to disable the tv out
++	if (strncmp(output->name, "tv", 2) == 0)
++		return XF86OutputStatusDisconnected;
++
+ 	return XF86OutputStatusConnected;
+ }
+ 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
new file mode 100644
index 0000000..201a8b9
--- /dev/null
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
@@ -0,0 +1,23 @@
+commit d28a36bbadc360a9409bf9832f1d4171d7c33dad
+Author: Koen Kooi <koen@dominion.thruhere.net>
+Date:   Wed Jan 26 13:20:20 2011 +0100
+
+    force 'plain' mode
+
+    The new DSS mode breaks XV, so force plain mode
+
+    Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
+
+diff --git a/src/omapfb-driver.c b/src/omapfb-driver.c
+index 018e040..48aa09c 100644
+--- a/src/omapfb-driver.c
++++ b/src/omapfb-driver.c
+@@ -326,7 +326,7 @@ OMAPFBPreInit(ScrnInfoPtr pScrn, int flags)
+ 	OMAPFBProbeController(ofb->ctrl_name);
+ 
+ 	/* Do we have the DSS kernel API? */
+-	if (stat(SYSFS_DSS_DIR, &st) == 0) {
++	if (0) { //stat(SYSFS_DSS_DIR, &st) == 0) {
+ 		ofb->dss = TRUE;
+ 	} else {
+ 		ofb->dss = FALSE;
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
new file mode 100644
index 0000000..6a9e905
--- /dev/null
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
@@ -0,0 +1,32 @@
+commit 031516123d25a12808ab4e56ea8deda74946cdcd
+Author: Koen Kooi <koen@dominion.thruhere.net>
+Date:   Wed Jan 26 12:04:36 2011 +0100
+
+    Revert "Set a large CRTC upper limit to not prune larger resolutions"
+
+    Picture is garbled after switching resolutions, so revert it.
+
+    Virtual size too big, revert the commit 9c4d7592dcb7dc20a48a6f941d9d94bd73d34153.
+
+diff --git a/src/omapfb-crtc.c b/src/omapfb-crtc.c
+index 9aaa52f..cbeff35 100644
+--- a/src/omapfb-crtc.c
++++ b/src/omapfb-crtc.c
+@@ -190,13 +190,13 @@ OMAPFBCRTCInit(ScrnInfoPtr pScrn)
+ 	 * In practise, this doesn't seem to be supported.
+ 	 * (no way to setup the overlay offset/base address)
+ 	 */
+-	 /* FIXME: figure out what makes sense here. A known max resolution?
+-	  * framebuffer size?
+-	  */
+ 	xf86CrtcSetSizeRange(pScrn,
+-	                     8, 8, 2048, 2048);
++	                     8, 8,
++	                     ofb->state_info.xres_virtual,
++	                     ofb->state_info.yres_virtual);
+ 
+ 	ofb->crtc = xf86CrtcCreate(pScrn, &OMAPFBCrtcFuncs);
++
+ }
+ 
+ 
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch
new file mode 100644
index 0000000..a3fd0d5
--- /dev/null
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch
@@ -0,0 +1,23 @@
+commit cbae688d7df59938ccb4af534ec2ff75cbbe9221
+Author: Koen Kooi <koen@dominion.thruhere.net>
+Date:   Wed Jan 26 13:27:20 2011 +0100
+
+    Revert "Set virtual size when configuring framebuffer"
+
+    Virtual size too big, so revert it.
+
+    This reverts commit 2653ef07883fbd1a5e7025f9300cf89b79ba429a.
+
+diff --git a/src/omapfb-crtc.c b/src/omapfb-crtc.c
+index cbeff35..9655db2 100644
+--- a/src/omapfb-crtc.c
++++ b/src/omapfb-crtc.c
+@@ -98,8 +98,6 @@ OMAPFBCrtcCommitChangeMode (xf86CrtcPtr crtc)
+ 	v = ofb->state_info;
+ 	v.xres = mode->HDisplay;
+ 	v.yres = mode->VDisplay;
+-	v.xres_virtual = crtc->scrn->virtualX;
+-	v.yres_virtual = crtc->scrn->virtualY;
+ 	v.activate = FB_ACTIVATE_NOW;
+ 	v.pixclock = KHZ2PICOS(mode->Clock ? mode->Clock : 56000);
+ 	v.left_margin = mode->HTotal - mode->HSyncEnd;
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
index 2d9875e..054b96a 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb_git.bb
@@ -10,6 +10,10 @@ PR = "r1"
 PV = "0.1.1+git${SRCPV}"
 
 SRC_URI = "git://git.pingu.fi/xf86-video-omapfb.git;protocol=http \
+            file://omap-revert-set-CRTC-limit.patch \
+            file://omap-revert-set-virtual-size.patch \
+            file://omap-force-plain-mode.patch  \
+            file://omap-blacklist-tv-out.patch  \
 	"
 
 S = "${WORKDIR}/git"
-- 
1.7.0.4


