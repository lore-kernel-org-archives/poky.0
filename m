Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 354094C811CF
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:37 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Nov 2010 03:21:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="350821209"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by azsmga001.ch.intel.com with ESMTP; 19 Nov 2010 03:21:36 -0800
Message-Id: <66ec5a2007b0c1e64cbfd59960923e67a89864ee.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 19 Nov 2010 19:23:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/17] matchbox-panel: Change function name "sync" to avoid conflict
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:37 -0000

/usr/includes/unistd.h also has a function named sync().
Change sync() in matchbox-panel-2 to sync_applet().

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../matchbox-panel-2/fix_sync_funcname.patch       |   34 ++++++++++++++++++++
 .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    5 ++-
 2 files changed, 37 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch

diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch
new file mode 100644
index 0000000..25d08ed
--- /dev/null
+++ b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch
@@ -0,0 +1,34 @@
+Rename function sync to sync_applet to avoid conflict.
+
+Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff -ruN matchbox-panel-2-orig/applets/showdesktop/showdesktop.c matchbox-panel-2/applets/showdesktop/showdesktop.c
+--- matchbox-panel-2-orig/applets/showdesktop/showdesktop.c	2010-11-17 20:59:46.000000000 +0800
++++ matchbox-panel-2/applets/showdesktop/showdesktop.c	2010-11-17 21:00:11.000000000 +0800
+@@ -57,7 +57,7 @@
+ 
+ /* Sync @applet with the _NET_SHOWING_DESKTOP root window property */
+ static void
+-sync (ShowDesktopApplet *applet)
++sync_applet (ShowDesktopApplet *applet)
+ {
+         GdkDisplay *display;
+         Atom type;
+@@ -103,7 +103,7 @@
+         if (xev->type == PropertyNotify) {
+                 if (xev->xproperty.atom == applet->atom) {
+                         /* _NET_SHOWING_DESKTOP changed */
+-                        sync (applet);
++                        sync_applet (applet);
+                 }
+         }
+ 
+@@ -145,7 +145,7 @@
+                                applet);
+ 
+         /* Sync */
+-        sync (applet);
++        sync_applet (applet);
+ }
+ 
+ /* Button clicked */
diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
index 4599863..f4ebcfb 100644
--- a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
+++ b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
@@ -13,14 +13,15 @@ DEPENDS += " ${@base_contains("MACHINE_FEATURES", "acpi", "libacpi", "",d)}"
 DEPENDS += " ${@base_contains("MACHINE_FEATURES", "apm", "apmd", "",d)}"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r5"
+PR = "r6"
 
 RPROVIDES_${PN} = "matchbox-panel"
 RREPLACES_${PN} = "matchbox-panel"
 RCONFLICTS_${PN} = "matchbox-panel"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
-           file://startup_fix.diff;patch=1"
+           file://startup_fix.diff;patch=1 \
+           file://fix_sync_funcname.patch"
 
 EXTRA_OECONF = "--enable-startup-notification --enable-dbus"
 EXTRA_OECONF += " ${@base_contains("MACHINE_FEATURES", "acpi", "--with-battery=acpi", "",d)}"
-- 
1.6.3.3


