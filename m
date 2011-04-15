Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id AB57C4C80F9A
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:54 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Apr 2011 22:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="909898048"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2011 22:35:53 -0700
Message-Id: <37c69871840c1c7f2e804ada04ffb256f09a3a28.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 10:03:27 +0800
Date: Fri, 15 Apr 2011 13:36:48 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 05/14] gst-plugins-ugly: upgrade to version 0.10.17
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
X-List-Received-Date: Fri, 15 Apr 2011 05:35:54 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 ...ugly_0.10.16.bb => gst-plugins-ugly_0.10.17.bb} |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-ugly_0.10.16.bb => gst-plugins-ugly_0.10.17.bb} (85%)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.17.bb
similarity index 85%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
rename to meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.17.bb
index 7dda685..76e00a5 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.17.bb
@@ -17,3 +17,6 @@ do_configure_prepend() {
 	# This m4 file contains nastiness which conflicts with libtool 2.2.2
 	rm ${S}/m4/lib-link.m4 || true
 }
+
+SRC_URI[md5sum] = "504ed6508c3a8f035a2002ed69d68506"
+SRC_URI[sha256sum] = "0cbd4aa8dceafea21ddd547dfde686a8836f68ba547afa5575a52b64cfa0b369"
-- 
1.7.1


