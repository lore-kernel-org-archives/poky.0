Return-Path: <dexuan.cui@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 184974C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:07:39 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Jan 2011 05:06:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="370354979"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by azsmga001.ch.intel.com with ESMTP; 05 Jan 2011 05:06:39 -0800
Message-Id: <b1e92c18d8d27ca39d836b5ba37bae9fb50640c5.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:18:45 +0800
Date: Wed, 05 Jan 2011 21:06:22 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/12] librsvg: upgrade from 2.32.0 to 2.32.1
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
X-List-Received-Date: Wed, 05 Jan 2011 13:07:40 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../doc_Makefile.patch                             |    0
 .../{librsvg_2.32.0.bb => librsvg_2.32.1.bb}       |    7 ++++---
 2 files changed, 4 insertions(+), 3 deletions(-)
 rename meta/recipes-gnome/librsvg/{librsvg-2.32.0 => librsvg-2.32.1}/doc_Makefile.patch (100%)
 rename meta/recipes-gnome/librsvg/{librsvg_2.32.0.bb => librsvg_2.32.1.bb} (90%)

diff --git a/meta/recipes-gnome/librsvg/librsvg-2.32.0/doc_Makefile.patch b/meta/recipes-gnome/librsvg/librsvg-2.32.1/doc_Makefile.patch
similarity index 100%
rename from meta/recipes-gnome/librsvg/librsvg-2.32.0/doc_Makefile.patch
rename to meta/recipes-gnome/librsvg/librsvg-2.32.1/doc_Makefile.patch
diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.1.bb
similarity index 90%
rename from meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
rename to meta/recipes-gnome/librsvg/librsvg_2.32.1.bb
index 35cf5a4..0281d8e 100644
--- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
+++ b/meta/recipes-gnome/librsvg/librsvg_2.32.1.bb
@@ -8,7 +8,8 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "x11/utils"
 DEPENDS = "gtk+ libcroco cairo libxml2 popt"
-PR = "r2"
+
+PR = "r0"
 
 inherit autotools pkgconfig gnome
 
@@ -16,8 +17,8 @@ EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disabl
 
 SRC_URI += "file://doc_Makefile.patch"
 
-SRC_URI[archive.md5sum] = "b015a9bd80143ec876af489d882dc28b"
-SRC_URI[archive.sha256sum] = "e0f6f936dab583de317cc0c36a48f80bdb9c93775225ee84140c7e5e3f841068"
+SRC_URI[archive.md5sum] = "4b00d0fee130c936644892c152f42db7"
+SRC_URI[archive.sha256sum] = "91b98051f352fab8a6257688d6b2fd665b4648ed66144861f2f853ccf876d334"
 
 do_configure_prepend () {
 	export GDK_PIXBUF_QUERYLOADERS="${libdir}/gtk-2.0/version/loaders"
-- 
1.7.2


