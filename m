Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 836BC4C811F6
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 00:28:19 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2010 22:28:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="685003231"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 22:28:18 -0800
Message-Id: <7fa12b7d677a9e5b279e6667b56992f436862a6c.1291790130.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291790130.git.dongxiao.xu@intel.com>
References: <cover.1291790130.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 17:02:26 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/7] gst-fluendo-mp3: upgrade to version 0.10.15
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
X-List-Received-Date: Wed, 08 Dec 2010 06:28:19 -0000

Remove configure_fix.patch since the original logic is not exist in
upstream code.

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gst-fluendo-mp3/configure_fix.patch  |   16 ----------------
 .../gstreamer/gst-fluendo-mp3_0.10.15.bb           |   13 +++++++++++++
 .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |   12 ------------
 3 files changed, 13 insertions(+), 28 deletions(-)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mp3/configure_fix.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.15.bb
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb

diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3/configure_fix.patch b/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3/configure_fix.patch
deleted file mode 100644
index d8b213b..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3/configure_fix.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: gst-fluendo-mp3-0.10.2/configure.ac
-===================================================================
---- gst-fluendo-mp3-0.10.2.orig/configure.ac	2008-03-19 23:00:15.000000000 +0000
-+++ gst-fluendo-mp3-0.10.2/configure.ac	2008-03-19 23:00:31.000000000 +0000
-@@ -19,10 +19,9 @@
- AC_SUBST(ACLOCAL_AMFLAGS, "-I m4 -I common/m4")
- 
- dnl check for tools
--AS_LIBTOOL_TAGS
- AM_PROG_LIBTOOL
- dnl AC_PROG_CC
--dnl AC_PROG_LIBTOOL
-+AC_PROG_LIBTOOL
- 
- dnl decide on error flags
- AS_COMPILER_FLAG(-Wall, GST_WALL="yes", GST_WALL="no")
diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.15.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.15.bb
new file mode 100644
index 0000000..da9cb2b
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.15.bb
@@ -0,0 +1,13 @@
+require gst-fluendo.inc
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=98326cbb1723a5a97e9b1db62e9faa05"
+
+acpaths = "-I ${S}/common/m4 -I ${S}/m4"
+
+PR = "r0"
+
+DESCRIPTION = "Fluendo closed-format mp3 GStreamer plug-in"
+
+SRC_URI[md5sum] = "dac7a9fa988650ec1be6c4c743a86cd4"
+SRC_URI[sha256sum] = "b444e6f3f87f5b819c1327ff3ed1afe9c09c195ba79ecf7e7409b375fa81cb06"
diff --git a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb b/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
deleted file mode 100644
index 3000d71..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-fluendo-mp3_0.10.2.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require gst-fluendo.inc
-
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=086bf92d974e459276adbfd808c615b4"
-
-acpaths = "-I ${S}/common/m4 -I ${S}/m4"
-
-SRC_URI += "file://configure_fix.patch;patch=1"
-
-PR = "r1"
-
-DESCRIPTION = "Fluendo closed-format mp3 GStreamer plug-in"
-- 
1.6.3.3


