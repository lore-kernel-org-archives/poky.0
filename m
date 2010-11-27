Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 598714C81211
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:36 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="862205740"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 22:09:35 -0800
Message-Id: <e81c49f76afb4eee5b6ad4240f9b75803465c5bd.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 27 Nov 2010 23:09:03 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/13] gst-ffmpeg: Update LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:36 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-ffmpeg_0.10.1.bb                 |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
index 9bd371e..599492f 100644
--- a/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb
@@ -1,7 +1,10 @@
 DESCRIPTION = "FFmpeg-based GStreamer plug-in"
 SECTION = "multimedia"
 PRIORITY = "optional"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2+ & GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+                    file://gst-libs/ext/ffmpeg/libavcodec/libpostproc/postprocess.h;beginline=1;endline=17;md5=a0c398349079dbd0ce70f03de8bc193a \
+                    file://gst-libs/ext/ffmpeg/ffserver.c;beginlin=1;endline=18;md5=49bde48d6d5c631f6f49d74ed491ea08"
 HOMEPAGE = "http://www.gstreamer.net/"
 DEPENDS = "gstreamer zlib gst-plugins-base"
 PR = "r4"
-- 
1.6.3.3


