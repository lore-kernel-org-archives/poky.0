Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 925B74C80B74
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:53 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Apr 2011 22:35:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="629026130"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga002.jf.intel.com with ESMTP; 14 Apr 2011 22:35:52 -0700
Message-Id: <72a5bb2f001b2625421f8e51d06c0c669192f579.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 10:02:24 +0800
Date: Fri, 15 Apr 2011 13:36:47 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 04/14] gst-plugins-bad: upgrade to version 0.10.21
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
X-List-Received-Date: Fri, 15 Apr 2011 05:35:53 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...s-bad_0.10.20.bb => gst-plugins-bad_0.10.21.bb} |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-bad_0.10.20.bb => gst-plugins-bad_0.10.21.bb} (86%)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.21.bb
similarity index 86%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
rename to meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.21.bb
index 239072d..2b8a89c 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.21.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
 
 DEPENDS += "gst-plugins-base libmusicbrainz tremor librsvg"
 
-PR = "r1"
+PR = "r0"
 
 inherit gettext
 
@@ -23,5 +23,5 @@ do_configure_prepend() {
 	rm ${S}/m4/lib-link.m4 || true
 }
 
-SRC_URI[md5sum] = "7c84766f6d24f41ba90c3f6141012ab8"
-SRC_URI[sha256sum] = "1031dff866df976a957f34039addbab4c0753406299a275f4cf1780e1dbe2a90"
+SRC_URI[md5sum] = "f501336ab1d18d2565f47c36ce653a82"
+SRC_URI[sha256sum] = "422badacbda37ac33cb446c6751dabcd0b223c308dbb01024a34ded682fa47e3"
-- 
1.7.1


