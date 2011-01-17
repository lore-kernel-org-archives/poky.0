Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CB7A4C811F7
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:46:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jan 2011 14:46:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,335,1291622400"; d="scan'208";a="878266085"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2011 14:45:52 -0800
Message-Id: <e1a7b1fafc3c7ffd45da8ba75d8aca7a4a9074bd.1295304080.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1295304080.git.nitin.a.kamble@intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Old-Date: Tue, 11 Jan 2011 07:16:13 -0800
Date: Mon, 17 Jan 2011 14:45:52 -0800
To: poky@yoctoproject.org
Subject: [PATCH 05/12] settings-daemon: fix build error with new gcc dso linking change
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
recipe. Specifying the libX11 library explicitely for linking to work
without errors.

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../files/dso_linking_change_build_fix.patch       |   29 ++++++++++++++++++++
 .../settings-daemon/settings-daemon_svn.bb         |    5 ++-
 2 files changed, 32 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch

diff --git a/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch b/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch
new file mode 100644
index 0000000..5fd96d4
--- /dev/null
+++ b/meta/recipes-sato/settings-daemon/files/dso_linking_change_build_fix.patch
@@ -0,0 +1,29 @@
+after gcc linking has changed, all the libraries must be explicitely specified to for linking. 
+This patch avoids this linking error:
+
+| make  all-am^M
+| make[1]: Entering directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/settings-daemon-0.0+svnr2059-r3/settings-daemon'^M
+| ccache i586-poky-linux-gcc -march=i586 --sysroot=/disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux -Wall -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -o settings-daemon settings_daemon-xsettings-common.o settings_daemon-xsettings-manager.o settings_daemon-settings-daemon.o -pthread -lgconf-2 -ldbus-glib-1 -ldbus-1 -lpthread -lgdk-x11-2.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lpango-1.0 -lcairo -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0^M
+| /disk0/pokybuild/build1/tmp/sysroots/x86_64-linux/usr/libexec/i586-poky-linux/gcc/i586-poky-linux/4.5.1/ld: *^A: invalid DSO for symbol `XCreateSimpleWindow' definition^M
+| /disk0/pokybuild/build1/tmp/sysroots/i586-poky-linux/usr/lib/libX11.so.6: could not read symbols: Bad value^M
+| collect2: ld returned 1 exit status^M
+| make[1]: *** [settings-daemon] Error 1^M
+| make[1]: Leaving directory `/disk0/pokybuild/build1/tmp/work/i586-poky-linux/settings-daemon-0.0+svnr2059-r3/settings-daemon'^M
+| make: *** [all] Error 2^M
+
+Nitin A Kamble <nitin.a.kamble@intel.com>
+Date: 2011/01/11
+
+Index: settings-daemon/configure.ac
+===================================================================
+--- settings-daemon.orig/configure.ac
++++ settings-daemon/configure.ac
+@@ -14,7 +14,7 @@ AC_PROG_CC
+ 
+ 
+ dnl TODO: make gconf optional
+-PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-2.0])
++PKG_CHECK_MODULES(APP, [gconf-2.0 gdk-x11-2.0 x11])
+ 
+ 
+ AC_SUBST(APP_CFLAGS)
diff --git a/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb b/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb
index 720ebfb..4f798b8 100644
--- a/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb
+++ b/meta/recipes-sato/settings-daemon/settings-daemon_svn.bb
@@ -8,11 +8,12 @@ DEPENDS = "gconf glib-2.0 gtk+"
 SECTION = "x11"
 PV = "0.0+svnr${SRCPV}"
 
-PR = "r3"
+PR = "r4"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
            file://addsoundkeys.patch;apply=yes \
-           file://70settings-daemon.sh"
+           file://70settings-daemon.sh \
+           file://dso_linking_change_build_fix.patch"
 
 S = "${WORKDIR}/${PN}"
 
-- 
1.7.3.4


