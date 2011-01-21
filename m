Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFDC34C811FA
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:46:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Jan 2011 02:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="377891546"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by azsmga001.ch.intel.com with ESMTP; 21 Jan 2011 02:46:05 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PgEPY-0005Zm-OY; Fri, 21 Jan 2011 18:40:08 +0800
Message-Id: <fcd1c336ac71559fd5d9e70a38725405a1f8d791.1295605995.git.qing.he@intel.com>
In-Reply-To: <cover.1295605993.git.qing.he@intel.com>
References: <cover.1295605993.git.qing.he@intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Thu, 20 Jan 2011 00:55:41 +0800
Date: Fri, 21 Jan 2011 18:40:08 +0800
To: poky@yoctoproject.org
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, aleksandr.koltsoff@ebts.fi
Subject: [PATCH 4/5] gst-plugins-base: add util-linux to DEPENDS
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
X-List-Received-Date: Fri, 21 Jan 2011 10:46:07 -0000

gst-plugins-base requires libuuid, so add util-linux to DEPENDS.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Qing He <qing.he@intel.com>
---
 .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
index 77330b6..8bf243e 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
                     file://COPYING.LIB;md5=55ca817ccb7d5b5b66355690e9abc605 \
                     file://gst/ffmpegcolorspace/utils.c;beginline=1;endline=20;md5=9c83a200b8e597b26ca29df20fc6ecd0"
 
-DEPENDS += "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg libvorbis libxv libtheora avahi"
+DEPENDS += "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg libvorbis libxv libtheora avahi util-linux"
 RDEPENDS_${PN} += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
              gnome-vfs-plugin-sftp"
 
@@ -15,7 +15,7 @@ SRC_URI += " file://gst-plugins-base-tremor.patch"
 SRC_URI[md5sum] = "9baa0d87e81c88b2477a3554ab629c46"
 SRC_URI[sha256sum] = "abb006c78222cfb69d31e983268d1d5219e9d4e0da24c6c4cd687968af7a33bd"
 
-PR = "r0"
+PR = "r1"
 
 inherit gettext
 
-- 
1.7.0


