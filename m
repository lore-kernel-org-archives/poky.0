Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1607D4C800B1
	for <poky@yoctoproject.org>; Thu, 24 Feb 2011 12:26:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Feb 2011 10:26:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,219,1297065600"; d="scan'208";a="712863982"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 24 Feb 2011 10:26:51 -0800
Message-Id: <2a41ff44133d73c9150a7b7a6617dee3e4923a14.1298571891.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1298571891.git.scott.a.garman@intel.com>
References: <cover.1298571891.git.scott.a.garman@intel.com>
Old-Date: Wed, 23 Feb 2011 19:32:50 -0800
Date: Thu, 24 Feb 2011 10:27:08 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 1/1] gtk+: disable build of faq and tutorial docs
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
X-List-Received-Date: Thu, 24 Feb 2011 18:26:56 -0000

From: Scott Garman <scott.a.garman@intel.com>

Joshua Lock noted that these problematic doc builds have been removed
upstream, and they are really superfluous for embedded builds.

This fixes [BUGID #741]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch |   44 +++++++-------------
 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb             |    2 +-
 2 files changed, 16 insertions(+), 30 deletions(-)

diff --git a/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch b/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch
index 67fd29a..c2e3ae7 100644
--- a/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch
+++ b/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch
@@ -1,33 +1,19 @@
-This fixes the following build errors with the gtk+ faq and tutorial
-documentation:
+There are issues building the gtk+ tutorial and faq documentation.
+Since they were removed in gtk+ upstream and are superfluous in
+embedded applications, just don't build them.
 
-mv: cannot stat `gtk-faq': No such file or directory
-mv: cannot stat `gtk-tut': No such file or directory
+Thanks to Joshua Lock for suggesting this approach.
 
 Signed-off-by: Scott Garman <scott.a.garman@intel.com>
-diff -urN gtk+-2.22.1.orig//docs/faq/Makefile.am gtk+-2.22.1/docs/faq/Makefile.am
---- gtk+-2.22.1.orig//docs/faq/Makefile.am	2010-11-15 04:13:09.000000000 -0800
-+++ gtk+-2.22.1/docs/faq/Makefile.am	2011-02-17 13:16:30.603214103 -0800
-@@ -9,7 +9,8 @@
- 	  (cd $(srcdir); \
- 	   db2html gtk-faq.sgml; \
- 	   test -d html && rm -r html; \
--	   mv gtk-faq html); \
-+	   mkdir html; \
-+	   mv *.html html); \
- 	fi
+diff -urN gtk+-2.22.1.orig/docs/Makefile.am gtk+-2.22.1/docs/Makefile.am
+--- gtk+-2.22.1.orig/docs/Makefile.am	2010-11-15 04:13:09.000000000 -0800
++++ gtk+-2.22.1/docs/Makefile.am	2011-02-23 19:25:16.914815097 -0800
+@@ -1,7 +1,7 @@
+ ## Process this file with automake to produce Makefile.in
+ include $(top_srcdir)/Makefile.decl
  
- pdf:
-diff -urN gtk+-2.22.1.orig//docs/tutorial/Makefile.am gtk+-2.22.1/docs/tutorial/Makefile.am
---- gtk+-2.22.1.orig//docs/tutorial/Makefile.am	2010-11-15 04:13:09.000000000 -0800
-+++ gtk+-2.22.1/docs/tutorial/Makefile.am	2011-02-17 13:15:40.110369180 -0800
-@@ -42,7 +42,8 @@
- 	  (cd $(srcdir); \
- 	   db2html gtk-tut.sgml; \
- 	   test -d html && rm -r html; \
--	   mv gtk-tut html; \
-+	   mkdir html; \
-+	   mv *.html html; \
- 	   mkdir html/images; \
- 	   cp images/*.png html/images); \
- 	fi
+-SUBDIRS = tutorial faq reference tools
++SUBDIRS = reference tools
+ 
+ EXTRA_DIST += \
+ 	defsformat.txt			\
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
index 9ae762d..ce1e03e 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gtk/gtk.h;endline=27;md5=c59e0b4490dd135a5726ebf851f9b17f \
                     file://gdk/gdk.h;endline=27;md5=07db285ec208fb3e0bf7d861b0614202 \
                     file://tests/testgtk.c;endline=27;md5=262db5db5f776f9863e56df31423e24c"
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.22/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
-- 
1.7.4


