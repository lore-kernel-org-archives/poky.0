Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C4CC84C811D9
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:13:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 22:13:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="627931258"
Received: from unknown (HELO localhost) ([10.255.13.148])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 22:13:03 -0800
Message-Id: <17c42680d06355d7adb2a4fd427d5e8f54259837.1290046217.git.sgw@linux.intel.com>
In-Reply-To: <cover.1290046217.git.sgw@linux.intel.com>
References: <cover.1290046217.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Date: Mon, 15 Nov 2010 14:01:31 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <sgw@linux.intel.com>
Subject: [PATCH 5/5] web_svn: Fixup Patching and add libowl
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
X-List-Received-Date: Thu, 18 Nov 2010 06:13:03 -0000

libowl was missing from the link library list
There where patches being pulled in from the SVN trunk that confused
quilt, so we remove the patches directory before doing the patching
Added LIC_FILES_CHKSUM

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-sato/web/web/owl-window-menu.patch |   17 +++++++++++++++--
 meta/recipes-sato/web/web_svn.bb                |   14 ++++++++++++--
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-sato/web/web/owl-window-menu.patch b/meta/recipes-sato/web/web/owl-window-menu.patch
index ca7fa2f..8b46c32 100644
--- a/meta/recipes-sato/web/web/owl-window-menu.patch
+++ b/meta/recipes-sato/web/web/owl-window-menu.patch
@@ -1,7 +1,7 @@
 Index: trunk/src/web_main.c
 ===================================================================
---- trunk.orig/src/web_main.c	2007-04-19 15:41:44.000000000 +0100
-+++ trunk/src/web_main.c	2007-04-26 07:43:23.000000000 +0100
+--- trunk.orig/src/web_main.c	2007-12-18 15:04:13.000000000 -0800
++++ trunk/src/web_main.c	2010-11-15 11:40:44.762994000 -0800
 @@ -20,6 +20,8 @@
  #include "web_bookmarks.h"
  #include "web_request.h"
@@ -81,3 +81,16 @@ Index: trunk/src/web_main.c
  	gtk_main ();
  	
  	g_module_close (module);
+Index: trunk/src/Makefile.am
+===================================================================
+--- trunk.orig/src/Makefile.am	2007-12-18 15:04:13.000000000 -0800
++++ trunk/src/Makefile.am	2010-11-15 11:41:15.754994000 -0800
+@@ -18,7 +18,7 @@
+ 	      web.h web_history.h web_bookmarks.h web_request.h \
+ 	      web_utils.h glibcurl.h
+ 
+-web_LDADD   = $(WEB_LIBS)
++web_LDADD   = $(WEB_LIBS) -lowl
+ 
+ MAINTAINERCLEANFILES = config.h.in Makefile.in
+ 
diff --git a/meta/recipes-sato/web/web_svn.bb b/meta/recipes-sato/web/web_svn.bb
index d98a2e3..2fe13f4 100644
--- a/meta/recipes-sato/web/web_svn.bb
+++ b/meta/recipes-sato/web/web_svn.bb
@@ -2,15 +2,25 @@ LICENSE = "GPL"
 SECTION = "x11"
 DEPENDS = "libxml2 glib-2.0 gtk+ libglade gtkhtml2 curl gconf js libowl"
 DESCRIPTION = "Web is a multi-platform web browsing application."
-PR = "r3"
+PR = "r4"
 
 PV = "0.0+svnr${SRCREV}"
 
 SRC_URI = 	"svn://svn.o-hand.com/repos/${PN};module=trunk;proto=http \
-		file://owl-window-menu.patch;patch=1 \
+		file://owl-window-menu.patch \
 		"
 
+LIB_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
+
 S = "${WORKDIR}/trunk"
 
+do_unpack_append () {
+	bb.build.exec_func('do_remove_patches', d)
+}
+
+do_remove_patches () {
+	rm -rf ${S}/patches
+}
+
 inherit autotools pkgconfig gconf
 
-- 
1.7.1


