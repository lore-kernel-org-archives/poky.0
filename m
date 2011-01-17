Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5B0E4C811F7
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:46:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2011 14:46:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="878266083"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2011 14:45:53 -0800
Message-Id: <77d22ac6e219167f0611a2136326979a96f634c4.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 09:38:09 -0800
Date: Mon, 17 Jan 2011 14:45:53 -0800
To: poky@yoctoproject.org
Subject: [PATCH 10/12] dates: fix build issue with gcc dso linking change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:46:12 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libm and libpango-1.0 libraries explicitely for
linking to work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../dates/dso_linking_change_build_fix.patch       |   36 ++++++++++++++++++++
 meta/recipes-sato/pimlico/dates_git.bb             |    5 ++-
 2 files changed, 39 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/pimlico/dates/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-sato/pimlico/dates/dso_linking_change_build_fix.patch b/meta/recipes-sato/pimlico/dates/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..c3e43e7
--- /dev/null
+++ b/meta/recipes-sato/pimlico/dates/dso_linking_change_build_fix.patch
@@ -0,0 +1,36 @@
+after gcc linking has changed, all the libraries must be explicitely specified 
+This patch avoids these linking errors:
+
+
+| make[2]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/dates-0.4.11+git0+514185dc1f6588085fda41eb59898b93d0487dd4-r2/git/src'^M
+| /bin/sh ../i586-poky-linux-libtool --tag=CC   --mode=link ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -std=gnu99 -Wall -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/evolution-data-server-2.30 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/dbus-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libxml2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gconf/2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libsoup-2.4 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/dbus-1.0/include   -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libowl -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12   -DUSE_OWL=1 -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o dates dates_gtk.o  dates_main.o dates_callbacks.o gconf-bridge.o -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lecal-1.2 -lical -licalss -licalvcal -ledataserver-1.2 -lxml2 -lsoup-2.4 -lgio-2.0 -lgmodule-2.0 -lgconf-2 -ldbus-glib-1 -ldbus-1 -lpthread -lgobject-2.0 -lgthread-2.0 -lrt -lglib-2.0   -pthread -lowl -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   libgtkdatesview.la
+| i586-poky-linux-libtool: link: ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -std=gnu99 -Wall -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/evolution-data-server-2.30 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/dbus-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libxml2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gconf/2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libsoup-2.4 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/dbus-1.0/include -pthread -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libowl -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/gtk-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/gtk-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/atk-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/cairo -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pango-1.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/glib-2.0 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/glib-2.0/include -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/pixman-1 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/freetype2 -I/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/include/libpng12 -DUSE_OWL=1 -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o .libs/dates dates_gtk.o dates_main.o dates_callbacks.o gconf-bridge.o -pthread -pthread  -L/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libecal-1.2.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libicalss.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libicalvcal.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libical.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libedataserver-1.2.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libsoup-2.4.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxml2.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgnutls.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libtasn1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgcrypt.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgpg-error.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgconf-2.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libdbus-glib-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libdbus-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libowl.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgtk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk-x11-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libatk-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgdk_pixbuf-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgio-2.0.so -lresolv /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangocairo-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpangoft2-1.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libstdc++.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libcairo.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpixman-1.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpng12.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXrender.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libxcb.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXau.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libXdmcp.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libz.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpango-1.0.so -lm /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfontconfig.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libfreetype.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libexpat.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgobject-2.0.so /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgmodule-2.0.so -ldl /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libgthread-2.0.so -lpthread /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libglib-2.0.so -lrt ./.libs/libgtkdatesview.a -pthread
+|
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: e: invalid DSO for symbol `pow@@GLIBC_2.0' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libm.so: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[2]: *** [dates] Error 1
+
+
+
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: z: invalid DSO for symbol `pango_layout_get_extents' definition
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libpango-1.0.so: could not read symbols: Bad value
+| collect2: ld returned 1 exit status
+| make[2]: *** [dates] Error 1
+
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: git/src/Makefile.am
+===================================================================
+--- git.orig/src/Makefile.am
++++ git/src/Makefile.am
+@@ -34,6 +34,6 @@ dates_SOURCES = $(platform) 	\
+ 	gconf-bridge.h		\
+ 	gconf-bridge.c
+ 
+-dates_LDADD = $(DATES_LIBS) $(OWL_LIBS) libgtkdatesview.la
++dates_LDADD = $(DATES_LIBS) $(OWL_LIBS) libgtkdatesview.la -lm -lpango-1.0
+ 
+ MAINTAINERCLEANFILES = config.h.in Makefile.in
diff --git a/meta/recipes-sato/pimlico/dates_git.bb b/meta/recipes-sato/pimlico/dates_git.bb
index bceeec6..973c42d 100644
--- a/meta/recipes-sato/pimlico/dates_git.bb
+++ b/meta/recipes-sato/pimlico/dates_git.bb
@@ -6,9 +6,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://src/gconf-bridge.c;endline=22;md5=ad7626c6daf4aec590474a243f4912fa"
 
 PV = "0.4.11+git${SRCPV}"
-PR = "r2"
+PR = "r3"
 
 S = "${WORKDIR}/git"
 
 SRC_URI = "git://git.gnome.org/${PN};protocol=git \
-	   file://make-382.patch"
+	   file://make-382.patch \
+	   file://dso_linking_change_build_fix.patch"
-- 
1.7.3.4


