Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A42B4C81199
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:01:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2010 23:01:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="358054724"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2010 23:01:52 -0800
Message-Id: <207554c037a22fb9921ba6425184a434cdb40c59.1291705845.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291705845.git.dongxiao.xu@intel.com>
References: <cover.1291705845.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 14:10:29 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/7] gst-fluendo-mpegdemux: upgrade to version 0.10.62
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
X-List-Received-Date: Tue, 07 Dec 2010 07:01:53 -0000

Add m4 path from common folder.

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-fluendo-mpegdemux_0.10.62.bb     |   13 +++++++++++++
 .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    6 ------
 2 files changed, 13 insertions(+), 6 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb

diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
new file mode 100644
index 0000000..b0b4bc2
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
@@ -0,0 +1,13 @@
+require gst-fluendo.inc
+DESCRIPTION = "Fluendo closed-format mpeg video GStreamer plug-in"
+
+LICENSE = "MPLv1.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=be282f1c3cc9a98cc0dc5c2b25dfc510 \
+                    file://src/gstmpegdemux.h;beginline=1;endline=19;md5=a9e90033f59897b91664d9f2a2ff01dd"
+
+acpaths = "-I ${S}/common/m4 -I ${S}/m4"
+
+PR = "r0"
+
+SRC_URI[md5sum] = "de2a22760f73ba678b7cb51e9f94bc21"
+SRC_URI[sha256sum] = "c4ba24502f59849fc2f3948389213c99e23a0986506111cc22cce3a64a33ac05"
diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
deleted file mode 100644
index 3757c58..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.7.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require gst-fluendo.inc
-DESCRIPTION = "Fluendo closed-format mpeg video GStreamer plug-in"
-
-LICENSE = "MPLv1.1"
-LIC_FILES_CHKSUM = "file://COPYING;md5=be282f1c3cc9a98cc0dc5c2b25dfc510 \
-                    file://src/gstmpegdemux.h;beginline=1;endline=19;md5=3321040ac920ff350d21dc3a62587882"
-- 
1.6.3.3


