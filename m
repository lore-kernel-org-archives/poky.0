Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 97C474C80ACC
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:14 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2011 23:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="738414536"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga001.jf.intel.com with ESMTP; 25 Apr 2011 23:43:13 -0700
Message-Id: <a39960497ab2658e7f050d57a069884f7e2835f6.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Wed, 20 Apr 2011 14:13:01 +0800
Date: Tue, 26 Apr 2011 14:46:08 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 09/13] gst-fluendo-mpegdemux: upgrade to version 0.10.67
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:14 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...0.10.62.bb => gst-fluendo-mpegdemux_0.10.67.bb} |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-fluendo-mpegdemux_0.10.62.bb => gst-fluendo-mpegdemux_0.10.67.bb} (71%)

diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.67.bb
similarity index 71%
rename from meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
rename to meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.67.bb
index b0b4bc2..85ebb43 100644
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.62.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo-mpegdemux_0.10.67.bb
@@ -9,5 +9,5 @@ acpaths = "-I ${S}/common/m4 -I ${S}/m4"
 
 PR = "r0"
 
-SRC_URI[md5sum] = "de2a22760f73ba678b7cb51e9f94bc21"
-SRC_URI[sha256sum] = "c4ba24502f59849fc2f3948389213c99e23a0986506111cc22cce3a64a33ac05"
+SRC_URI[md5sum] = "4ee0353eaa386f9b1c5570298d204357"
+SRC_URI[sha256sum] = "410897527f8bd8f007c9915c9450113c9e73c76f89aee3d36da825422a83a621"
-- 
1.7.1


