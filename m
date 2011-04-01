Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2E3824C80AC5
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 22:26:09 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Mar 2011 20:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,280,1299484800"; d="scan'208";a="674018544"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2011 20:26:08 -0700
Message-Id: <e83399c2733f3b5c7d2c1a575db5d0a1780dcb85.1301626661.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1301626661.git.dongxiao.xu@intel.com>
References: <cover.1301626661.git.dongxiao.xu@intel.com>
Old-Date: Fri, 1 Apr 2011 10:54:33 +0800
Date: Fri, 01 Apr 2011 11:24:28 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] gst-meta-base: Support http/https remote streams
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
X-List-Received-Date: Fri, 01 Apr 2011 03:26:09 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Add libgstsouphttpsrc library to support remote stream playing via
http/https protocols.

This solves the mp4 playing issue by regel from mediatomb file server.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-meta-base_0.10.bb                |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb b/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
index 8d5e590..ada7f69 100644
--- a/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
@@ -5,7 +5,7 @@ LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3
                     file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
 
-PR = "r9"
+PR = "r10"
 
 PACKAGES = "\
     gst-meta-base \
@@ -29,7 +29,8 @@ RDEPENDS_gst-meta-base = "\
     gst-plugins-base-typefindfunctions \
     gst-plugins-base-videoscale \
     gst-plugins-base-ffmpegcolorspace \
-    gst-plugins-good-autodetect"
+    gst-plugins-good-autodetect \
+    gst-plugins-good-souphttpsrc"
 
 
 RDEPENDS_gst-meta-audio = "\
-- 
1.7.1


