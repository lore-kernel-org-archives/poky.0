Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 417824C81001
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 09:07:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 07:07:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,401,1291622400"; d="scan'208";a="652595536"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 07:07:02 -0800
Message-Id: <73856756bf2a34bd894d3065d43356b98c1b8fdf.1296399890.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296399890.git.dexuan.cui@intel.com>
References: <cover.1296399890.git.dexuan.cui@intel.com>
Old-Date: Sun, 30 Jan 2011 14:11:57 +0800
Date: Sun, 30 Jan 2011 23:06:19 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 30: gdk-pixbuf: PULL 1/1] gdk-pixbuf: add jpeg into DEPENDS
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
X-List-Received-Date: Sun, 30 Jan 2011 15:07:03 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

This fixes the following error:
| checking for jpeg_destroy_decompress in -ljpeg... no
| configure: WARNING: *** JPEG loader will not be built (JPEG library not found) ***
| configure: error:
| *** Checks for JPEG loader failed. You can build without it by passing
| *** --without-libjpeg to configure but some programs using GTK+ may
| *** not work properly
| FATAL: oe_runconf failed

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
index ae57507..8080719 100644
--- a/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
+++ b/meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb
@@ -1,5 +1,7 @@
 require gdk-pixbuf.inc
 
+DEPENDS += "jpeg"
+
 PR = "r0"
 
 FILES_${PN} = "${bindir}/gdk-pixbuf-query-loaders \
-- 
1.7.2


