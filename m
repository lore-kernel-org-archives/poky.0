Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 961A64C81218
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:38 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="862205750"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 22:09:38 -0800
Message-Id: <0641e18db5c21747e3134d707e0e775c376882e7.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 27 Nov 2010 23:36:28 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/13] gst-fluendo-mpegdemux: Fix LICENSE info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:38 -0000

Add LIC_FILES_CHKSUM information

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    4 ++++
 meta/recipes-multimedia/gstreamer/gst-fluendo.inc  |    1 -
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
index 81645ac..3757c58 100644
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
@@ -1,2 +1,6 @@
 require gst-fluendo.inc
 DESCRIPTION = "Fluendo closed-format mpeg video GStreamer plug-in"
+
+LICENSE = "MPLv1.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=be282f1c3cc9a98cc0dc5c2b25dfc510 \
+                    file://src/gstmpegdemux.h;beginline=1;endline=19;md5=3321040ac920ff350d21dc3a62587882"
diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo.inc b/meta/recipes-multimedia/gstreamer/gst-fluendo.inc
index 76b76c2..0ec4b12 100644
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo.inc
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo.inc
@@ -1,7 +1,6 @@
 DESCRIPTION = "Fluendo closed-format GStreamer plug-in"
 SECTION = "multimedia"
 PRIORITY = "optional"
-LICENSE = "MIT"
 HOMEPAGE = "http://www.fluendo.com/resources/source-plugins.php"
 DEPENDS = "gstreamer zlib"
 
-- 
1.6.3.3


