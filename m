Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C0224C811E3
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 03:21:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="679076671"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 03:21:37 -0800
Message-Id: <dc074d4d0a045334add7ad021694f80ca6d9a0a2.1290165996.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290165996.git.edwin.zhai@intel.com>
References: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 19:24:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/17] matchbox-panel-2: Update to svn r2111
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:38 -0000

Also removed fix_sync_funcname.patch as we have it after update.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../matchbox-panel-2/fix_sync_funcname.patch       |   34 --------------------
 .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    5 +--
 3 files changed, 3 insertions(+), 38 deletions(-)
 delete mode 100644 meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index b91f7cd..a34717d 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -98,7 +98,7 @@ SRCREV_pn-matchbox-config-gtk ??= "2081"
 SRCREV_pn-matchbox-desktop-sato ??= "76"
 SRCREV_pn-matchbox-desktop ??= "2096"
 SRCREV_pn-matchbox-keyboard ??= "2075"
-SRCREV_pn-matchbox-panel-2 ??= "2109"
+SRCREV_pn-matchbox-panel-2 ??= "2111"
 SRCREV_pn-matchbox-panel ??= "1364"
 SRCREV_pn-matchbox-stroke ??= "1820"
 SRCREV_pn-matchbox-terminal ??= "1816"
diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch
deleted file mode 100644
index 25d08ed..0000000
--- a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-Rename function sync to sync_applet to avoid conflict.
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-diff -ruN matchbox-panel-2-orig/applets/showdesktop/showdesktop.c matchbox-panel-2/applets/showdesktop/showdesktop.c
---- matchbox-panel-2-orig/applets/showdesktop/showdesktop.c	2010-11-17 20:59:46.000000000 +0800
-+++ matchbox-panel-2/applets/showdesktop/showdesktop.c	2010-11-17 21:00:11.000000000 +0800
-@@ -57,7 +57,7 @@
- 
- /* Sync @applet with the _NET_SHOWING_DESKTOP root window property */
- static void
--sync (ShowDesktopApplet *applet)
-+sync_applet (ShowDesktopApplet *applet)
- {
-         GdkDisplay *display;
-         Atom type;
-@@ -103,7 +103,7 @@
-         if (xev->type == PropertyNotify) {
-                 if (xev->xproperty.atom == applet->atom) {
-                         /* _NET_SHOWING_DESKTOP changed */
--                        sync (applet);
-+                        sync_applet (applet);
-                 }
-         }
- 
-@@ -145,7 +145,7 @@
-                                applet);
- 
-         /* Sync */
--        sync (applet);
-+        sync_applet (applet);
- }
- 
- /* Button clicked */
diff --git a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
index f4ebcfb..8f5ccc8 100644
--- a/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
+++ b/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_svn.bb
@@ -13,15 +13,14 @@ DEPENDS += " ${@base_contains("MACHINE_FEATURES", "acpi", "libacpi", "",d)}"
 DEPENDS += " ${@base_contains("MACHINE_FEATURES", "apm", "apmd", "",d)}"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r6"
+PR = "r7"
 
 RPROVIDES_${PN} = "matchbox-panel"
 RREPLACES_${PN} = "matchbox-panel"
 RCONFLICTS_${PN} = "matchbox-panel"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
-           file://startup_fix.diff;patch=1 \
-           file://fix_sync_funcname.patch"
+           file://startup_fix.diff;patch=1"
 
 EXTRA_OECONF = "--enable-startup-notification --enable-dbus"
 EXTRA_OECONF += " ${@base_contains("MACHINE_FEATURES", "acpi", "--with-battery=acpi", "",d)}"
-- 
1.6.3.3


