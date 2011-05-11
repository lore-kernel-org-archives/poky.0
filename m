Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A83A4C80ACB
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:55 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 May 2011 02:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,351,1301900400"; d="scan'208";a="434171606"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by azsmga001.ch.intel.com with ESMTP; 11 May 2011 02:13:54 -0700
Message-Id: <1fda1b7289a283f9a86a17c37999faef0dc8808b.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 11 May 2011 15:26:38 +0800
Date: Wed, 11 May 2011 17:20:09 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 8/8] xorg-driver: update patch Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:55 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../xf86-video-omapfb/omap-blacklist-tv-out.patch  |    4 +++-
 .../xf86-video-omapfb/omap-force-plain-mode.patch  |    2 ++
 .../omap-revert-set-CRTC-limit.patch               |    2 ++
 .../omap-revert-set-virtual-size.patch             |    2 ++
 .../xorg-driver/xf86-video-omapfb/omapfb-neon.diff |    2 ++
 5 files changed, 11 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
index 506e174..9b1ee06 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-blacklist-tv-out.patch
@@ -5,7 +5,9 @@ Date:   Wed Jan 26 13:21:12 2011 +0100
     blacklist tv out
 
     The tv-out gets added last and the driver tries to reconfigure dvi to TV resolutions, which fails. so blacklist it
-    
+
+	Upstream-Status: Pending
+
     Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
 
 diff --git a/src/omapfb-output-dss.c b/src/omapfb-output-dss.c
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
index 201a8b9..bb298b0 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-force-plain-mode.patch
@@ -6,6 +6,8 @@ Date:   Wed Jan 26 13:20:20 2011 +0100
 
     The new DSS mode breaks XV, so force plain mode
 
+	Upstream-Status: Pending
+
     Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
 
 diff --git a/src/omapfb-driver.c b/src/omapfb-driver.c
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
index 6a9e905..97bf022 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-CRTC-limit.patch
@@ -8,6 +8,8 @@ Date:   Wed Jan 26 12:04:36 2011 +0100
 
     Virtual size too big, revert the commit 9c4d7592dcb7dc20a48a6f941d9d94bd73d34153.
 
+	Upstream-Status: Pending
+
 diff --git a/src/omapfb-crtc.c b/src/omapfb-crtc.c
 index 9aaa52f..cbeff35 100644
 --- a/src/omapfb-crtc.c
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch
index a3fd0d5..8a6eef5 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omap-revert-set-virtual-size.patch
@@ -8,6 +8,8 @@ Date:   Wed Jan 26 13:27:20 2011 +0100
 
     This reverts commit 2653ef07883fbd1a5e7025f9300cf89b79ba429a.
 
+	Upstream-Status: Pending
+
 diff --git a/src/omapfb-crtc.c b/src/omapfb-crtc.c
 index cbeff35..9655db2 100644
 --- a/src/omapfb-crtc.c
diff --git a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omapfb-neon.diff b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omapfb-neon.diff
index 325ca66..fb3ac8c 100644
--- a/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omapfb-neon.diff
+++ b/meta/recipes-graphics/xorg-driver/xf86-video-omapfb/omapfb-neon.diff
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 --- /tmp/image-format-conversions.h	2009-02-03 10:18:04.000000000 +0100
 +++ git/src/image-format-conversions.h	2009-02-03 10:19:18.000000000 +0100
 @@ -30,6 +30,8 @@
-- 
1.7.0.4


