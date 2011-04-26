Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E36F74C80B87
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:12 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Apr 2011 23:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="683961409"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga002.fm.intel.com with ESMTP; 25 Apr 2011 23:43:09 -0700
Message-Id: <33127d257fd55d857faf16ef8db3d150c6a67893.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Wed, 20 Apr 2011 13:45:02 +0800
Date: Tue, 26 Apr 2011 14:46:04 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 06/13] glib-2.0: upgrade to version 2.28.6
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:13 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../60_wait-longer-for-threads-to-die.patch        |    2 ++
 .../glib-2.0/glib-2.0/configure-libtool.patch      |    2 ++
 .../glib-2.0/glib-2.0/g_once_init_enter.patch      |    2 ++
 .../glib-2.0/glib-2.0/glib-gettextize-dir.patch    |    2 ++
 .../{glib-2.0_2.26.1.bb => glib-2.0_2.28.6.bb}     |    8 ++++----
 meta/recipes-core/glib-2.0/glib.inc                |    2 +-
 6 files changed, 13 insertions(+), 5 deletions(-)
 rename meta/recipes-core/glib-2.0/{glib-2.0_2.26.1.bb => glib-2.0_2.28.6.bb} (57%)

diff --git a/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-die.patch b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-die.patch
index 8195bd4..b65a474 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-die.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-die.patch
@@ -2,6 +2,8 @@ copy from OE, said to borrow from Ubuntu. Not in glib-2.0 upstream yet. Add for
 Added to poky by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
 Rebased for glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
 
+Upstream-Status: Inappropriate [patches for test code]
+
 diff -ruN glib-2.27.3-orig/tests/threadpool-test.c glib-2.27.3/tests/threadpool-test.c
 --- glib-2.27.3-orig/tests/threadpool-test.c	2009-04-01 07:04:21.000000000 +0800
 +++ glib-2.27.3/tests/threadpool-test.c	2010-11-16 12:28:09.002172678 +0800
diff --git a/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
index 7c170be..c21e378 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
@@ -4,6 +4,8 @@
 # from PATH though
 # Rebased to glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>
 
+Upstream-Status: Inappropriate [configuration]
+
 diff -ruN glib-2.27.3-orig/configure.ac glib-2.27.3/configure.ac
 --- glib-2.27.3-orig/configure.ac	2010-11-03 11:02:05.000000000 +0800
 +++ glib-2.27.3/configure.ac	2010-11-16 12:38:12.610485990 +0800
diff --git a/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
index a2a506c..2eaa19b 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
@@ -7,6 +7,8 @@ http://www.mail-archive.com/openembedded-devel@lists.openembedded.org/msg005
 
 Signed-off-by: Darren Hart <dvhart@linux.intel.com>
 
+Upstream-Status: Pending
+
 Index: glib-2.27.5/glib/gthread.h
 ===================================================================
 --- glib-2.27.5.orig/glib/gthread.h
diff --git a/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
index e54a8e5..ee43511 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
@@ -8,6 +8,8 @@
 # by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
 # Rebased by Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
 
+Upstream-Status: Inappropriate [configuration]
+
 diff -ruN glib-2.27.3-orig/glib-gettextize.in glib-2.27.3/glib-gettextize.in
 --- glib-2.27.3-orig/glib-gettextize.in	2009-04-01 07:04:20.000000000 +0800
 +++ glib-2.27.3/glib-gettextize.in	2010-11-16 12:55:06.874605916 +0800
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
similarity index 57%
rename from meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
rename to meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
index 6a1fb6c..c9da861 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
@@ -1,16 +1,16 @@
 require glib.inc
 
-PE = "1"
+PE = "0"
 PR = "r0"
 
-SRC_URI = "${GNOME_MIRROR}/glib/2.26/glib-${PV}.tar.bz2 \
+SRC_URI = "${GNOME_MIRROR}/glib/2.28/glib-${PV}.tar.bz2 \
            file://configure-libtool.patch \
            file://60_wait-longer-for-threads-to-die.patch \
            file://g_once_init_enter.patch \
           "
 
-SRC_URI[md5sum] = "17535accceef55bcb17a74d73f9c2aef"
-SRC_URI[sha256sum] = "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf23468e515625c28d5"
+SRC_URI[md5sum] = "7d8fc15ae70d5111c0cf2a79d50ef717"
+SRC_URI[sha256sum] = "557fb7c39d21b9359fbac51fd6b0b883bc97a2561c0166eef993a4078312f578"
 
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-core/glib-2.0/glib.inc b/meta/recipes-core/glib-2.0/glib.inc
index 5ebff68..9b6e17b 100644
--- a/meta/recipes-core/glib-2.0/glib.inc
+++ b/meta/recipes-core/glib-2.0/glib.inc
@@ -8,7 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gmodule/COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gmodule/gmodule.h;startline=4;endline=17;md5=76ab161b37202cd004073c42fac276ed \
                     file://glib/pcre/COPYING;md5=266ebc3ff74ee9ce6fad65577667c0f4 \
-                    file://glib/pcre/pcre.h;startline=11;endline=35;md5=cc0858840d3c312ec3e45b28077eb0d8 \
+                    file://glib/pcre/pcre.h;startline=11;endline=35;md5=ce867cf87ebbd2bb55e980d90328390d \
                     file://docs/reference/COPYING;md5=f51a5100c17af6bae00735cd791e1fcc"
 BUGTRACKER = "http://bugzilla.gnome.org"
 SECTION = "libs"
-- 
1.7.1


