Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 519BE4C80BBC
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:58 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Apr 2011 22:35:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="679366558"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2011 22:35:48 -0700
Message-Id: <58a475b16d19292b34c55e158b93d10d72b9f510.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Tue, 12 Apr 2011 16:08:54 +0800
Date: Fri, 15 Apr 2011 13:36:43 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 01/14] gstreamer: upgrade to vesion 0.10.32
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
X-List-Received-Date: Fri, 15 Apr 2011 05:35:58 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../check_fix.patch                                |    2 ++
 .../gst-inspect-check-error.patch                  |    2 ++
 .../gstregistrybinary.c                            |    0
 .../gstregistrybinary.h                            |    0
 .../{gstreamer_0.10.31.bb => gstreamer_0.10.32.bb} |    4 ++--
 5 files changed, 6 insertions(+), 2 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/check_fix.patch (93%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/gst-inspect-check-error.patch (96%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/gstregistrybinary.c (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 => gstreamer-0.10.32}/gstregistrybinary.h (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer_0.10.31.bb => gstreamer_0.10.32.bb} (91%)

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/check_fix.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/check_fix.patch
similarity index 93%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/check_fix.patch
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/check_fix.patch
index 72c3f64..5d8bb13 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/check_fix.patch
+++ b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/check_fix.patch
@@ -1,6 +1,8 @@
 # gstreamer: Fix a problem with configure if check has already been built
 # Richard Purdie <rpurdie@linux.intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 diff -urN gstreamer-0.10.29-orig/configure.ac gstreamer-0.10.29/configure.ac
 --- gstreamer-0.10.29-orig/configure.ac	2010-06-26 12:49:27.774930773 +0800
 +++ gstreamer-0.10.29/configure.ac	2010-06-26 12:51:12.899200233 +0800
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gst-inspect-check-error.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gst-inspect-check-error.patch
similarity index 96%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gst-inspect-check-error.patch
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gst-inspect-check-error.patch
index 4ca1dbe..30be85f 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gst-inspect-check-error.patch
+++ b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gst-inspect-check-error.patch
@@ -1,6 +1,8 @@
 # Fix crash with gst-inspect
 # Chris Lord <chris@openedhand.com>
 
+Upstream-Status: Pending
+
 --- gstreamer-0.10.9/tools/gst-inspect.c.old	2006-09-12 11:56:53.000000000 +0100
 +++ gstreamer-0.10.9/tools/gst-inspect.c	2006-09-12 11:57:27.000000000 +0100
 @@ -1123,7 +1123,7 @@
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.c b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gstregistrybinary.c
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.c
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gstregistrybinary.c
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.h b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gstregistrybinary.h
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.h
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.32/gstregistrybinary.h
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.32.bb
similarity index 91%
rename from meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
rename to meta/recipes-multimedia/gstreamer/gstreamer_0.10.32.bb
index dc1d07c..901ade5 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.32.bb
@@ -16,8 +16,8 @@ SRC_URI = "http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.bz
            file://check_fix.patch \
            file://gst-inspect-check-error.patch"
 
-SRC_URI[md5sum] = "a21fb08bdb578d972c7c14e77da8fbb6"
-SRC_URI[sha256sum] = "7f737e6d047c1ebeb4e1e0725fc377c5d9f12ee89186de7960be3cbba709ab84"
+SRC_URI[md5sum] = "442bc3d37b8511a73379143e7531d726"
+SRC_URI[sha256sum] = "3bf4e46a186ee9a1f5e212aaf651d67cffb4f5f05345a7c99ae71d5d992be133"
 
 inherit autotools pkgconfig gettext
 
-- 
1.7.1


