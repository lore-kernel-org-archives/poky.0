Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 10C8D4C811E1
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Nov 2010 05:06:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="862042014"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2010 05:06:10 -0800
Message-Id: <c0c4540535c37d5582bec4e7c30d38759c8a2973.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sun, 28 Nov 2010 10:10:07 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/11] mesa-dri-glsl-native: upgrade from 7.8.2 to 7.9
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:11 -0000

with the following changes
- add license checksum
- add dependency of talloc-native, because mesa 7.9 start to use talloc to manage its memory.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 ...native_7.8.2.bb => mesa-dri-glsl-native_7.9.bb} |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)
 rename meta/recipes-graphics/mesa/{mesa-dri-glsl-native_7.8.2.bb => mesa-dri-glsl-native_7.9.bb} (58%)

diff --git a/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb b/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
similarity index 58%
rename from meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
rename to meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
index f6121c1..ffc113b 100644
--- a/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.8.2.bb
+++ b/meta/recipes-graphics/mesa/mesa-dri-glsl-native_7.9.bb
@@ -3,22 +3,23 @@ HOMEPAGE = "http://mesa3d.org"
 BUGTRACKER = "https://bugs.freedesktop.org"
 SECTION = "x11"
 LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://main.cpp;endline=22;md5=a12a9c0208ee64a07ce314dfed4c81eb"
 PR = "r0"
 
-DEPENDS = "makedepend-native"
+DEPENDS = "makedepend-native talloc-native"
 
 SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/${PV}/MesaLib-${PV}.tar.bz2"
 
-S = "${WORKDIR}/Mesa-7.8.2/src/glsl/"
+S = "${WORKDIR}/Mesa-${PV}/src/glsl"
 
 inherit native
 
 # use default config for native build
 do_configure_prepend() {
-	ln -s ${S}/../../configs/default ${S}/../../configs/current
+	ln -sf ${S}/../../configs/default ${S}/../../configs/current
 }
 
 do_install() {
 	install -d ${D}/${bindir}
-	install -m 755 ${S}/apps/compile ${D}/${bindir}/glsl-compile
+	install -m 755 ${S}/glsl_compiler ${D}/${bindir}/
 }
-- 
1.7.0.4


