Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 829974C810B0
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Nov 2010 05:06:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="630938351"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2010 05:06:03 -0800
Message-Id: <0964e61dd741d7e304f01cd57931c44da61d2db9.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 27 Nov 2010 09:24:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/11] mesa-xlib: upgrade from 7.8.2 to 7.9
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:29 -0000

- starting from mesa 7.9, mesa-demos is not bundled with mesa in upstream, so remove the mesa demo in mesa recipes. there will be a seperate recipes to build mesa-demos

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../mesa/{mesa-xlib_7.8.2.bb => mesa-xlib_7.9.bb}  |   13 +++----------
 1 files changed, 3 insertions(+), 10 deletions(-)
 rename meta/recipes-graphics/mesa/{mesa-xlib_7.8.2.bb => mesa-xlib_7.9.bb} (52%)

diff --git a/meta/recipes-graphics/mesa/mesa-xlib_7.8.2.bb b/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
similarity index 52%
rename from meta/recipes-graphics/mesa/mesa-xlib_7.8.2.bb
rename to meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
index 093ad6e..c4d3b31 100644
--- a/meta/recipes-graphics/mesa/mesa-xlib_7.8.2.bb
+++ b/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
@@ -1,9 +1,11 @@
 include mesa-common.inc
 
+SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2"
+
 LIC_FILES_CHKSUM = "file://docs/license.html;md5=7a3373c039b6b925c427755a4f779c1d"
 
 PROTO_DEPS = "xf86driproto glproto"
-LIB_DEPS = "virtual/libx11 libxext libxxf86vm libxdamage libxfixes"
+LIB_DEPS = "virtual/libx11 libxext libxxf86vm libxdamage libxfixes talloc libxml2-native"
 
 DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
 
@@ -11,12 +13,3 @@ PE = "1"
 PR = "r0"
 
 EXTRA_OECONF += "--with-driver=xlib"
-
-do_install_append () {
-    install -d ${D}/${bindir}
-    install -m 0755 ${S}/progs/xdemos/{glxdemo,glxgears,glxheads,glxinfo} ${D}/${bindir}
-}
-
-PACKAGES =+ "${PN}-xprogs"
-
-FILES_${PN}-xprogs = "${bindir}/glxdemo ${bindir}/glxgears ${bindir}/glxheads ${bindir}/glxinfo"
-- 
1.7.0.4


