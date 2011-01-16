Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 081894C811F8
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Jan 2011 04:15:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="375291558"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 16 Jan 2011 04:15:21 -0800
Message-Id: <b6ad42e7131091b4ef2363d38f4b4578435c4649.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 17:05:33 +0800
Date: Sun, 16 Jan 2011 20:19:56 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 18/19] mesa: add mesa 7.8.2
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:22 -0000

The latest mesa 7.10 has dependency on GPLv3 library talloc, so it is still necessary to keep one old non-GPLv3 mesa.And the latest non-GPLv3 version is mesa 7.8.2, so this patch add it.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 meta/recipes-graphics/mesa/mesa-common.inc         |    4 +-
 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb       |   59 ++++++++++++++++++++
 3 files changed, 62 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 4d4a475..19dd340 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -136,7 +136,7 @@ PREFERRED_VERSION_xtrans-native ?= "1.2.6"
 PREFERRED_VERSION_xtrans-nativesdk ?= "1.2.6"
 PREFERRED_VERSION_xvinfo ?= "1.0.2"
 PREFERRED_VERSION_xwininfo ?= "1.1.1"
-PREFERRED_VERSION_mesa-dri ?= "7.9"
+PREFERRED_VERSION_mesa-dri ?= "7.8.2"
 PREFERRED_VERSION_libdrm ?= "2.4.23"
 PREFERRED_VERSION_xcb-proto ?= "1.6"
 PREFERRED_VERSION_libxcb ?= "1.7"
diff --git a/meta/recipes-graphics/mesa/mesa-common.inc b/meta/recipes-graphics/mesa/mesa-common.inc
index f029d3d..0294c8f 100644
--- a/meta/recipes-graphics/mesa/mesa-common.inc
+++ b/meta/recipes-graphics/mesa/mesa-common.inc
@@ -4,8 +4,8 @@ BUGTRACKER = "https://bugs.freedesktop.org"
 SECTION = "x11"
 LICENSE = "MIT"
 
-SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
-           ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaDemos-${PV}.tar.bz2 "
+SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2;name=mesalib \
+           ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaDemos-${PV}.tar.bz2;name=mesademos "
 
 S = "${WORKDIR}/Mesa-${PV}"
 
diff --git a/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb b/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
new file mode 100644
index 0000000..60edddf
--- /dev/null
+++ b/meta/recipes-graphics/mesa/mesa-dri_7.8.2.bb
@@ -0,0 +1,59 @@
+include mesa-common.inc
+
+LIC_FILES_CHKSUM = "file://docs/license.html;md5=7a3373c039b6b925c427755a4f779c1d"
+
+PROTO_DEPS = "xf86driproto glproto dri2proto"
+LIB_DEPS = "libdrm virtual/libx11 libxext libxxf86vm libxdamage libxfixes expat"
+
+DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS} mesa-dri-glsl-native"
+
+PR = "r2"
+
+SRC_URI += "file://crossfix.patch"
+
+SRC_URI[mesalib.md5sum] = "6be2d343a0089bfd395ce02aaf8adb57"
+SRC_URI[mesalib.sha256sum] = "505bf418dceba05837f4ea1b1972b9620c35f8cb94bc4d1e6d573c15f562576d"
+
+SRC_URI[mesademos.md5sum] = "757d9e2e06f48b1a52848be9b0307ced"
+SRC_URI[mesademos.sha256sum] = "ea7b9ebfb7a80de2b275c0c9124c8a505382ec48411a2794ab82542f9885ac3c"
+
+# most of our targets do not have DRI so will use mesa-xlib
+DEFAULT_PREFERENCE = "-1"
+
+# Atom PCs have DRI support so use mesa-dri by default
+DEFAULT_PREFERENCE_atom-pc = "1"
+
+LEAD_SONAME = "libGL.so.1"
+
+EXTRA_OECONF += "--with-driver=dri --disable-egl --disable-gallium"
+
+# We need glsl-compile built for buildhost arch instead of target (is provided by mesa-dri-glsl-native)"
+do_configure_prepend() {
+	sed -i "s#^GLSL_CL = .*\$#GLSL_CL = ${STAGING_BINDIR_NATIVE}/glsl-compile#g" ${S}/src/mesa/shader/slang/library/Makefile
+}
+
+do_install_append () {
+	install -d ${D}/usr/bin
+	install -m 0755 ${S}/progs/xdemos/{glxdemo,glxgears,glxheads,glxinfo} ${D}/usr/bin/
+}
+
+python populate_packages_prepend() {
+	import os.path
+
+	dri_drivers_root = os.path.join(bb.data.getVar('libdir', d, 1), "dri")
+
+	do_split_packages(d, dri_drivers_root, '^(.*)_dri\.so$', 'mesa-dri-driver-%s', 'Mesa %s DRI driver', extra_depends='')
+}
+
+COMPATIBLE_HOST = '(i.86.*-linux|x86_64.*-linux)'
+
+PACKAGES =+ "${PN}-xprogs"
+PACKAGES_DYNAMIC = "mesa-dri-driver-*"
+
+FILES_${PN}-dbg += "${libdir}/dri/.debug/*"
+FILES_${PN}-xprogs = "${bindir}/glxdemo ${bindir}/glxgears ${bindir}/glxheads ${bindir}/glxinfo"
+
+#
+# Header generated by i586-poky-linux-gcc gen_matypes.c -o gen_matypes -I ../../../include/GL -I ../../../include -I .. -I ../main/ -I ../math -I ../glapi/ -I ../tnl
+# then run gen_matypes > matypes.h on device
+#
-- 
1.7.0.4


