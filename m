Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C686B4C811DA
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 09:49:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Dec 2010 07:49:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,361,1288594800"; d="scan'208";a="869325415"
Received: from unknown (HELO localhost) ([10.255.16.45])
	by fmsmga001.fm.intel.com with ESMTP; 17 Dec 2010 07:49:05 -0800
Message-Id: <fd75b79ef18aba59ff89b817aa9e9fcd7f59aaa8.1292600657.git.josh@linux.intel.com>
In-Reply-To: <cover.1292600657.git.josh@linux.intel.com>
References: <cover.1292600657.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Fri, 17 Dec 2010 14:11:12 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/4] gthumb: add gnome-doc-utils-native to DEPENDS
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
X-List-Received-Date: Fri, 17 Dec 2010 15:49:06 -0000

Help files are generated at build time using gnome-doc-utils so we need
gnome-doc-utils native to build this package.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-gnome/gthumb/gthumb_2.12.0.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
index 7df9d51..e34839a 100644
--- a/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
+++ b/meta/recipes-gnome/gthumb/gthumb_2.12.0.bb
@@ -2,8 +2,8 @@ DESCRIPTION = "gThumb is an image viewer and browser for the GNOME Desktop"
 SECTION = "x11/gnome"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
-DEPENDS = "glib-2.0 gtk+ libxml2 gnome-doc-utils libunique gconf-dbus libpng gstreamer jpeg tiff"
-PR = "r1"
+DEPENDS = "glib-2.0 gtk+ libxml2 gnome-doc-utils-native libunique gconf-dbus libpng gstreamer jpeg tiff"
+PR = "r2"
 
 EXTRA_OECONF = "--disable-gnome-keyring --disable-libsoup --disable-exiv2 --disable-clutter"
 
-- 
1.7.3.3


