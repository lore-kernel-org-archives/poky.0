Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CA264C81201
	for <poky@yoctoproject.org>; Sun, 16 Jan 2011 06:15:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2011 04:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,329,1291622400"; d="scan'208";a="647456236"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2011 04:15:19 -0800
Message-Id: <a788d9855281eb57e35c90f71e207cc4112464db.1295179186.git.ke.yu@intel.com>
In-Reply-To: <cover.1295179186.git.ke.yu@intel.com>
References: <cover.1295179186.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Fri, 14 Jan 2011 23:13:37 +0800
Date: Sun, 16 Jan 2011 20:19:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 17/19] mesa-glsl: add mesa glsl 7.8.2
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
X-List-Received-Date: Sun, 16 Jan 2011 12:15:30 -0000

mesa glsl is required by mesa 7.8.2, so add it.

Signed-off-by: Yu Ke <ke.y@intel.com>
---
 .../mesa/mesa-dri-glsl-native_7.8.2.bb             |   27 ++++++++++++++++++++
 .../mesa/mesa-dri-glsl-native_7.9.bb               |   25 ------------------
 2 files changed, 27 insertions(+), 25 deletions(-)
 create mode 100644 meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
 delete mode 100644 meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb

diff --git a/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb b/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
new file mode 100644
index 0000000..d6f2c33
--- /dev/null
+++ b/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
@@ -0,0 +1,27 @@
+DESCRIPTION = "gl shader language specific build from mesa-dri"
+HOMEPAGE = "http://mesa3d.org"
+BUGTRACKER = "https://bugs.freedesktop.org"
+SECTION = "x11"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://apps/compile.c;endline=26;md5=27c2833286ce9566b162bcbe21d5b267"
+PR = "r0"
+
+DEPENDS = "makedepend-native"
+
+SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2"
+SRC_URI[md5sum] = "6be2d343a0089bfd395ce02aaf8adb57"
+SRC_URI[sha256sum] = "505bf418dceba05837f4ea1b1972b9620c35f8cb94bc4d1e6d573c15f562576d"
+
+S = "${WORKDIR}/Mesa-7.8.2/src/glsl/"
+
+inherit native
+
+# use default config for native build
+do_configure_prepend() {
+	ln -s ${S}/../../configs/default ${S}/../../configs/current
+}
+
+do_install() {
+	install -d ${D}/${bindir}
+	install -m 755 ${S}/apps/compile ${D}/${bindir}/glsl-compile
+}
diff --git a/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb b/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
deleted file mode 100644
index ffc113b..0000000
--- a/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
+++ /dev/null
@@ -1,25 +0,0 @@
-DESCRIPTION = "gl shader language specific build from mesa-dri"
-HOMEPAGE = "http://mesa3d.org"
-BUGTRACKER = "https://bugs.freedesktop.org"
-SECTION = "x11"
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://main.cpp;endline=22;md5=a12a9c0208ee64a07ce314dfed4c81eb"
-PR = "r0"
-
-DEPENDS = "makedepend-native talloc-native"
-
-SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2"
-
-S = "${WORKDIR}/Mesa-${PV}/src/glsl"
-
-inherit native
-
-# use default config for native build
-do_configure_prepend() {
-	ln -sf ${S}/../../configs/default ${S}/../../configs/current
-}
-
-do_install() {
-	install -d ${D}/${bindir}
-	install -m 755 ${S}/glsl_compiler ${D}/${bindir}/
-}
-- 
1.7.0.4


