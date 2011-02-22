Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 635A84C800B2
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 01:59:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Feb 2011 23:59:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="660155561"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2011 23:59:28 -0800
Message-Id: <b43af1811a80a57634127fdc66b08dfeb66e1466.1298362595.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1298362595.git.dongxiao.xu@intel.com>
References: <cover.1298362595.git.dongxiao.xu@intel.com>
Old-Date: Tue, 22 Feb 2011 16:15:38 +0800
Date: Tue, 22 Feb 2011 16:19:59 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] gst-meta-base: add uridecodebin library support
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
X-List-Received-Date: Tue, 22 Feb 2011 07:59:29 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

libowl-av tries to use playbin2 defaultly, which needs uridecodebin
support from gst-plugins-base.

This fixes both [BUGID #615] and [BUGID #616]

CC: Edwin Zhai <edwin.zhai@intel.com>
Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-meta-base_0.10.bb                |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb b/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
index b6f85d5..8d5e590 100644
--- a/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 
-PR = "r8"
+PR = "r9"
 
 PACKAGES = "\
     gst-meta-base \
@@ -19,6 +19,7 @@ RDEPENDS_gst-meta-base = "\
     gstreamer \
     gst-plugins-base-playbin \
     gst-plugins-base-decodebin \
+    gst-plugins-base-decodebin2 \
     gst-plugins-base-gnomevfs \
     gst-plugins-base-alsa \
     gst-plugins-base-volume \
-- 
1.6.3.3


