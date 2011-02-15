Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FA504C8007E
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 19:33:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Feb 2011 17:33:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,471,1291622400"; d="scan'208";a="388778080"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 17:33:08 -0800
Message-Id: <a8dadd08c2f17053a69ded74d6f158b622a195cd.1297734607.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297734607.git.dongxiao.xu@intel.com>
References: <cover.1297734607.git.dongxiao.xu@intel.com>
Old-Date: Tue, 15 Feb 2011 09:45:06 +0800
Date: Tue, 15 Feb 2011  9:53:18 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] connman-gnome: Remove the applet and properties desktop icons
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
X-List-Received-Date: Tue, 15 Feb 2011 01:33:09 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Remove the applet and properties desktop icons, since the
connman-properties program should be invoked by tool bar,
while connman-applet is launched by autostart.

This fixes [BUGID #683] for laverne build, which is similar as
Bug 506.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman/connman-gnome/connman-applet.desktop   |   10 -----
 .../remove-connman-property-desktop-file.patch     |   42 ++++++++++++++++++++
 .../connman/connman-gnome_0.5.bb                   |    9 +---
 3 files changed, 44 insertions(+), 17 deletions(-)
 delete mode 100644 meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch

diff --git a/meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop b/meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
deleted file mode 100644
index 83d96ee..0000000
--- a/meta/recipes-connectivity/connman/connman-gnome/connman-applet.desktop
+++ /dev/null
@@ -1,10 +0,0 @@
-[Desktop Entry]
-Encoding=UTF-8
-Name=Connection Manager
-Comment=Connection Manager applet
-Icon=stock_internet
-Exec=connman-applet
-Terminal=false
-Type=Application
-Categories=Network;GTK;
-
diff --git a/meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch b/meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
new file mode 100644
index 0000000..2a8cff3
--- /dev/null
+++ b/meta/recipes-connectivity/connman/connman-gnome/remove-connman-property-desktop-file.patch
@@ -0,0 +1,42 @@
+diff -ruN connman-gnome-0.5-orig/po/POTFILES.in connman-gnome-0.5/po/POTFILES.in
+--- connman-gnome-0.5-orig/po/POTFILES.in	2010-12-16 16:03:29.000000000 +0800
++++ connman-gnome-0.5/po/POTFILES.in	2010-12-17 10:27:17.000000000 +0800
+@@ -4,4 +4,3 @@
+ properties/advanced.c
+ properties/ethernet.c
+ properties/wifi.c
+-properties/connman-properties.desktop.in
+diff -ruN connman-gnome-0.5-orig/properties/Makefile.am connman-gnome-0.5/properties/Makefile.am
+--- connman-gnome-0.5-orig/properties/Makefile.am	2010-12-16 16:03:29.000000000 +0800
++++ connman-gnome-0.5/properties/Makefile.am	2010-12-17 10:27:09.000000000 +0800
+@@ -17,16 +17,6 @@
+ 
+ INCLUDES = -I$(top_srcdir)/common
+ 
+-desktopdir = $(datadir)/applications
+-
+-desktop_in_files = connman-properties.desktop.in
+-
+-desktop_DATA = $(desktop_in_files:.desktop.in=.desktop)
+-
+ @INTLTOOL_DESKTOP_RULE@
+ 
+-CLEANFILES = $(desktop_DATA)
+-
+-EXTRA_DIST = $(desktop_in_files)
+-
+ MAINTAINERCLEANFILES = Makefile.in
+diff -ruN connman-gnome-0.5-orig/properties/connman-properties.desktop.in connman-gnome-0.5/properties/connman-properties.desktop.in
+--- connman-gnome-0.5-orig/properties/connman-properties.desktop.in	2010-12-16 16:03:29.000000000 +0800
++++ connman-gnome-0.5/properties/connman-properties.desktop.in	1970-01-01 08:00:00.000000000 +0800
+@@ -1,10 +0,0 @@
+-[Desktop Entry]
+-Encoding=UTF-8
+-_Name=Connection Management
+-_Comment=Configure connection management
+-Icon=stock_internet
+-Exec=connman-properties
+-Terminal=false
+-Type=Application
+-Categories=Settings;
+-OnlyShowIn=GNOME;
diff --git a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
index 7660048..fd6b5e8 100644
--- a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
+++ b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
@@ -6,17 +6,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
                     file://properties/main.c;beginline=1;endline=20;md5=50c77c81871308b033ab7a1504626afb \
                     file://common/connman-dbus.c;beginline=1;endline=20;md5=de6b485c0e717a0236402d220187717a"
 DEPENDS = "gtk+ dbus"
-PR = "r1"
+PR = "r2"
 
 RRECOMMENDS_${PN} = "python python-dbus connman connman-plugin-ethernet connman-plugin-loopback connman-plugin-udhcp connman-plugin-wifi connman-plugin-fake connman-plugin-bluetooth connman-plugin-dnsproxy"
 
 SRC_URI = "http://www.kernel.org/pub/linux/network/connman/connman-gnome-${PV}.tar.gz \
            file://connman-gnome.patch \
-           file://connman-applet.desktop"
+           file://remove-connman-property-desktop-file.patch"
 
 inherit autotools gtk-icon-cache
-
-do_install_append() {
-	install -d ${D}${datadir}/applications/
-	install ${WORKDIR}/connman-applet.desktop ${D}${datadir}/applications/
-}
-- 
1.6.3.3


