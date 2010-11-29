Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C6F54C811E7
	for <poky@pokylinux.org>; Sun, 28 Nov 2010 20:48:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 18:48:53 -0800
Message-Id: <0d30dc$ka7cou@orsmga001.jf.intel.com>
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="681816868"
Received: from poky-desktop-ktian1.sh.intel.com (HELO localhost)
	([10.239.36.36])
	by orsmga001.jf.intel.com with ESMTP; 28 Nov 2010 18:48:53 -0800
From: Kevin Tian <kevin.tian@intel.com>
Date: Mon, 29 Nov 2010 10:20:21 +0800
To: poky@pokylinux.org
Subject: [PATCH 1/4] librsvg: append SRC_URI after inherit
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
X-List-Received-Date: Mon, 29 Nov 2010 02:48:54 -0000

or else gnome.bbclass overrides SRC_URI and the patch is not applied at all.

Signed-off-by: Kevin Tian <kevin.tian@intel.com>
---
 meta/recipes-gnome/librsvg/librsvg_2.32.0.bb |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
index 0228798..a421b68 100644
--- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
+++ b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
@@ -8,13 +8,13 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
 
 SECTION = "x11/utils"
 DEPENDS = "gtk+ libcroco cairo libxml2 popt"
-PR = "r0"
+PR = "r1"
 
-SRC_URI += "file://doc_Makefile.patch"
+inherit autotools pkgconfig gnome
 
 EXTRA_OECONF = "--disable-mozilla-plugin --without-svgz --without-croco --disable-gnome-vfs"
 
-inherit autotools pkgconfig gnome
+SRC_URI += "file://doc_Makefile.patch"
 
 do_configure_prepend () {
 	echo "CLEANFILES=" > gtk-doc.make
-- 
1.6.0.4


