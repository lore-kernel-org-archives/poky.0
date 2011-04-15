Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 208664C80A7E
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:50 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Apr 2011 22:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="419668230"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 14 Apr 2011 22:35:50 -0700
Message-Id: <ed51eb22056009e06358d7a50a1b712d082b968f.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Tue, 12 Apr 2011 16:39:18 +0800
Date: Fri, 15 Apr 2011 13:36:44 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 02/14] gst-plugins-base: upgrade to version 0.10.32
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
X-List-Received-Date: Fri, 15 Apr 2011 05:35:51 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gst-plugins-base-tremor.patch                  |    2 ++
 ...base_0.10.31.bb => gst-plugins-base_0.10.32.bb} |    6 +++---
 2 files changed, 5 insertions(+), 3 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-base-0.10.31 => gst-plugins-base-0.10.32}/gst-plugins-base-tremor.patch (94%)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-base_0.10.31.bb => gst-plugins-base_0.10.32.bb} (86%)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.31/gst-plugins-base-tremor.patch b/meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.32/gst-plugins-base-tremor.patch
similarity index 94%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.31/gst-plugins-base-tremor.patch
rename to meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.32/gst-plugins-base-tremor.patch
index a6494fd..224bf1a 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.31/gst-plugins-base-tremor.patch
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.32/gst-plugins-base-tremor.patch
@@ -1,6 +1,8 @@
 Remove -DTREMOR option since Tremor has dropped its internal
 libogg2, and gst-plugins-base has dependency on that.
 
+Upstream-Status: Inappropriate [configuration]
+
 Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
 
 diff -ruN gst-plugins-base-0.10.30-orig/ext/vorbis/Makefile.am gst-plugins-base-0.10.30/ext/vorbis/Makefile.am
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.32.bb
similarity index 86%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
rename to meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.32.bb
index 8bf243e..2d09c6c 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.32.bb
@@ -12,10 +12,10 @@ RDEPENDS_${PN} += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-
 
 SRC_URI += " file://gst-plugins-base-tremor.patch"
 
-SRC_URI[md5sum] = "9baa0d87e81c88b2477a3554ab629c46"
-SRC_URI[sha256sum] = "abb006c78222cfb69d31e983268d1d5219e9d4e0da24c6c4cd687968af7a33bd"
+SRC_URI[md5sum] = "2920af2b3162f3d9fbaa7fabc8ed4d38"
+SRC_URI[sha256sum] = "e9aabfac83f6480896da0686e9c911989f896fbad634821b7771ed84a446172b"
 
-PR = "r1"
+PR = "r0"
 
 inherit gettext
 
-- 
1.7.1


