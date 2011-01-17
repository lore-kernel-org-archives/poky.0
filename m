Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EBAB24C811F9
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="697744926"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga001.jf.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
Message-Id: <9e69f662636b4cd4f9c21b9e5cddf3054d9a65a0.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 10:32:10 -0800
Date: Mon, 17 Jan 2011 14:45:53 -0800
To: poky@yoctoproject.org
Subject: [PATCH 12/12] screenshot: fix build issue with gcc dso linking change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:55 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libX11 libgdk-x11-2.0 and libgdk_pixbuf-2.0 libraries
explicitely for linking to work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../files/dso_linking_change_build_fix.patch       |   41 ++++++++++++++++++++
 meta/recipes-sato/screenshot/screenshot_svn.bb     |    4 +-
 2 files changed, 44 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch b/meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..0d6f175
--- /dev/null
+++ b/meta/recipes-sato/screenshot/files/dso_linking_change_build_fix.patch
@@ -0,0 +1,41 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+
+
+| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o .libs/screenshot main.o -pthread  /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -lresolv /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangocairo-1.0.so -L/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstdc++.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcairo.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libz.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpango-1.0.so -lm /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfontconfig.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libexpat.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so -ldl /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthread-2.0.so -lpthread /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libglib-2.0.so -lrt ./.libs/libshot.a -pthread
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: L: invalid DSO for symbol `gdk_cursor_unref' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[1]: *** [screenshot] Error 1
+
+
+
+
+| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o .libs/screenshot main.o -pthread  /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -lresolv /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangocairo-1.0.so -L/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstdc++.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcairo.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libz.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpango-1.0.so -lm /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfontconfig.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libexpat.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so -ldl /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthread-2.0.so -lpthread /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libglib-2.0.so -lrt ./.libs/libshot.a /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so -pthread
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: a: invalid DSO for symbol `gdk_pixbuf_unref' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[1]: *** [screenshot] Error 1
+
+
+| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -g -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o .libs/screenshot main.o -pthread  /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangocairo-1.0.so -L/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstdc++.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcairo.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpango-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfontconfig.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libexpat.so ./.libs/libshot.a /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -lresolv /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libz.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so -ldl /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthread-2.0.so -lpthread /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libglib-2.0.so -lrt -lm -pthread
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: }: invalid DSO for symbol `XUngrabServer' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[1]: *** [screenshot] Error 1
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+
+Index: screenshot/Makefile.am
+===================================================================
+--- screenshot.orig/Makefile.am
++++ screenshot/Makefile.am
+@@ -23,4 +23,4 @@ endif
+ # A standalone tool for running from a terminal and scripts
+ bin_PROGRAMS = screenshot
+ screenshot_SOURCES = main.c
+-screenshot_LDADD = $(GTK_LIBS) libshot.la
++screenshot_LDADD = $(GTK_LIBS) libshot.la -lgdk-x11-2.0 -lgdk_pixbuf-2.0 -lX11
diff --git a/meta/recipes-sato/screenshot/screenshot_svn.bb b/meta/recipes-sato/screenshot/screenshot_svn.bb
index 35f3422..ff2b7c8 100644
--- a/meta/recipes-sato/screenshot/screenshot_svn.bb
+++ b/meta/recipes-sato/screenshot/screenshot_svn.bb
@@ -10,8 +10,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 PRIORITY = "optional"
 DEPENDS = "matchbox-panel-2"
 PV = "0.0+svnr${SRCPV}"
+PR = "r1"
 
-SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http"
+SRC_URI = "svn://svn.o-hand.com/repos/misc/trunk;module=${PN};proto=http\
+	file://dso_linking_change_build_fix.patch"
 
 S = ${WORKDIR}/${PN}
 
-- 
1.7.3.4


