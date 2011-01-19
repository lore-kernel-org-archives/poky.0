Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CC8DB4C811AE
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 18:41:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jan 2011 16:41:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,341,1291622400"; d="scan'208";a="594251011"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by orsmga002.jf.intel.com with ESMTP; 18 Jan 2011 16:41:32 -0800
Message-Id: <57deeb413df0480e74ca1711a5ebf2736a9fb213.1295397702.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1295397702.git.edwin.zhai@intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Thu, 25 Nov 2010 14:42:43 +0800
Date: Wed, 19 Jan 2011  8:46:05 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/6] gdk-pixbuf: Add 2.22.1 as new recipe
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
X-List-Received-Date: Wed, 19 Jan 2011 00:41:34 -0000

Updating gtk+ to 2.23.2 requires gdk-pixbuf, which is originaly a module in gtk+.
Borrow hardcoded_libtool.patch from original gtk+, and add configure_fix.patch
to fix build failure in cross-compile environment.

As gdk-pixbuf is a stand-alone package now, gdk-pixbuf-csource-native can be
safely removed. So extend gdk-pixbuf with native support, and make related
packages depend on it.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/classes/gtk-icon-cache.bbclass                |    2 +-
 .../gdk-pixbuf-2.22.1/configure_fix.patch          |   19 ++
 .../gdk-pixbuf-2.22.1/hardcoded_libtool.patch      |   31 +++
 .../gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb         |   13 ++
 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc       |   30 +++
 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |   35 +++
 meta/recipes-gnome/gnome/metacity_2.30.3.bb        |    2 +-
 .../gtk+/gdk-pixbuf-csource-native_2.12.7.bb       |   37 ----
 .../gdk-pixbuf-csource/reduce-dependencies.patch   |  221 --------------------
 meta/recipes-gnome/librsvg/librsvg_2.32.1.bb       |    2 +-
 meta/recipes-graphics/mutter/mutter.inc            |    2 +-
 11 files changed, 132 insertions(+), 262 deletions(-)
 create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/configure_fix.patch
 create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/hardcoded_libtool.patch
 create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
 create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
 create mode 100644 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
 delete mode 100644 meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
 delete mode 100644 meta/recipes-gnome/gtk+/gdk-pixbuf-csource/reduce-dependencies.patch

diff --git a/meta/classes/gtk-icon-cache.bbclass b/meta/classes/gtk-icon-cache.bbclass
index 524c2f0..dcabaf5 100644
--- a/meta/classes/gtk-icon-cache.bbclass
+++ b/meta/classes/gtk-icon-cache.bbclass
@@ -9,7 +9,7 @@ if [ "x$D" != "x" ]; then
 fi
 
 # Update the pixbuf loaders in case they haven't been registered yet
-gdk-pixbuf-query-loaders > /etc/gtk-2.0/gdk-pixbuf.loaders
+GDK_PIXBUF_MODULEDIR=${libdir}/gdk-pixbuf-2.0/2.10.0/loaders gdk-pixbuf-query-loaders --update-cache
 
 for icondir in /usr/share/icons/* ; do
     if [ -d $icondir ] ; then
diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/configure_fix.patch b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/configure_fix.patch
new file mode 100644
index 0000000..bbf239c
--- /dev/null
+++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/configure_fix.patch
@@ -0,0 +1,19 @@
+can sniff check buillds and runs an C binary, which breaks configure in
+cross-compile environ.
+This patch simple disables it.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Index: gdk-pixbuf-2.22.1/configure.ac
+===================================================================
+--- gdk-pixbuf-2.22.1.orig/configure.ac	2010-11-25 16:26:41.000000000 +0800
++++ gdk-pixbuf-2.22.1/configure.ac	2010-11-25 16:29:22.000000000 +0800
+@@ -99,6 +99,8 @@
+ AC_MSG_CHECKING([for native Win32])
+ LIB_EXE_MACHINE_FLAG=X86
+ EXE_MANIFEST_ARCHITECTURE=X86
++dnl disable can sniff check in cross compile
++gio_can_sniff=no
+ case "$host" in
+   *-*-mingw*)
+     os_win32=yes
diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/hardcoded_libtool.patch b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/hardcoded_libtool.patch
new file mode 100644
index 0000000..ae16927
--- /dev/null
+++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-2.22.1/hardcoded_libtool.patch
@@ -0,0 +1,31 @@
+Index: gdk-pixbuf-2.22.1/configure.ac
+===================================================================
+--- gdk-pixbuf-2.22.1.orig/configure.ac	2010-11-26 09:06:34.000000000 +0800
++++ gdk-pixbuf-2.22.1/configure.ac	2010-11-26 09:07:33.000000000 +0800
+@@ -287,7 +287,7 @@
+ case $enable_explicit_deps in
+   auto)
+     export SED
+-    deplibs_check_method=`(./libtool --config; echo 'eval echo \"$deplibs_check_method\"') | sh`
++    deplibs_check_method=`(./$host_alias-libtool --config; echo 'eval echo \"$deplibs_check_method\"') | sh`
+     if test "x$deplibs_check_method" '!=' xpass_all || test "x$enable_static" = xyes ; then
+       enable_explicit_deps=yes
+     else
+@@ -484,7 +484,7 @@
+     dnl Now we check to see if our libtool supports shared lib deps
+     dnl (in a rather ugly way even)
+     if $dynworks; then
+-        pixbuf_libtool_config="${CONFIG_SHELL-/bin/sh} ./libtool --config"
++        pixbuf_libtool_config="${CONFIG_SHELL-/bin/sh} ./$host_alias-libtool --config"
+         pixbuf_deplibs_check=`$pixbuf_libtool_config | \
+             grep '^[[a-z_]]*check[[a-z_]]*_method=[['\''"]]' | \
+             sed 's/.*[['\''"]]\(.*\)[['\''"]]$/\1/'`
+@@ -957,7 +957,7 @@
+ # We are using gmodule-no-export now, but I'm leaving the stripping
+ # code in place for now, since pango and atk still require gmodule.
+ export SED
+-export_dynamic=`(./libtool --config; echo eval echo \\$export_dynamic_flag_spec) | sh`
++export_dynamic=`(./$host_alias-libtool --config; echo eval echo \\$export_dynamic_flag_spec) | sh`
+ if test -n "$export_dynamic"; then
+   GDK_PIXBUF_DEP_LIBS=`echo $GDK_PIXBUF_DEP_LIBS | sed -e "s/$export_dynamic//"`
+ fi
diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
new file mode 100644
index 0000000..992ce16
--- /dev/null
+++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf-native_2.22.1.bb
@@ -0,0 +1,13 @@
+require gdk-pixbuf.inc
+inherit native
+
+DEPENDS = "libpng-native gettext-native glib-2.0-native"
+PR = "r0"
+
+PACKAGES_DYNAMIC = ""
+
+do_install_append() {
+	GDK_PIXBUF_MODULEDIR=${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders ${D}${bindir}/gdk-pixbuf-query-loaders > ${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders.cache
+	sed -i -e 's#${D}##g' ${D}${libdir}/gdk-pixbuf-2.0/2.10.0/loaders.cache
+	find ${D}${libdir} -name "libpixbufloader-*.la" -exec rm \{\} \;
+}
diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
new file mode 100644
index 0000000..af3383e
--- /dev/null
+++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf.inc
@@ -0,0 +1,30 @@
+DESCRIPTION = "Image loading library for GTK+"
+HOMEPAGE = "http://www.gtk.org/"
+BUGTRACKER = "https://bugzilla.gnome.org/"
+
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7 \
+                    file://gdk-pixbuf/gdk-pixbuf.h;endline=26;md5=5066b71daefeff678494fffa3040aba9"
+
+SECTION = "libs"
+PRIORITY = "optional"
+
+DEPENDS = "libpng gettext glib-2.0"
+
+SRC_URI = "http://ftp.acc.umu.se/pub/GNOME/sources/gdk-pixbuf/2.22/gdk-pixbuf-${PV}.tar.gz \
+           file://hardcoded_libtool.patch;patch=1 \
+           file://configure_fix.patch;patch=1 \
+           "
+
+SRC_URI[md5sum] = "fcfc854e9aec7dbb2bb3059484d44556"
+SRC_URI[sha256sum] = "bbb57364ffba70d64f5fcfe6eda1d67249b3d58844edb06dc0f94d1ad599b4ec"
+
+inherit autotools pkgconfig
+
+LIBV = "2.10.0"
+
+EXTRA_OECONF = "\
+  --without-libtiff \
+  --with-libpng \
+"
+
diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
new file mode 100644
index 0000000..ae57507
--- /dev/null
+++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
@@ -0,0 +1,35 @@
+require gdk-pixbuf.inc
+
+PR = "r0"
+
+FILES_${PN} = "${bindir}/gdk-pixbuf-query-loaders \
+	${libdir}/lib*.so.*"
+
+FILES_${PN}-dev += " \
+	${bindir}/gdk-pixbuf-csource \
+	${includedir}/*"
+
+FILES_${PN}-dbg += " \
+        ${libdir}/.debug/* \
+	${libdir}/gdk-pixbuf-2.0/${LIBV}/loaders/.debug/*"
+
+postinst_pixbufloader () {
+if [ "x$D" != "x" ]; then
+    exit 1
+fi
+
+GDK_PIXBUF_MODULEDIR=${libdir}/gdk-pixbuf-2.0/${LIBV}/loaders gdk-pixbuf-query-loaders --update-cache
+
+test -x ${bindir}/gtk-update-icon-cache && gtk-update-icon-cache  -q ${datadir}/icons/hicolor
+}
+
+PACKAGES_DYNAMIC += "gdk-pixbuf-loader-*"
+
+python populate_packages_prepend () {
+	postinst_pixbufloader = bb.data.getVar("postinst_pixbufloader", d, 1)
+
+	loaders_root = bb.data.expand('${libdir}/gdk-pixbuf-2.0/${LIBV}/loaders', d)
+
+	do_split_packages(d, loaders_root, '^libpixbufloader-(.*)\.so$', 'gdk-pixbuf-loader-%s', 'GDK pixbuf loader for %s', postinst_pixbufloader)
+}
+
diff --git a/meta/recipes-gnome/gnome/metacity_2.30.3.bb b/meta/recipes-gnome/gnome/metacity_2.30.3.bb
index 6e9dd72..18105f2 100644
--- a/meta/recipes-gnome/gnome/metacity_2.30.3.bb
+++ b/meta/recipes-gnome/gnome/metacity_2.30.3.bb
@@ -4,7 +4,7 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://src/include/main.h;endline=24;md5=c2242df552c880280315989bab626b90"
 
-DEPENDS = "startup-notification gtk+ gconf gdk-pixbuf-csource-native libcanberra"
+DEPENDS = "startup-notification gtk+ gconf gdk-pixbuf-native libcanberra"
 PR = "r0"
 
 inherit gnome update-alternatives
diff --git a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb b/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
deleted file mode 100644
index 0c8506a..0000000
--- a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource-native_2.12.7.bb
+++ /dev/null
@@ -1,37 +0,0 @@
-require gtk+_${PV}.bb
-inherit native
-DEPENDS = "jpeg-native libpng-native gettext-native glib-2.0-native libx11-native"
-S = "${WORKDIR}/gtk+-${PV}"
-FILESPATH = "${FILE_DIRNAME}/gdk-pixbuf-csource:${FILE_DIRNAME}/gtk+-${PV}:${FILE_DIRNAME}/files"
-SRC_URI += "file://reduce-dependencies.patch;patch=1"
-PR = "r13"
-
-#clear recommends for uclibc builds
-RRECOMMENDS_${PN} = " "
-RRECOMMENDS_${PN}_linux = "  "
-RRECOMMENDS_${PN}_linux-gnueabi = " "
-
-EXTRA_OECONF = "\
-  --with-gdktarget=x11 \
-  --without-libtiff \
-  --with-libjpeg \
-  --with-libpng \
-  --x-includes=${STAGING_INCDIR} \
-  --x-libraries=${STAGING_LIBDIR} \
-"
-
-PACKAGES_DYNAMIC = ""
-
-do_compile() {
-	cd gdk-pixbuf && oe_runmake
-}
-
-do_install() {
-	cd gdk-pixbuf
-	oe_runmake 'DESTDIR=${D}' install
-	install -d ${D}${sysconfdir}/gtk-2.0
-	GDK_PIXBUF_MODULEDIR=${D}${libdir}/gtk-2.0/2.10.0/loaders ${D}${bindir}/gdk-pixbuf-query-loaders > ${D}${sysconfdir}/gtk-2.0/gdk-pixbuf.loaders
-	sed -i -e 's#${D}##g' ${D}${sysconfdir}/gtk-2.0/gdk-pixbuf.loaders
-	find ${D}${libdir} -name "libpixbufloader-*.la" -exec rm \{\} \;
-}
-
diff --git a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource/reduce-dependencies.patch b/meta/recipes-gnome/gtk+/gdk-pixbuf-csource/reduce-dependencies.patch
deleted file mode 100644
index 6b030e8..0000000
--- a/meta/recipes-gnome/gtk+/gdk-pixbuf-csource/reduce-dependencies.patch
+++ /dev/null
@@ -1,221 +0,0 @@
-#
-# strip unnecessary stuff out of configure, we just want
-# to build gdk-pixbuf-csource.
-# -- Michael 'Mickey' Lauer <mlauer@vanille-media.de>
-#
----
-# configure.in |  116 ++---------------------------------------------------------
-# 1 file changed, 5 insertions(+), 111 deletions(-)
-#
---- gtk+-2.12.7.orig/configure.in
-+++ gtk+-2.12.7/configure.in
-@@ -30,13 +30,10 @@ m4_define([gtk_api_version], [2.0])
- #GTK_BINARY_VERSION=$GTK_MAJOR_VERSION.$GTK_MINOR_VERSION.$LT_CURRENT
- m4_define([gtk_binary_version], [2.10.0])
- 
- # required versions of other packages
- m4_define([glib_required_version], [2.13.5])
--m4_define([pango_required_version], [1.17.3])
--m4_define([atk_required_version], [1.9.0])
--m4_define([cairo_required_version], [1.2.0])
- 
- 
- AC_INIT([gtk+], [gtk_version],
-         [http://bugzilla.gnome.org/enter_bug.cgi?product=gtk%2B],
- 	[gtk+])
-@@ -347,14 +344,11 @@ ACLOCAL="$ACLOCAL $ACLOCAL_FLAGS"
- ## Later on we actually use the cflags/libs from separate pkg-config
- ## calls. Oh, also the later pkg-config calls don't include 
- ## the version requirements since those make the module lists 
- ## annoying to construct
- PKG_CHECK_MODULES(BASE_DEPENDENCIES,
--  [glib-2.0 >= glib_required_version dnl
--   atk >= atk_required_version dnl
--   pango >= pango_required_version dnl
--   cairo >= cairo_required_version])
-+  [glib-2.0 >= glib_required_version])
- 
- if test "$os_win32" != yes; then
-     # libtool option to control which symbols are exported
-     # right now, symbols starting with _ are not exported
-     LIBTOOL_EXPORT_OPTIONS='-export-symbols-regex "^[[^_]].*"'
-@@ -1059,27 +1053,19 @@ GDK_PIXBUF_DEP_CFLAGS="`$PKG_CONFIG --cf
- 
- GDK_PIXBUF_XLIB_PACKAGES=
- GDK_PIXBUF_XLIB_EXTRA_CFLAGS=
- GDK_PIXBUF_XLIB_EXTRA_LIBS=
- 	
--X_PACKAGES=fontconfig
-+X_PACKAGES=
- GDK_EXTRA_LIBS="$GDK_WLIBS"
- GDK_EXTRA_CFLAGS=
- 	
- # GTK+ uses some X calls, so needs to link against X directly
- GTK_DEP_PACKAGES_FOR_X=
- GTK_DEP_LIBS_FOR_X=
- 
- if test "x$gdktarget" = "xx11"; then
--  #
--  # We use fontconfig very peripherally when decoding the default
--  # settings.
--  #
--  if $PKG_CONFIG --exists fontconfig; then : ; else
--    AC_MSG_ERROR([
--*** fontconfig (http://www.fontconfig.org) is required by the X11 backend.])
--  fi
- 
-   #
-   # Check for basic X packages; we use pkg-config if available
-   #
-   if $PKG_CONFIG --exists x11 xext xrender; then
-@@ -1122,20 +1108,10 @@ if test "x$gdktarget" = "xx11"; then
-   CPPFLAGS="$CPPFLAGS $X_CFLAGS"
- 
-   gtk_save_LIBS=$LIBS
-   LIBS="$x_libs_for_checks $LIBS"
-   
--  # Sanity check for the X11 and Xext libraries. While everything we need from
--  # Xext is optional, the chances a system has *none* of these things is so
--  # small that we just unconditionally require it.
--  AC_CHECK_FUNC(XOpenDisplay, :,
--                AC_MSG_ERROR([*** libX11 not found. Check 'config.log' for more details.]))
--  AC_CHECK_FUNC(XextFindDisplay, :,
--                AC_MSG_ERROR([*** libXext not found. Check 'config.log' for more details.]))
--  AC_CHECK_FUNC(XRenderQueryExtension, :,
--                AC_MSG_ERROR([*** libXrender not found. Check 'config.log' for more details.]))
--
-   # Check for xReply
- 
-   AC_MSG_CHECKING([if <X11/extensions/XIproto.h> is needed for xReply])
-   AC_TRY_COMPILE([#include <X11/Xlibint.h>],
-       [xReply *rep;],
-@@ -1416,104 +1392,33 @@ if test "x$gdktarget" = "xdirectfb"; the
-   AM_CONDITIONAL(USE_DIRECTFB, true)
- else
-   AM_CONDITIONAL(USE_DIRECTFB, false)
- fi
- 
--
--# Check for Pango flags
--
--if test "x$gdktarget" = "xwin32"; then
--	PANGO_PACKAGES="pangowin32 pangocairo"
--else
--	PANGO_PACKAGES="pango pangocairo"
--fi
--
--AC_MSG_CHECKING(Pango flags)
--if $PKG_CONFIG --exists $PANGO_PACKAGES ; then
--        PANGO_CFLAGS=`$PKG_CONFIG --cflags $PANGO_PACKAGES`
--        PANGO_LIBS=`$PKG_CONFIG --libs $PANGO_PACKAGES`
--
--        AC_MSG_RESULT($PANGO_CFLAGS $PANGO_LIBS)
--else
--        AC_MSG_ERROR([
--*** Pango not found. Pango built with Cairo support is required
--*** to build GTK+. See http://www.pango.org for Pango information.
--])
--fi
--
--CFLAGS="$CFLAGS $PANGO_CFLAGS"
--
--if $PKG_CONFIG --uninstalled $PANGO_PACKAGES; then
--        :
--else
--	gtk_save_LIBS="$LIBS"
--        LIBS="$PANGO_LIBS $LIBS"
--        AC_TRY_LINK_FUNC(pango_context_new, :, AC_MSG_ERROR([
--*** Can't link to Pango. Pango is required to build
--*** GTK+. For more information see http://www.pango.org]))
--        LIBS="$gtk_save_LIBS"
--fi
--
--CFLAGS="$saved_cflags"
--LDFLAGS="$saved_ldflags"
--
--GDK_PACKAGES="$PANGO_PACKAGES"
--if test "x$gdktarget" = "xx11"; then
--  GDK_PACKAGES="$GDK_PACKAGES $X_PACKAGES"
--fi
- GDK_DEP_LIBS="$GDK_EXTRA_LIBS `$PKG_CONFIG --libs $GDK_PIXBUF_PACKAGES $GDK_PACKAGES` $GDK_PIXBUF_EXTRA_LIBS"
- GDK_DEP_CFLAGS="`$PKG_CONFIG --cflags  gthread-2.0 $GDK_PIXBUF_PACKAGES $GDK_PACKAGES` $GDK_PIXBUF_EXTRA_CFLAGS $GDK_EXTRA_CFLAGS"
- 
- #
- # If we aren't writing explicit dependencies, then don't put the extra libraries we need
- # into the pkg-config files
- #
- if test $enable_explicit_deps != yes ; then
--  GDK_PACKAGES="$PANGO_PACKAGES"
-+  GDK_PACKAGES=
-   GDK_EXTRA_LIBS=
- fi
- 
- AC_SUBST(GDK_PACKAGES)
- AC_SUBST(GDK_EXTRA_LIBS)
- AC_SUBST(GDK_EXTRA_CFLAGS)
- AC_SUBST(GDK_DEP_LIBS)
- AC_SUBST(GDK_DEP_CFLAGS)
- 
- 
--########################################
--# Check for Accessibility Toolkit flags
--########################################
--
--ATK_PACKAGES=atk
--AC_MSG_CHECKING(ATK flags)
--if $PKG_CONFIG --exists $ATK_PACKAGES ; then
--        ATK_CFLAGS=`$PKG_CONFIG --cflags $ATK_PACKAGES`
--        ATK_LIBS=`$PKG_CONFIG --libs $ATK_PACKAGES`
--
--        AC_MSG_RESULT($ATK_CFLAGS $ATK_LIBS)
--else
--        AC_MSG_ERROR([
--*** Accessibility Toolkit not found. Accessibility Toolkit is required
--*** to build GTK+.
--])
--fi
--
--if $PKG_CONFIG --uninstalled $ATK_PACKAGES; then
--        :
--else
--	gtk_save_LIBS="$LIBS"
--        LIBS="$ATK_LIBS $LIBS"
--        AC_TRY_LINK_FUNC(atk_object_get_type, : , AC_MSG_ERROR([
--                *** Cannot link to Accessibility Toolkit. Accessibility Toolkit is required
--                *** to build GTK+]))
--        LIBS="$gtk_save_LIBS"
--fi
--
--GTK_PACKAGES="atk cairo"
-+GTK_PACKAGES=
- GTK_EXTRA_LIBS=
- GTK_EXTRA_CFLAGS= 
--GTK_DEP_LIBS="$GDK_EXTRA_LIBS $GTK_DEP_LIBS_FOR_X `$PKG_CONFIG --libs $GDK_PIXBUF_PACKAGES $PANGO_PACKAGES $GTK_PACKAGES_FOR_X $GTK_PACKAGES` $GTK_EXTRA_LIBS $GDK_PIXBUF_EXTRA_LIBS"
-+GTK_DEP_LIBS="$GDK_EXTRA_LIBS $GTK_DEP_LIBS_FOR_X `$PKG_CONFIG --libs $GDK_PIXBUF_PACKAGES $GTK_PACKAGES_FOR_X $GTK_PACKAGES` $GTK_EXTRA_LIBS $GDK_PIXBUF_EXTRA_LIBS"
- GTK_DEP_CFLAGS="`$PKG_CONFIG --cflags  gthread-2.0 $GDK_PIXBUF_PACKAGES $GDK_PACKAGES $GTK_PACKAGES` $GDK_PIXBUF_EXTRA_CFLAGS $GDK_EXTRA_CFLAGS $GTK_EXTRA_CFLAGS"
- 
- if test x"$os_win32" = xyes; then
-   GTK_EXTRA_CFLAGS="$msnative_struct"
- fi
-@@ -1567,21 +1472,10 @@ LIBS="$CUPS_LIBS"
- AC_CHECK_FUNCS(httpGetAuthString)
- LIBS="$gtk_save_libs"
- 
- gtk_save_cppflags="$CPPFLAGS"
- CPPFLAGS="$CPPFLAGS $GTK_DEP_CFLAGS"
--			  
--AC_CHECK_HEADER(cairo-pdf.h,,AC_MSG_ERROR([
--*** Can't find cairo-pdf.h. You must build Cairo with the pdf
--*** backend enabled.]))
--
--if test "$os_win32" != "yes"; then
--  AC_CHECK_HEADER(cairo-ps.h,,AC_MSG_ERROR([
--*** Can't find cairo-ps.h. You must build Cairo with the 
--*** postscript backend enabled.]))
--fi   
--
- CPPFLAGS="$gtk_save_cppflags"
-      
- 			  	
- AC_ARG_ENABLE(test-print-backend,
-               [AC_HELP_STRING([--enable-test-print-backend],
diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.1.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.1.bb
index 0281d8e..ea9456d 100644
--- a/meta/recipes-gnome/librsvg/librsvg_2.32.1.bb
+++ b/meta/recipes-gnome/librsvg/librsvg_2.32.1.bb
@@ -43,6 +43,6 @@ if [ "x$D" != "x" ]; then
   exit 1
 fi
 
-test -x ${bindir}/gdk-pixbuf-query-loaders && { gdk-pixbuf-query-loaders > ${sysconfdir}/gtk-2.0/gdk-pixbuf.loaders ; }
+test -x ${bindir}/gdk-pixbuf-query-loaders && { GDK_PIXBUF_MODULEDIR=${libdir}/gdk-pixbuf-2.0/2.10.0/loaders gdk-pixbuf-query-loaders --update-cache ; }
 test -x ${bindir}/gtk-update-icon-cache && gtk-update-icon-cache  -q ${datadir}/icons/hicolor
 }
diff --git a/meta/recipes-graphics/mutter/mutter.inc b/meta/recipes-graphics/mutter/mutter.inc
index f3b4a31..cf42e42 100644
--- a/meta/recipes-graphics/mutter/mutter.inc
+++ b/meta/recipes-graphics/mutter/mutter.inc
@@ -1,7 +1,7 @@
 SECTION = "x11/wm"
 DESCRIPTION = "Metacity is the boring window manager for the adult in you. Mutter is metacity + clutter."
 LICENSE = "GPLv2"
-DEPENDS = "startup-notification gtk+ gconf clutter-1.0 gdk-pixbuf-csource-native intltool glib-2.0-native"
+DEPENDS = "startup-notification gtk+ gconf clutter-1.0 gdk-pixbuf-native intltool glib-2.0-native"
 # gobject-introspection
 inherit gnome update-alternatives
 
-- 
1.7.0.4


