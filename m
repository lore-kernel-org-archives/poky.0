Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BD864C80AC5
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:43 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485531"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:24 -0700
Message-Id: <af9a11b9c58c10775eaea0bc7a408430fa7a6e08.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:56:52 +0800
Date: Tue, 10 May 2011 17:01:53 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 24/39] gst-ffmpeg: add upstream status for gst-ffmpeg's patch
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
X-List-Received-Date: Tue, 10 May 2011 08:56:43 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff   |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff b/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
index bffdb8a..5f08afe 100644
--- a/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
+++ b/meta/recipes-multimedia/gstreamer/gst-ffmpeg-0.10.11/lower-rank.diff
@@ -1,6 +1,8 @@
 Lower the rank of ffmpeg plugin so codecs that hook into accelerated pieces (e.g. dsp or hw engines) can get picked over this
 Derived from OE by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [embedded specific]
+
 --- /tmp/gstffmpegdec.c	2009-03-05 09:31:15.000000000 +0100
 +++ gst-ffmpeg-0.10.6/ext/ffmpeg/gstffmpegdec.c	2009-03-05 09:33:09.000000000 +0100
 @@ -2588,7 +2588,7 @@
-- 
1.7.1


