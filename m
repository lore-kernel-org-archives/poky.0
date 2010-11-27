Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73F094C81214
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:37 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 22:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="631095208"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 22:09:36 -0800
Message-Id: <80a423af6b1f982eeeb7d5835359dca995ba1120.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 27 Nov 2010 23:30:01 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/13] gst-fluendo-mp3: Update LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:37 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
index 9e33b30..3000d71 100644
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
@@ -1,5 +1,8 @@
 require gst-fluendo.inc
 
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=086bf92d974e459276adbfd808c615b4"
+
 acpaths = "-I ${S}/common/m4 -I ${S}/m4"
 
 SRC_URI += "file://configure_fix.patch;patch=1"
-- 
1.6.3.3


