Return-Path: <ke.yu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 764BE4C811AD
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:06 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 05:06:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="354053929"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 05:06:05 -0800
Message-Id: <2e1a35c60e52a2b10f043c4ed5a0fd730ffd90df.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 27 Nov 2010 21:43:34 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/11] mesa: enable glu
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:06 -0000

GLU is needed by glew, which in turn needed by mesa-demos

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/mesa/mesa-common.inc  |    5 ++++-
 meta/recipes-graphics/mesa/mesa-dri_7.9.bb  |    2 +-
 meta/recipes-graphics/mesa/mesa-xlib_7.9.bb |    2 +-
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-graphics/mesa/mesa-common.inc b/meta/recipes-graphics/mesa/mesa-common.inc
index 240f956..f029d3d 100644
--- a/meta/recipes-graphics/mesa/mesa-common.inc
+++ b/meta/recipes-graphics/mesa/mesa-common.inc
@@ -13,7 +13,7 @@ PROVIDES = "virtual/libgl"
 
 inherit autotools pkgconfig
 
-EXTRA_OECONF = "--disable-glu \
+EXTRA_OECONF = "--enable-glu \
                 --disable-glw \
                 --disable-glut \
                 --enable-glx-tls"
@@ -21,4 +21,7 @@ EXTRA_OECONF = "--disable-glu \
 # Multiple virtual/gl providers being built breaks staging
 EXCLUDE_FROM_WORLD = "1"
 
+PACKAGES =+ "libglu libglu-dev"
 
+FILES_libglu = "${libdir}/libGLU.so.*"
+FILES_libglu-dev = "${libdir}/libGLU.* ${includedir}/GL/glu*.h"
diff --git a/meta/recipes-graphics/mesa/mesa-dri_7.9.bb b/meta/recipes-graphics/mesa/mesa-dri_7.9.bb
index 6f0f984..313b655 100644
--- a/meta/recipes-graphics/mesa/mesa-dri_7.9.bb
+++ b/meta/recipes-graphics/mesa/mesa-dri_7.9.bb
@@ -8,7 +8,7 @@ LIB_DEPS = "libdrm virtual/libx11 libxext libxxf86vm libxdamage libxfixes expat
 
 DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS} mesa-dri-glsl-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2 \
            file://crossfix.patch"
diff --git a/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb b/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
index c4d3b31..a816e93 100644
--- a/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
+++ b/meta/recipes-graphics/mesa/mesa-xlib_7.9.bb
@@ -10,6 +10,6 @@ LIB_DEPS = "virtual/libx11 libxext libxxf86vm libxdamage libxfixes talloc libxml
 DEPENDS = "${PROTO_DEPS}  ${LIB_DEPS}"
 
 PE = "1"
-PR = "r0"
+PR = "r1"
 
 EXTRA_OECONF += "--with-driver=xlib"
-- 
1.7.0.4


