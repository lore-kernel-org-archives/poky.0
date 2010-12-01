Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29F224C8110E
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:32:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Dec 2010 21:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="632665830"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2010 21:32:00 -0800
Message-Id: <c2238d28bf8a7201faa0333ee3cd9e695f3ca7d0.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
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
X-List-Received-Date: Fri, 03 Dec 2010 05:32:09 -0000

Removed no-desktop-docs.patch, as it is already in upstream.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-gnome/gnome/gnome-desktop.inc         |    2 +-
 .../gnome/gnome-desktop/no-desktop-docs.patch      |   10 ----------
 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb   |    3 ---
 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb   |    4 ++++
 4 files changed, 5 insertions(+), 14 deletions(-)
 delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop/no-desktop-docs.patch
 delete mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.26.2.bb
 create mode 100644 meta/recipes-gnome/gnome/gnome-desktop_2.32.1.bb

diff --git a/meta/recipes-gnome/gnome/gnome-desktop.inc b/meta/recipes-gnome/gnome/gnome-desktop.inc
index de3f751..fb330a5 100644
--- a/meta/recipes-gnome/gnome/gnome-desktop.inc
+++ b/meta/recipes-gnome/gnome/gnome-desktop.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "GNOME library for reading .desktop files"
 SECTION = "x11/gnome"
-LICENSE = "GPL"
+LICENSE = "GPLv2 & LGPLv2"
 DEPENDS = "gconf-dbus libxrandr virtual/libx11 gtk+ glib-2.0 gnome-doc-utils"
 
 EXTRA_OECONF = "--disable-scrollkeeper"
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


