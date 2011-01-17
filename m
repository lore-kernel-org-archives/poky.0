Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CE584C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:53 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="647924969"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
Message-Id: <c81398038391afd7293d732d634fdeccff57f1b7.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 08:14:04 -0800
Date: Mon, 17 Jan 2011 14:45:53 -0800
To: poky@yoctoproject.org
Subject: [PATCH 09/12] fstests: fix build issue with gcc dso linking change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:53 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libX11 library explicitely for linking to
work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../files/dso_linking_change_build_fix.patch       |   72 ++++++++++++++++++++
 meta/recipes-graphics/fstests/fstests_svn.bb       |    5 +-
 2 files changed, 75 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-graphics/fstests/files/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-graphics/fstests/files/dso_linking_change_build_fix.patch b/meta/recipes-graphics/fstests/files/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..03645b8
--- /dev/null
+++ b/meta/recipes-graphics/fstests/files/dso_linking_change_build_fix.patch
@@ -0,0 +1,72 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+
+| make[1]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/fstests-0.0+svnr426-r0/fstests/tests'^M
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12   -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o test-gtk-layout test_gtk_layout-test-gtk-layout.o -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lpangoxft-1.0 -lpangoft2-1.0 -lXft -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: t^A: invalid DSO for symbol `XSync' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so.6: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[1]: *** [test-gtk-layout] Error 1
+
+
+|ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o test-pango test_pango-test-pango.o -pthread -lpangoxft-1.0 -lpangoft2-1.0 -lXft -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: �: invalid DSO for symbol `XOpenDisplay' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so.6: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[1]: *** [test-pango] Error 1
+
+
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12   -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o test-pango-gdk test_pango_gdk-test-pango-gdk.o -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lpangoxft-1.0 -lpangoft2-1.0 -lXft -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: t: invalid DSO for symbol `XSync' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so.6: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[1]: *** [test-pango-gdk] Error 1
+
+
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12   -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o test-pango-gtk test_pango_gtk-test-pango-gtk.o -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lpangoxft-1.0 -lpangoft2-1.0 -lXft -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: t: invalid DSO for symbol `XSync' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so.6: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[1]: *** [test-pango-gtk] Error 1
+
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: tests/Makefile.am
+===================================================================
+--- tests.orig/Makefile.am
++++ tests/Makefile.am
+@@ -48,19 +48,19 @@ test_xft_CFLAGS = @XLIBS_CFLAGS@ @PANGO_
+ 
+ # draws pango strings with just x
+ test_pango_SOURCES = test-pango.c
+-test_pango_LDADD = @PANGO_LIBS@
++test_pango_LDADD = @PANGO_LIBS@ @XLIBS_LIBS@
+ test_pango_CFLAGS = @PANGO_CFLAGS@
+ 
+ #below are as above but on 
+ 
+ # Draws a list of Pango glyphs onto a GtkWindow with pango_xft_render
+ test_pango_gdk_SOURCES = test-pango-gdk.c
+-test_pango_gdk_LDADD = @GTK_LIBS@ @PANGO_LIBS@
++test_pango_gdk_LDADD = @GTK_LIBS@ @PANGO_LIBS@ @XLIBS_LIBS@
+ test_pango_gdk_CFLAGS = @GTK_CFLAGS@ @PANGO_CFLAGS@
+ 
+ # Draws a list of Pango glyphs onto a GtkDrawingArea with pango_xft_render
+ test_pango_gtk_SOURCES = test-pango-gtk.c
+-test_pango_gtk_LDADD = @GTK_LIBS@ @PANGO_LIBS@
++test_pango_gtk_LDADD = @GTK_LIBS@ @PANGO_LIBS@ @XLIBS_LIBS@
+ test_pango_gtk_CFLAGS = @GTK_CFLAGS@ @PANGO_CFLAGS@
+ 
+ # Draws a list of Pango glyphs onto a GtkWindow with gdk_draw_glyphs
+@@ -76,7 +76,7 @@ test_pango_layout_CFLAGS = @GTK_CFLAGS@ 
+ 
+ # As above PangoLayout onto a GtkWindow with gdk_draw_layout XXX TOGO ?
+ test_gtk_layout_SOURCES = test-gtk-layout.c
+-test_gtk_layout_LDADD = @GTK_LIBS@ @PANGO_LIBS@
++test_gtk_layout_LDADD = @GTK_LIBS@ @PANGO_LIBS@ @XLIBS_LIBS@
+ test_gtk_layout_CFLAGS = @GTK_CFLAGS@ @PANGO_CFLAGS@
+ 
+ 
diff --git a/meta/recipes-graphics/fstests/fstests_svn.bb b/meta/recipes-graphics/fstests/fstests_svn.bb
index efa5c1f..3c0d7b0 100644
--- a/meta/recipes-graphics/fstests/fstests_svn.bb
+++ b/meta/recipes-graphics/fstests/fstests_svn.bb
@@ -4,11 +4,12 @@ SECTION = "devel"
 LICENSE = "ZLIB"
 DEPENDS = "pango libxext libxft virtual/libx11 gtk+"
 PV = "0.0+svnr${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 inherit autotools
 
-SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=fstests;proto=http"
+SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=fstests;proto=http \
+	file://dso_linking_change_build_fix.patch"
 
 S = "${WORKDIR}/fstests/tests"
 
-- 
1.7.3.4


