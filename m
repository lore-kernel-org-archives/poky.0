Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3FC2B4C811CE
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:37 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Nov 2010 06:48:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="858979888"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2010 06:48:36 -0800
Message-Id: <b183bd7cd0810c279ad2026bed476422c04ca39c.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 14:28:26 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/7] polkit-gnome: Upgrade to version 0.99
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:37 -0000

Also fix its metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-extended/polkit/polkit-gnome_0.96.bb |   19 --------------
 meta/recipes-extended/polkit/polkit-gnome_0.99.bb |   27 +++++++++++++++++++++
 2 files changed, 27 insertions(+), 19 deletions(-)
 delete mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.96.bb
 create mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.99.bb

diff --git a/meta/recipes-extended/polkit/polkit-gnome_0.96.bb b/meta/recipes-extended/polkit/polkit-gnome_0.96.bb
deleted file mode 100644
index 50387f3..0000000
--- a/meta/recipes-extended/polkit/polkit-gnome_0.96.bb
+++ /dev/null
@@ -1,19 +0,0 @@
-HOMEPAGE = "http://www.packagekit.org/"
-DEPENDS = "polkit dbus-glib gconf gtk+"
-LICENSE = "LGPLv2+"
-
-SRC_URI = "http://hal.freedesktop.org/releases/polkit-gnome-${PV}.tar.bz2 \
-          "
-
-EXTRA_OECONF = " --disable-scrollkeeper \
-                 --disable-man-pages \
-                 --disable-examples \
-                 --disable-gtk-doc \
-                 --disable-introspection "
-
-inherit autotools pkgconfig
-
-FILES_${PN} += " ${datadir}/dbus-1 \
-                 ${datadir}/PolicyKit \
-               "
-
diff --git a/meta/recipes-extended/polkit/polkit-gnome_0.99.bb b/meta/recipes-extended/polkit/polkit-gnome_0.99.bb
new file mode 100644
index 0000000..f4fb337
--- /dev/null
+++ b/meta/recipes-extended/polkit/polkit-gnome_0.99.bb
@@ -0,0 +1,27 @@
+SUMMARY = "GNOME Authentication Agent for PolicyKit"
+DESCRIPTION = "PolicyKit-gnome provides an Authentication Agent for PolicyKit that integrates well with the GNOME desktop environment"
+HOMEPAGE = "http://www.packagekit.org/"
+BUGTRACKER = "http://bugzilla.gnome.org/"
+DEPENDS = "polkit dbus-glib gconf gtk+"
+LICENSE = "LGPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=74579fab173e4c5e12aac0cd83ee98ec \
+                    file://src/main.c;beginline=1;endline=20;md5=aba145d1802f2329ba561e3e48ecb795"
+
+SRC_URI = "http://hal.freedesktop.org/releases/polkit-gnome-${PV}.tar.bz2 \
+          "
+
+PR = "r0"
+
+EXTRA_OECONF = " --disable-scrollkeeper \
+                 --disable-man-pages \
+                 --disable-examples \
+                 --disable-gtk-doc \
+                 --disable-introspection "
+
+inherit autotools pkgconfig
+
+FILES_${PN} += " ${datadir}/dbus-1 \
+                 ${datadir}/PolicyKit \
+               "
+SRC_URI[md5sum] = "f1a2565083266bc8c05c60aa7d8a0f6a"
+SRC_URI[sha256sum] = "73c4d04aa89d9a9687f3650327c0ec1cba704e9d5b7fc193958fa81d621208ba"
-- 
1.7.0.4


