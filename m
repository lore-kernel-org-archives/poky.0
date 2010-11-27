Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40AF34C811AD
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 07:06:18 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 05:06:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,270,1288594800"; d="scan'208";a="578286863"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 05:06:08 -0800
Message-Id: <454a538ec3b42960c774c2fd0e71071bc1e33590.1290943560.git.ke.yu@intel.com>
In-Reply-To: <cover.1290943560.git.ke.yu@intel.com>
References: <cover.1290943560.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 27 Nov 2010 19:45:12 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/11] mesa-demo: add new recpies mesa demo 8.0.2
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
X-List-Received-Date: Sun, 28 Nov 2010 13:06:18 -0000

mesa-demo is originally part of mesa in 7.8 or earlier version. But starting from 7.9, mesa-demo become a seperate tar ball and has its own version 8.0.2, so this commit add new recipe for mesa-demos

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb |   19 +++++++++++++++++++
 1 files changed, 19 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb

diff --git a/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb b/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
new file mode 100644
index 0000000..fde2453
--- /dev/null
+++ b/meta/recipes-graphics/mesa/mesa-demos_8.0.1.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "mesa demo applications"
+HOMEPAGE = "http://mesa3d.org"
+BUGTRACKER = "https://bugs.freedesktop.org"
+SECTION = "x11"
+
+LICENSE = "MIT & PD"
+LIC_FILES_CHKSUM = "file://src/xdemos/glxgears.c;beginline=1;endline=20;md5=914225785450eff644a86c871d3ae00e \
+                    file://src/xdemos/glxdemo.c;beginline=1;endline=8;md5=b01d5ab1aee94d35b7efaa2ef48e1a06"
+
+DEPENDS = "virtual/libx11 virtual/libgl glew"
+
+PR = "r0"
+
+SRC_URI = "ftp://ftp.freedesktop.org/pub/mesa/demos/${PV}/${PN}-${PV}.tar.bz2"
+
+inherit autotools pkgconfig
+
+SRC_URI[md5sum] = "320c2a4b6edc6faba35d9cb1e2a30bf4"
+SRC_URI[sha256sum] = "4bc7f2b20d17e3eebfec288f2367a435cd2db71fc5ac9ece2c14827e290d77d1"
-- 
1.7.0.4


