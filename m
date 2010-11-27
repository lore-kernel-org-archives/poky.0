Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 382AF4C81210
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:35 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 22:09:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="354271569"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 22:09:34 -0800
Message-Id: <1490c55f5561970f8435a00fd48e9deb1bfeae85.1291011420.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291011420.git.dongxiao.xu@intel.com>
References: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Sat, 27 Nov 2010 22:55:54 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/13] clutter-gst: Update LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:35 -0000

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../clutter/clutter-gst-1.0_git.bb                 |    3 +++
 meta/recipes-graphics/clutter/clutter-gst.inc      |    2 +-
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/clutter/clutter-gst-1.0_git.bb b/meta/recipes-graphics/clutter/clutter-gst-1.0_git.bb
index 5580596..46519a0 100644
--- a/meta/recipes-graphics/clutter/clutter-gst-1.0_git.bb
+++ b/meta/recipes-graphics/clutter/clutter-gst-1.0_git.bb
@@ -2,6 +2,9 @@ require clutter-gst.inc
 
 PV = "0.11.0+git${SRCPV}"
 
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34 \
+                    file://clutter-gst/clutter-gst.h;beginline=1;endline=24;md5=95baacba194e814c110ea3bdf25ddbf4"
+
 DEPENDS += "clutter-1.0"
 
 SRC_URI = "git://git.clutter-project.org/clutter-gst.git;protocol=git;branch=master"
diff --git a/meta/recipes-graphics/clutter/clutter-gst.inc b/meta/recipes-graphics/clutter/clutter-gst.inc
index 0a2f261..c46d0f0 100644
--- a/meta/recipes-graphics/clutter/clutter-gst.inc
+++ b/meta/recipes-graphics/clutter/clutter-gst.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Clutter GStreamer"
 HOMEPAGE = "http://www.clutter-project.org/"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2+"
 
 DEPENDS = "clutter-1.0 gstreamer gst-plugins-base"
 
-- 
1.6.3.3


