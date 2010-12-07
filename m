Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B10D64C81199
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:01:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 23:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="633839564"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 23:01:51 -0800
Message-Id: <95375d5beb830f52889003e04d78f750643b1952.1291705845.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1291705845.git.dongxiao.xu@intel.com>
References: <cover.1291705845.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 7 Dec 2010 14:09:29 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/7] gst-fluendo-mp3: upgrade to version 0.10.15
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
X-List-Received-Date: Tue, 07 Dec 2010 07:01:51 -0000

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


