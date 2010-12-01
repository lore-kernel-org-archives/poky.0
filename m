Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FC674C811E9
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Dec 2010 21:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="683063460"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 01 Dec 2010 21:55:39 -0800
Message-Id: <8e0239b45b69c1f490cf70f16b6c6cef38ec4303.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 1 Dec 2010 08:42:45 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 12/14] gnome-desktop: Update to 2.32.1
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:40 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-gnome/gnome/gnome-desktop.inc         |    4 ++--
 .../gnome/gnome-desktop/no-desktop-docs.patch      |   10 ----------
 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb   |    3 ---
 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb   |    4 ++++
 4 files changed, 6 insertions(+), 15 deletions(-)
 delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch
 delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb
 create mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb

diff --git a/meta/recipes-gnome/gnome/gnome-desktop.inc b/meta/recipes-gnome/gnome/gnome-desktop.inc
index de3f751..db827b9 100644
--- a/meta/recipes-gnome/gnome/gnome-desktop.inc
+++ b/meta/recipes-gnome/gnome/gnome-desktop.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "GNOME library for reading .desktop files"
 SECTION = "x11/gnome"
-LICENSE = "GPL"
+LICENSE = "GPLv2 & LGPLv2"
 DEPENDS = "gconf-dbus libxrandr virtual/libx11 gtk+ glib-2.0 gnome-doc-utils"
 
 EXTRA_OECONF = "--disable-scrollkeeper"
@@ -11,4 +11,4 @@ do_configure_prepend () {
 
 FILES_${PN} += "${datadir}/gnome-about"
 
-inherit gnome pkgconfig
\ No newline at end of file
+inherit gnome pkgconfig
diff --git a/meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch b/meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch
deleted file mode 100644
index c132341..0000000
--- a/meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch
+++ /dev/null
@@ -1,10 +0,0 @@
---- Makefile.am~	2007-05-22 16:50:35.000000000 +0200
-+++ Makefile.am	2007-05-22 16:50:35.000000000 +0200
-@@ -3,7 +3,6 @@
- 	libgnome-desktop 	\
- 	gnome-about 		\
- 	pixmaps			\
--	desktop-docs		\
- 	docs			\
- 	man
- 
diff --git a/meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb b/meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb
deleted file mode 100644
index f4184a4..0000000
--- a/meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb
+++ /dev/null
@@ -1,3 +0,0 @@
-require gnome-desktop.inc
-
-SRC_URI += "file://no-desktop-docs.patch;patch=1;pnum=0"
diff --git a/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb b/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
new file mode 100644
index 0000000..fa3ffb2
--- /dev/null
+++ b/meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb
@@ -0,0 +1,4 @@
+require gnome-desktop.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
+                    file://COPYING.LIB;md5=5f30f0716dfdd0d91eb439ebec522ec2"
-- 
1.7.0.4


