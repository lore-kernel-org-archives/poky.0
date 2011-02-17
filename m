Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACADD4C80A51
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 17:40:38 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 77A8E30969
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 18:40:34 -0500 (EST)
Message-Id: <2cf3e6f3be6b16dee9959a4e5cea28d827b53285.1297985951.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1297985951.git.scott.a.garman@intel.com>
References: <cover.1297985951.git.scott.a.garman@intel.com>
Old-Date: Thu, 17 Feb 2011 13:35:05 -0800
Date: Thu, 17 Feb 2011 15:40:31 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 77A8E30969.B6AA6
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 4/4] gtk+: Fix build of documentation
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
X-List-Received-Date: Thu, 17 Feb 2011 23:40:38 -0000

From: Scott Garman <scott.a.garman@intel.com>

This resolves the following error messages when building gtk+
documentation:

mv: cannot stat `gtk-faq': No such file or directory
mv: cannot stat `gtk-tut': No such file or directory

Fixes [BUGID #730]

Also adds docbook-utils-native to DEPENDS so we don't rely on
host documentation building tools.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch |   33 ++++++++++++++++++++
 meta/recipes-gnome/gtk+/gtk+.inc                   |    5 ++-
 meta/recipes-gnome/gtk+/gtk+_2.12.7.bb             |    2 +-
 meta/recipes-gnome/gtk+/gtk+_2.16.6.bb             |    2 +-
 meta/recipes-gnome/gtk+/gtk+_2.22.1.bb             |    5 ++-
 5 files changed, 41 insertions(+), 6 deletions(-)
 create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch

diff --git a/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch b/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch
new file mode 100644
index 0000000..67fd29a
--- /dev/null
+++ b/meta/recipes-gnome/gtk+/gtk+-2.22.1/doc-fixes.patch
@@ -0,0 +1,33 @@
+This fixes the following build errors with the gtk+ faq and tutorial
+documentation:
+
+mv: cannot stat `gtk-faq': No such file or directory
+mv: cannot stat `gtk-tut': No such file or directory
+
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
+diff -urN gtk+-2.22.1.orig//docs/faq/Makefile.am gtk+-2.22.1/docs/faq/Makefile.am
+--- gtk+-2.22.1.orig//docs/faq/Makefile.am	2010-11-15 04:13:09.000000000 -0800
++++ gtk+-2.22.1/docs/faq/Makefile.am	2011-02-17 13:16:30.603214103 -0800
+@@ -9,7 +9,8 @@
+ 	  (cd $(srcdir); \
+ 	   db2html gtk-faq.sgml; \
+ 	   test -d html && rm -r html; \
+-	   mv gtk-faq html); \
++	   mkdir html; \
++	   mv *.html html); \
+ 	fi
+ 
+ pdf:
+diff -urN gtk+-2.22.1.orig//docs/tutorial/Makefile.am gtk+-2.22.1/docs/tutorial/Makefile.am
+--- gtk+-2.22.1.orig//docs/tutorial/Makefile.am	2010-11-15 04:13:09.000000000 -0800
++++ gtk+-2.22.1/docs/tutorial/Makefile.am	2011-02-17 13:15:40.110369180 -0800
+@@ -42,7 +42,8 @@
+ 	  (cd $(srcdir); \
+ 	   db2html gtk-tut.sgml; \
+ 	   test -d html && rm -r html; \
+-	   mv gtk-tut html; \
++	   mkdir html; \
++	   mv *.html html; \
+ 	   mkdir html/images; \
+ 	   cp images/*.png html/images); \
+ 	fi
diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
index 94a8fe6..853c059 100644
--- a/meta/recipes-gnome/gtk+/gtk+.inc
+++ b/meta/recipes-gnome/gtk+/gtk+.inc
@@ -10,8 +10,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
 SECTION = "libs"
 PRIORITY = "optional"
-DEPENDS = "glib-2.0 pango atk jpeg libpng libxext libxcursor gtk-doc-native libxrandr \
-           libgcrypt libxdamage libxrender libxcomposite cairo gdk-pixbuf"
+DEPENDS = "glib-2.0 pango atk jpeg libpng libxext libxcursor \
+           gtk-doc-native docbook-utils-native libxrandr libgcrypt \
+           libxdamage libxrender libxcomposite cairo gdk-pixbuf"
 
 inherit autotools pkgconfig
 
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb b/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
index 12193f9..7f242d9 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.12.7.bb
@@ -1,6 +1,6 @@
 require gtk+.inc
 
-PR = "r10"
+PR = "r11"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.12/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb b/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
index 1864d1b..5060829 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.16.6.bb
@@ -1,6 +1,6 @@
 require gtk+.inc
 
-PR = "r6"
+PR = "r7"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.16/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
index 35aa883..e311a8c 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.22.1.bb
@@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gtk/gtk.h;endline=27;md5=c59e0b4490dd135a5726ebf851f9b17f \
                     file://gdk/gdk.h;endline=27;md5=07db285ec208fb3e0bf7d861b0614202 \
                     file://tests/testgtk.c;endline=27;md5=262db5db5f776f9863e56df31423e24c"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://download.gnome.org/sources/gtk+/2.22/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
@@ -13,7 +13,8 @@ SRC_URI = "http://download.gnome.org/sources/gtk+/2.22/gtk+-${PV}.tar.bz2 \
            file://no-demos.patch;patch=1 \
            file://cellrenderer-cairo.patch;patch=1;pnum=0 \
            file://toggle-font.diff;patch=1;pnum=0 \
-	   file://0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch;patch=1 \
+           file://0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch;patch=1 \
+           file://doc-fixes.patch \
 # TO MERGE
 #           file://entry-cairo.patch;patch=1;pnum=0 \
 #           file://filesystem-volumes.patch;patch=1 \
-- 
1.7.1


