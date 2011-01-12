Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FB374C810C1
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 19:41:49 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jan 2011 17:41:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,310,1291622400"; d="scan'208";a="645944185"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2011 17:41:48 -0800
Message-Id: <8c9feb1d386acd9403e97bab35b52e358afb6e2a.1294796468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294796468.git.edwin.zhai@intel.com>
References: <cover.1294796468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Mon, 22 Nov 2010 14:26:56 +0800
Date: Wed, 12 Jan 2011  9:46:37 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/5] gtk+: Update to 2.23.2
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
X-List-Received-Date: Wed, 12 Jan 2011 01:41:49 -0000

Remove disable-gio-png-sniff-test.diff as it alreay in upstream. gdk-pixbuf in
gtk+ is separated as another stand-alone package, so remove it.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../gtk+-2.20.1/disable-gio-png-sniff-test.diff    |   97 --------------------
 meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch |   10 --
 ...Duplicate-the-exec-string-returned-by-gtk.patch |    0
 .../cellrenderer-cairo.patch                       |    0
 .../configurefix.patch                             |    0
 .../{gtk+-2.20.1 => gtk+-2.23.2}/entry-cairo.patch |    0
 .../hardcoded_libtool.patch                        |   22 ++--
 meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch |   13 +++
 .../run-iconcache.patch                            |    0
 .../{gtk+-2.20.1 => gtk+-2.23.2}/toggle-font.diff  |    0
 .../{gtk+-2.20.1 => gtk+-2.23.2}/xsettings.patch   |    0
 meta/recipes-gnome/gtk+/gtk+.inc                   |   16 +---
 .../gtk+/{gtk+_2.20.1.bb => gtk+_2.23.2.bb}        |   18 ++--
 13 files changed, 33 insertions(+), 143 deletions(-)
 delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
 delete mode 100644 meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch (100%)
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/cellrenderer-cairo.patch (100%)
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/configurefix.patch (100%)
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/entry-cairo.patch (100%)
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/hardcoded_libtool.patch (66%)
 create mode 100644 meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/run-iconcache.patch (100%)
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/toggle-font.diff (100%)
 rename meta/recipes-gnome/gtk+/{gtk+-2.20.1 => gtk+-2.23.2}/xsettings.patch (100%)
 rename meta/recipes-gnome/gtk+/{gtk+_2.20.1.bb => gtk+_2.23.2.bb} (74%)

diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff b/meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
deleted file mode 100644
index 13ae61e..0000000
--- a/meta/recipes-gnome/gtk+/gtk+-2.20.1/disable-gio-png-sniff-test.diff
+++ /dev/null
@@ -1,97 +0,0 @@
-Index: gtk+-2.21.2/configure.in
-===================================================================
---- gtk+-2.21.2.orig/configure.in	2010-06-22 18:14:40.000000000 +0800
-+++ gtk+-2.21.2/configure.in	2010-06-22 18:14:58.000000000 +0800
-@@ -1072,48 +1072,50 @@
- # check one of the variables here
- AM_CONDITIONAL(INCLUDE_GDIPLUS, [test x"$INCLUDE_gdip_ico" = xyes])
- 
--if test x$gio_can_sniff = x; then
--  AC_MSG_CHECKING([if gio can sniff png])
--  gtk_save_LIBS="$LIBS"
--  gtk_save_CFLAGS="$CFLAGS"
--  LIBS="`$PKG_CONFIG --libs gio-2.0`"
--  CFLAGS="`$PKG_CONFIG --cflags gio-2.0`"
--  AC_RUN_IFELSE([AC_LANG_SOURCE([[
--  #include <gio/gio.h>
--  static const gsize data_size = 159;
--  static const guint8 data[] = 
--  {
--    0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d, 
--    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 
--    0x08, 0x02, 0x00, 0x00, 0x00, 0x90, 0x77, 0x53, 0xde, 0x00, 0x00, 0x00, 
--    0x01, 0x73, 0x52, 0x47, 0x42, 0x00, 0xae, 0xce, 0x1c, 0xe9, 0x00, 0x00, 
--    0x00, 0x09, 0x70, 0x48, 0x59, 0x73, 0x00, 0x00, 0x0b, 0x13, 0x00, 0x00, 
--    0x0b, 0x13, 0x01, 0x00, 0x9a, 0x9c, 0x18, 0x00, 0x00, 0x00, 0x07, 0x74, 
--    0x49, 0x4d, 0x45, 0x07, 0xd8, 0x07, 0x0f, 0x10, 0x08, 0x15, 0x61, 0xd8, 
--    0x35, 0x37, 0x00, 0x00, 0x00, 0x19, 0x74, 0x45, 0x58, 0x74, 0x43, 0x6f, 
--    0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x00, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 
--    0x64, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x47, 0x49, 0x4d, 0x50, 0x57, 
--    0x81, 0x0e, 0x17, 0x00, 0x00, 0x00, 0x0c, 0x49, 0x44, 0x41, 0x54, 0x08, 
--    0xd7, 0x63, 0xf8, 0xff, 0xff, 0x3f, 0x00, 0x05, 0xfe, 0x02, 0xfe, 0xdc, 
--    0xcc, 0x59, 0xe7, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4e, 0x44, 0xae, 
--    0x42, 0x60, 0x82
--  };
--  int
--  main (int argc, char **argv)
--  {
--    char *content_type;
--    char *image_png;
--    content_type = g_content_type_guess (NULL, data, data_size, NULL);  
--    image_png = g_content_type_from_mime_type ("image/png");
--    return !!strcmp (content_type, image_png);
--  }]])],
--    [gio_can_sniff=yes
--     AC_DEFINE(GDK_PIXBUF_USE_GIO_MIME, 1, [Define if gio can sniff image data])],
--    [gio_can_sniff=no])
--  AC_MSG_RESULT($gio_can_sniff)
--  LIBS="$gtk_save_LIBS"
--  CFLAGS="$gtk_save_CFLAGS"
--fi
-+# Disabled due to cross-compile
-+#if test x$gio_can_sniff = x; then
-+#  AC_MSG_CHECKING([if gio can sniff png])
-+#  gtk_save_LIBS="$LIBS"
-+#  gtk_save_CFLAGS="$CFLAGS"
-+#  LIBS="`$PKG_CONFIG --libs gio-2.0`"
-+#  CFLAGS="`$PKG_CONFIG --cflags gio-2.0`"
-+#  AC_RUN_IFELSE([AC_LANG_SOURCE([[
-+#  #include <gio/gio.h>
-+#  static const gsize data_size = 159;
-+#  static const guint8 data[] = 
-+#  {
-+#    0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a, 0x00, 0x00, 0x00, 0x0d, 
-+#    0x49, 0x48, 0x44, 0x52, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 
-+#    0x08, 0x02, 0x00, 0x00, 0x00, 0x90, 0x77, 0x53, 0xde, 0x00, 0x00, 0x00, 
-+#    0x01, 0x73, 0x52, 0x47, 0x42, 0x00, 0xae, 0xce, 0x1c, 0xe9, 0x00, 0x00, 
-+#    0x00, 0x09, 0x70, 0x48, 0x59, 0x73, 0x00, 0x00, 0x0b, 0x13, 0x00, 0x00, 
-+#    0x0b, 0x13, 0x01, 0x00, 0x9a, 0x9c, 0x18, 0x00, 0x00, 0x00, 0x07, 0x74, 
-+#    0x49, 0x4d, 0x45, 0x07, 0xd8, 0x07, 0x0f, 0x10, 0x08, 0x15, 0x61, 0xd8, 
-+#    0x35, 0x37, 0x00, 0x00, 0x00, 0x19, 0x74, 0x45, 0x58, 0x74, 0x43, 0x6f, 
-+#    0x6d, 0x6d, 0x65, 0x6e, 0x74, 0x00, 0x43, 0x72, 0x65, 0x61, 0x74, 0x65, 
-+#    0x64, 0x20, 0x77, 0x69, 0x74, 0x68, 0x20, 0x47, 0x49, 0x4d, 0x50, 0x57, 
-+#    0x81, 0x0e, 0x17, 0x00, 0x00, 0x00, 0x0c, 0x49, 0x44, 0x41, 0x54, 0x08, 
-+#    0xd7, 0x63, 0xf8, 0xff, 0xff, 0x3f, 0x00, 0x05, 0xfe, 0x02, 0xfe, 0xdc, 
-+#    0xcc, 0x59, 0xe7, 0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x4e, 0x44, 0xae, 
-+#    0x42, 0x60, 0x82
-+#  };
-+#  int
-+#  main (int argc, char **argv)
-+#  {
-+#    char *content_type;
-+#    char *image_png;
-+#    content_type = g_content_type_guess (NULL, data, data_size, NULL);  
-+#    image_png = g_content_type_from_mime_type ("image/png");
-+#    return !!strcmp (content_type, image_png);
-+#  }]])],
-+#    [gio_can_sniff=yes
-+#    [gio_can_sniff=no])
-+#  AC_MSG_RESULT($gio_can_sniff)
-+#  LIBS="$gtk_save_LIBS"
-+#  CFLAGS="$gtk_save_CFLAGS"
-+#fi
-+
-+AC_DEFINE(GDK_PIXBUF_USE_GIO_MIME, 1, [Define if gio can sniff image data])],
- 
- #
- # Allow building some or all immodules included
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch b/meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
deleted file mode 100644
index 0fc4c48..0000000
--- a/meta/recipes-gnome/gtk+/gtk+-2.20.1/no-demos.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- gtk+-2.10.1/Makefile.am.orig	2006-08-08 12:37:30.000000000 +0100
-+++ gtk+-2.10.1/Makefile.am	2006-08-08 12:37:48.000000000 +0100
-@@ -1,6 +1,6 @@
- ## Makefile.am for GTK+
- 
--SRC_SUBDIRS = gdk-pixbuf gdk gtk modules demos tests perf contrib
-+SRC_SUBDIRS = gdk-pixbuf gdk gtk modules tests perf contrib
- SUBDIRS = po po-properties $(SRC_SUBDIRS) docs m4macros
- 
- # require automake 1.4
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/0001-bgo-584832-Duplicate-the-exec-string-returned-by-gtk.patch
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/cellrenderer-cairo.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/cellrenderer-cairo.patch
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/cellrenderer-cairo.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/cellrenderer-cairo.patch
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/configurefix.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/configurefix.patch
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/configurefix.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/configurefix.patch
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/entry-cairo.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/entry-cairo.patch
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/entry-cairo.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/entry-cairo.patch
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/hardcoded_libtool.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/hardcoded_libtool.patch
similarity index 66%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/hardcoded_libtool.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/hardcoded_libtool.patch
index 66be744..7937ef2 100644
--- a/meta/recipes-gnome/gtk+/gtk+-2.20.1/hardcoded_libtool.patch
+++ b/meta/recipes-gnome/gtk+/gtk+-2.23.2/hardcoded_libtool.patch
@@ -1,8 +1,8 @@
-Index: gtk+-2.21.2/configure.in
+Index: gtk+-2.23.2/configure.in
 ===================================================================
---- gtk+-2.21.2.orig/configure.in	2010-06-22 17:21:41.000000000 +0800
-+++ gtk+-2.21.2/configure.in	2010-06-22 17:28:59.000000000 +0800
-@@ -425,7 +425,7 @@
+--- gtk+-2.23.2.orig/configure.in	2010-11-10 22:22:47.000000000 +0800
++++ gtk+-2.23.2/configure.in	2010-11-25 13:32:40.000000000 +0800
+@@ -414,7 +414,7 @@
  case $enable_explicit_deps in
    auto)
      export SED
@@ -11,21 +11,21 @@ Index: gtk+-2.21.2/configure.in
      if test "x$deplibs_check_method" '!=' xpass_all || test "x$enable_static" = xyes ; then
        enable_explicit_deps=yes  
      else
-@@ -804,7 +804,7 @@
+@@ -773,7 +773,7 @@
      dnl Now we check to see if our libtool supports shared lib deps
      dnl (in a rather ugly way even)
      if $dynworks; then
--        pixbuf_libtool_config="${CONFIG_SHELL-/bin/sh} ./libtool --config"
-+        pixbuf_libtool_config="${CONFIG_SHELL-/bin/sh} $host_alias-libtool --config"
-         pixbuf_deplibs_check=`$pixbuf_libtool_config | \
+-        module_libtool_config="${CONFIG_SHELL-/bin/sh} ./libtool --config"
++        module_libtool_config="${CONFIG_SHELL-/bin/sh} $host_alias-libtool --config"
+         module_deplibs_check=`$module_libtool_config | \
              grep '^[[a-z_]]*check[[a-z_]]*_method=[['\''"]]' | \
              sed 's/.*[['\''"]]\(.*\)[['\''"]]$/\1/'`
-@@ -1974,7 +1974,7 @@
+@@ -1555,7 +1555,7 @@
  # We are using gmodule-no-export now, but I'm leaving the stripping
  # code in place for now, since pango and atk still require gmodule.
  export SED
 -export_dynamic=`(./libtool --config; echo eval echo \\$export_dynamic_flag_spec) | sh`
 +export_dynamic=`($host_alias-libtool --config; echo eval echo \\$export_dynamic_flag_spec) | sh`
  if test -n "$export_dynamic"; then
-   GDK_PIXBUF_DEP_LIBS=`echo $GDK_PIXBUF_DEP_LIBS | sed -e "s/$export_dynamic//"`
-   GDK_PIXBUF_XLIB_DEP_LIBS=`echo $GDK_PIXBUF_XLIB_DEP_LIBS | sed -e "s/$export_dynamic//"`
+   GDK_DEP_LIBS=`echo $GDK_DEP_LIBS | sed -e "s/$export_dynamic//"`
+   GTK_DEP_LIBS=`echo $GTK_DEP_LIBS | sed -e "s/$export_dynamic//"`
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch
new file mode 100644
index 0000000..2170016
--- /dev/null
+++ b/meta/recipes-gnome/gtk+/gtk+-2.23.2/no-demos.patch
@@ -0,0 +1,13 @@
+Index: gtk+-2.23.2/Makefile.am
+===================================================================
+--- gtk+-2.23.2.orig/Makefile.am	2010-11-10 20:34:42.000000000 +0800
++++ gtk+-2.23.2/Makefile.am	2010-11-25 13:39:22.000000000 +0800
+@@ -1,7 +1,7 @@
+ ## Makefile.am for GTK+
+ include $(top_srcdir)/Makefile.decl
+ 
+-SRC_SUBDIRS = gdk gtk modules demos tests perf
++SRC_SUBDIRS = gdk gtk modules tests perf
+ SUBDIRS = po po-properties $(SRC_SUBDIRS) docs m4macros build
+ 
+ # require automake 1.4
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/run-iconcache.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/run-iconcache.patch
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/run-iconcache.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/run-iconcache.patch
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/toggle-font.diff b/meta/recipes-gnome/gtk+/gtk+-2.23.2/toggle-font.diff
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/toggle-font.diff
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/toggle-font.diff
diff --git a/meta/recipes-gnome/gtk+/gtk+-2.20.1/xsettings.patch b/meta/recipes-gnome/gtk+/gtk+-2.23.2/xsettings.patch
similarity index 100%
rename from meta/recipes-gnome/gtk+/gtk+-2.20.1/xsettings.patch
rename to meta/recipes-gnome/gtk+/gtk+-2.23.2/xsettings.patch
diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
index 425a21e..cdaf379 100644
--- a/meta/recipes-gnome/gtk+/gtk+.inc
+++ b/meta/recipes-gnome/gtk+/gtk+.inc
@@ -11,12 +11,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 SECTION = "libs"
 PRIORITY = "optional"
 DEPENDS = "glib-2.0 pango atk jpeg libpng libxext libxcursor gtk-doc-native libxrandr \
-           libgcrypt libxdamage libxrender libxcomposite cairo"
+           libgcrypt libxdamage libxrender libxcomposite cairo gdk-pixbuf"
 
 inherit autotools pkgconfig
 
-FILES_${PN} = "${bindir}/gdk-pixbuf-query-loaders \
-	${bindir}/gtk-update-icon-cache \
+FILES_${PN} = "${bindir}/gtk-update-icon-cache \
 	${bindir}/gtk-query-immodules-2.0 \
 	${libdir}/lib*${SOLIBS} \
 	${datadir}/themes ${sysconfdir} \
@@ -28,7 +27,6 @@ FILES_${PN}-dev += " \
 	${libdir}/gtk-2.0/${LIBV}/loaders/*.la \
 	${libdir}/gtk-2.0/${LIBV}/immodules/*.la \
 	${libdir}/gtk-2.0/${LIBV}/engines/*.la \
-	${bindir}/gdk-pixbuf-csource \
 	${bindir}/gtk-builder-convert"
 
 FILES_${PN}-dbg += " \
@@ -75,13 +73,3 @@ if [ "x$D" != "x" ]; then
 fi
 
 }
-
-postinst_pixbufloader() {
-if [ "x$D" != "x" ]; then
-  exit 1
-fi
-
-gdk-pixbuf-query-loaders > ${sysconfdir}/gtk-2.0/gdk-pixbuf.loaders
-
-test -x ${bindir}/gtk-update-icon-cache && gtk-update-icon-cache  -q ${datadir}/icons/hicolor
-}
diff --git a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb b/meta/recipes-gnome/gtk+/gtk+_2.23.2.bb
similarity index 74%
rename from meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
rename to meta/recipes-gnome/gtk+/gtk+_2.23.2.bb
index 80be21c..baccc29 100644
--- a/meta/recipes-gnome/gtk+/gtk+_2.20.1.bb
+++ b/meta/recipes-gnome/gtk+/gtk+_2.23.2.bb
@@ -4,9 +4,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
                     file://gtk/gtk.h;endline=27;md5=c59e0b4490dd135a5726ebf851f9b17f \
                     file://gdk/gdk.h;endline=27;md5=07db285ec208fb3e0bf7d861b0614202 \
                     file://tests/testgtk.c;endline=27;md5=262db5db5f776f9863e56df31423e24c"
-PR = "r2"
+PR = "r0"
 
-SRC_URI = "http://download.gnome.org/sources/gtk+/2.20/gtk+-${PV}.tar.bz2 \
+SRC_URI = "http://download.gnome.org/sources/gtk+/2.23/gtk+-${PV}.tar.bz2 \
            file://xsettings.patch;patch=1 \
            file://run-iconcache.patch;patch=1 \
            file://hardcoded_libtool.patch;patch=1 \
@@ -24,18 +24,17 @@ SRC_URI = "http://download.gnome.org/sources/gtk+/2.20/gtk+-${PV}.tar.bz2 \
 #           file://gtklabel-resize-patch;patch=1 \
 #           file://menu-deactivate.patch;patch=1 \
 #        file://combo-arrow-size.patch;patch=1;pnum=0 \
-            file://disable-gio-png-sniff-test.diff;patch=1 \
-            file://configurefix.patch;patch=1 \
+#            file://configurefix.patch;patch=1 \
 	  "
 
-SRC_URI[md5sum] = "53e6f3a93bd22934878fc4a4a34c68aa"
-SRC_URI[sha256sum] = "0e081731d21e34ff45c82199490c2889504fa8b3c7e117c043e82ababaec0f65"
+SRC_URI[md5sum] = "6afece3667ca2763e83cc76dc03f556d"
+SRC_URI[sha256sum] = "da5791f6a638fad7ce96497a5053f9846263e733c2e01cc43064f8ba1dfdb530"
 
-EXTRA_OECONF = "--without-libtiff --without-libjasper --disable-xkb --disable-glibtest --disable-cups"
+EXTRA_OECONF = "--without-libtiff --without-libjasper --enable-xkb --disable-glibtest --disable-cups"
 
 LIBV = "2.10.0"
 
-PACKAGES_DYNAMIC += "gdk-pixbuf-loader-* gtk-immodule-* gtk-printbackend-*"
+PACKAGES_DYNAMIC += "gtk-immodule-* gtk-printbackend-*"
 
 #-fomit-frame-pointer in default FULL_OPTIMIZATION will cause matchbox-panel segfault on atom-pc & emenlow
 FULL_OPTIMIZATION_emenlow = "-fexpensive-optimizations -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
@@ -45,14 +44,11 @@ python populate_packages_prepend () {
 	import os.path
 
 	prologue = bb.data.getVar("postinst_prologue", d, 1)
-	postinst_pixbufloader = bb.data.getVar("postinst_pixbufloader", d, 1)
 
 	gtk_libdir = bb.data.expand('${libdir}/gtk-2.0/${LIBV}', d)
-	loaders_root = os.path.join(gtk_libdir, 'loaders')
 	immodules_root = os.path.join(gtk_libdir, 'immodules')
 	printmodules_root = os.path.join(gtk_libdir, 'printbackends');
 
-	do_split_packages(d, loaders_root, '^libpixbufloader-(.*)\.so$', 'gdk-pixbuf-loader-%s', 'GDK pixbuf loader for %s', postinst_pixbufloader)
 	do_split_packages(d, immodules_root, '^im-(.*)\.so$', 'gtk-immodule-%s', 'GTK input module for %s', prologue + 'gtk-query-immodules-2.0 > /etc/gtk-2.0/gtk.immodules')
 	do_split_packages(d, printmodules_root, '^libprintbackend-(.*)\.so$', 'gtk-printbackend-%s', 'GTK printbackend module for %s')
 
-- 
1.7.0.4


