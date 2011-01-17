Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 117F64C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:45:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="593832477"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
Message-Id: <cde2dcdb822b4397751c3758ce7b6e5dd9354c66.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 07:22:37 -0800
Date: Mon, 17 Jan 2011 14:45:52 -0800
To: poky@yoctoproject.org
Subject: [PATCH 06/12] matchbox-desktop: fix build issue with gcc dso linking change
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
X-List-Received-Date: Mon, 17 Jan 2011 22:45:54 -0000

All the libraries needs to be specified explicitely with the new gcc dso
linking change patch. This was causing build errors for this
recipe. Specifying the libX11 library explicitely for linking to
work without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../files/dso_linking_change_build_fix.patch       |   26 ++++++++++++++++++++
 .../matchbox-desktop/matchbox-desktop_2.0.bb       |    5 ++-
 .../matchbox-desktop/matchbox-desktop_svn.bb       |    5 ++-
 3 files changed, 32 insertions(+), 4 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-desktop/files/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-sato/matchbox-desktop/files/dso_linking_change_build_fix.patch b/meta/recipes-sato/matchbox-desktop/files/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..54f3670
--- /dev/null
+++ b/meta/recipes-sato/matchbox-desktop/files/dso_linking_change_build_fix.patch
@@ -0,0 +1,26 @@
+after gcc linking has changed, all the libraries must be explicitely specified to for linking. 
+This patch avoids this linking error:
+
+| make[2]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/matchbox-desktop-2.0+svnr2096-r0/matchbox-desktop-2/src'^M
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o matchbox-desktop main.o taku-category-bar.o desktop.o ../libtaku/libtaku.a -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -ldbus-1 -lpthread -lrt   -lstartup-notification-1   ../libtaku/libinotify.a^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: F^A: invalid DSO for symbol `XFree' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so.6: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[2]: *** [matchbox-desktop] Error 1
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: matchbox-desktop-2/configure.ac
+===================================================================
+--- matchbox-desktop-2.orig/configure.ac
++++ matchbox-desktop-2/configure.ac
+@@ -14,7 +14,7 @@ if test x$inotify_support = xyes; then
+         AC_DEFINE(WITH_INOTIFY, [1], [If inotify is enabled])
+ fi
+ 
+-PKG_CHECK_MODULES(GTK, gtk+-2.0)
++PKG_CHECK_MODULES(GTK, [gtk+-2.0 x11])
+ 
+ AC_ARG_ENABLE(startup_notification,
+         AC_HELP_STRING([--disable-startup-notification], [disable startup notification support]),
diff --git a/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.0.bb b/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.0.bb
index 83d4d0b..2943e4d 100644
--- a/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.0.bb
+++ b/meta/recipes-sato/matchbox-desktop/matchbox-desktop_2.0.bb
@@ -2,9 +2,10 @@ DESCRIPTION = "Matchbox Window Manager Desktop"
 LICENSE = "GPL"
 DEPENDS = "gtk+ startup-notification"
 SECTION = "x11/wm"
-PR = "r1"
+PR = "r2"
 
-SRC_URI = "http://projects.o-hand.com/matchbox/sources/matchbox-desktop/2.0/matchbox-desktop-${PV}.tar.bz2"
+SRC_URI = "http://projects.o-hand.com/matchbox/sources/matchbox-desktop/2.0/matchbox-desktop-${PV}.tar.bz2 \
+	file://dso_linking_change_build_fix.patch"
 
 EXTRA_OECONF = "--enable-startup-notification"
 
diff --git a/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb b/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb
index f5aadfd..85325f0 100644
--- a/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb
+++ b/meta/recipes-sato/matchbox-desktop/matchbox-desktop_svn.bb
@@ -11,9 +11,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 DEPENDS = "gtk+ startup-notification dbus"
 SECTION = "x11/wm"
 PV = "2.0+svnr${SRCPV}"
-PR = "r0"
+PR = "r1"
 
-SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN}-2;proto=http"
+SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN}-2;proto=http \
+           file://dso_build_fix.patch"
 
 EXTRA_OECONF = "--enable-startup-notification --with-dbus"
 
-- 
1.7.3.4


