Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51AAC4C811CD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 22:53:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="681195956"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 22:53:44 -0800
Message-Id: <2f38964d0c9a68de601a985da6cf746bb73700e0.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 25 Nov 2010 13:52:53 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/14] gupnp-av: Upgrade to version 0.7.0
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:45 -0000

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb   |    8 --------
 meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb |    8 --------
 meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb |   15 +++++++++++++++
 3 files changed, 15 insertions(+), 16 deletions(-)
 delete mode 100644 meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb
 delete mode 100644 meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb
 create mode 100644 meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb

diff --git a/meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb b/meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb
deleted file mode 100644
index 97990ba..0000000
--- a/meta/recipes-connectivity/gupnp/gupnp-av_0.4.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-SUMMARY = "Helpers for AV applications using UPnP"
-DESCRIPTION = "GUPnP-AV is a collection of helpers for building AV (audio/video) applications using GUPnP."
-LICENSE = "LGPL"
-DEPENDS = "gupnp"
-
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-
-inherit autotools pkgconfig
diff --git a/meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb b/meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb
deleted file mode 100644
index 97990ba..0000000
--- a/meta/recipes-connectivity/gupnp/gupnp-av_0.5.2.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-SUMMARY = "Helpers for AV applications using UPnP"
-DESCRIPTION = "GUPnP-AV is a collection of helpers for building AV (audio/video) applications using GUPnP."
-LICENSE = "LGPL"
-DEPENDS = "gupnp"
-
-SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
-
-inherit autotools pkgconfig
diff --git a/meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb b/meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb
new file mode 100644
index 0000000..c43fdd9
--- /dev/null
+++ b/meta/recipes-connectivity/gupnp/gupnp-av_0.7.0.bb
@@ -0,0 +1,15 @@
+SUMMARY = "Helpers for AV applications using UPnP"
+DESCRIPTION = "GUPnP-AV is a collection of helpers for building AV (audio/video) applications using GUPnP."
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
+                    file://libgupnp-av/gupnp-av.h;beginline=1;endline=22;md5=d344132a8766641fcb11213ff5982086"
+DEPENDS = "gupnp"
+
+SRC_URI = "http://gupnp.org/sites/all/files/sources/${PN}-${PV}.tar.gz"
+
+PR = "r0"
+
+inherit autotools pkgconfig
+
+SRC_URI[md5sum] = "6eace748e9869cddb27daab46eb50635"
+SRC_URI[sha256sum] = "e13018d24abec9fafd75ef59c365adbb2ea3712fe5e69fff8c7284dc3f13cdeb"
-- 
1.6.3.3


