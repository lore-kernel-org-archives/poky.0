Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7ED054C811CC
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2010 22:53:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,260,1288594800"; d="scan'208";a="681195937"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2010 22:53:33 -0800
Message-Id: <eff5f285058cda678e2d9eeb3d2410e686ad34bf.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 23 Nov 2010 14:50:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/14] telepathy-mission-control: Upgrade to version 5.7.0
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:34 -0000

Remove the patch since the logic is not exist in latest version.

Fix recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy-mission-control/pkgconfig.patch      |   24 --------------------
 ..._4.67.bb => telepathy-mission-control_5.7.0.bb} |   12 ++++++---
 2 files changed, 8 insertions(+), 28 deletions(-)
 delete mode 100644 meta/recipes-connectivity/telepathy/telepathy-mission-control/pkgconfig.patch
 rename meta/recipes-connectivity/telepathy/{telepathy-mission-control_4.67.bb => telepathy-mission-control_5.7.0.bb} (73%)

diff --git a/meta/recipes-connectivity/telepathy/telepathy-mission-control/pkgconfig.patch b/meta/recipes-connectivity/telepathy/telepathy-mission-control/pkgconfig.patch
deleted file mode 100644
index 08a53d9..0000000
--- a/meta/recipes-connectivity/telepathy/telepathy-mission-control/pkgconfig.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Index: telepathy-mission-control-4.67/libmissioncontrol.pc.in
-===================================================================
---- telepathy-mission-control-4.67.orig/libmissioncontrol.pc.in	2008-04-08 12:26:02.000000000 +0100
-+++ telepathy-mission-control-4.67/libmissioncontrol.pc.in	2009-08-19 15:55:57.000000000 +0100
-@@ -8,5 +8,5 @@
- Description:  Mission Control Client Library
- Requires: dbus-1 >= 0.50, libtelepathy >= 0.3.2, telepathy-glib >= 0.7.1
- Version: @VERSION@
--Libs: -L${libdir} -lmissioncontrol-client @DBUS_LIBS@
--Cflags: -I${includedir} @DBUS_CFLAGS@
-+Libs: -L${libdir} -lmissioncontrol-client
-+Cflags: -I${includedir}
-Index: telepathy-mission-control-4.67/libmcclient.pc.in
-===================================================================
---- telepathy-mission-control-4.67.orig/libmcclient.pc.in	2009-08-19 16:33:46.000000000 +0100
-+++ telepathy-mission-control-4.67/libmcclient.pc.in	2009-08-19 16:35:09.000000000 +0100
-@@ -8,5 +8,5 @@
- Description:  Mission Control Client Library
- Requires: dbus-1 >= 0.50, telepathy-glib >= 0.7.1
- Version: @VERSION@
--Libs: -L${libdir} -lmcclient @DBUS_LIBS@
--Cflags: -I${includedir} @DBUS_CFLAGS@
-+Libs: -L${libdir} -lmcclient
-+Cflags: -I${includedir}
diff --git a/meta/recipes-connectivity/telepathy/telepathy-mission-control_4.67.bb b/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.0.bb
similarity index 73%
rename from meta/recipes-connectivity/telepathy/telepathy-mission-control_4.67.bb
rename to meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.0.bb
index 3af1779..de28a08 100644
--- a/meta/recipes-connectivity/telepathy/telepathy-mission-control_4.67.bb
+++ b/meta/recipes-connectivity/telepathy/telepathy-mission-control_5.7.0.bb
@@ -1,13 +1,14 @@
 DESCRIPTION = "Central control for Telepathy connection managers"
 HOMEPAGE = "http://mission-control.sourceforge.net/"
-LICENSE = "LGPL"
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
+                    file://src/request.h;beginline=1;endline=21;md5=f80534d9af1c33291b3b79609f196eb2"
 SECTION = "libs"
 DEPENDS = "libtelepathy dbus-glib gconf"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/mission-control/telepathy-mission-control-${PV}.tar.gz \
-           file://pkgconfig.patch;patch=1"
+SRC_URI = "http://telepathy.freedesktop.org/releases/telepathy-mission-control/telepathy-mission-control-${PV}.tar.gz"
 
-PR = "r1"
+PR = "r0"
 
 inherit autotools pkgconfig
 
@@ -38,3 +39,6 @@ FILES_libmissioncontrol-server-dev = "${libdir}/libmissioncontrol-server.*"
 FILES_libmissioncontrol-dbg = "${libdir}/.debug/libmissioncontrol.so.*"
 FILES_libmissioncontrol-config-dbg = "${libdir}/.debug/libmissioncontrol-config.so.*"
 FILES_libmissioncontrol-server-dbg = "${libdir}/.debug/libmissioncontrol-server.so.*"
+
+SRC_URI[md5sum] = "cf6a3f48bb493312b537c9b6b33c0a72"
+SRC_URI[sha256sum] = "ffe0da124418fa4f8c3a9049f7e13febb1ca5e9be92229cd5ab12238f4fda824"
-- 
1.6.3.3


