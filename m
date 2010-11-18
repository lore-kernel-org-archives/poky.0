Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E64914C811CC
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2010 06:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="575119284"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2010 06:48:35 -0800
Message-Id: <412b1d8a4043d0e284e4c936dc2866be00e5f180.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 14:27:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/7] polkit: Upgrade to version 0.99
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:36 -0000

Add some missing files while do_package.
Also fix its metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../polkit/{polkit_0.96.bb => polkit_0.99.bb}      |   14 +++++++++++---
 1 files changed, 11 insertions(+), 3 deletions(-)
 rename meta/recipes-extended/polkit/{polkit_0.96.bb => polkit_0.99.bb} (51%)

diff --git a/meta/recipes-extended/polkit/polkit_0.96.bb b/meta/recipes-extended/polkit/polkit_0.99.bb
similarity index 51%
rename from meta/recipes-extended/polkit/polkit_0.96.bb
rename to meta/recipes-extended/polkit/polkit_0.99.bb
index e6e030b..6551cae 100644
--- a/meta/recipes-extended/polkit/polkit_0.96.bb
+++ b/meta/recipes-extended/polkit/polkit_0.99.bb
@@ -2,13 +2,21 @@ DESCRIPTION = "The polkit package is an application-level toolkit for defining a
 HOMEPAGE = "http://code.google.com/p/polkit/"
 LICENSE = "LGPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=155db86cdbafa7532b41f390409283eb \
-                    file://src/polkit/polkit.h;md5=8aa8924570fc5570d20e4a4ad5d2db51 \
-                    file://docs/polkit/html/license.html;md5=4c17ef1587e0f096c82157160d4e340e"
+                    file://src/polkit/polkit.h;beginline=1;endilne=20;md5=9f797b8912dac8a806be820c14e783f8 \
+                    file://docs/polkit/html/license.html;md5=54750ec6ece444c50b823234d445dd99"
 
 SRC_URI = "http://hal.freedesktop.org/releases/polkit-${PV}.tar.gz"
-PR = "r2"
+PR = "r0"
 DEPENDS = "libpam expat dbus-glib eggdbus intltool"
 RDEPENDS = "libpam"
 EXTRA_OECONF = "--with-authfw=pam --with-os-type=moblin --disable-man-pages --disable-gtk-doc --disable-introspection"
 
 inherit autotools pkgconfig
+
+FILES_${PN} += "${libdir}/${PN}-1/extensions/*.so \
+                ${datadir}/${PN}-1/actions/* \
+                ${datadir}/dbus-1/system-services/*"
+FILES_${PN}-dbg += "${libdir}/${PN}-1/extensions/.debug/*.so"
+
+SRC_URI[md5sum] = "fcc4d7b19c08ad54d3ce0eae0ab12398"
+SRC_URI[sha256sum] = "f612c7c26ec822f67751420057a4ae113fc50ab51070758faacf2ad30bb3583f"
-- 
1.7.0.4


