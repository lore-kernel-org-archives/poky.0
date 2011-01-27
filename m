Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C614B4C81279
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:37 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="701466214"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2011 15:41:36 -0800
Message-Id: <59299b405caa421dad7e2c8edecbab0f0d6a6e0e.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 01:30:22 +0800
Date: Fri, 28 Jan 2011  7:40:55 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 12/16] libxp: upgrade from 1.0.0 to 1.0.1
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:38 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb |   18 ------------------
 meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb |   18 ++++++++++++++++++
 2 files changed, 18 insertions(+), 18 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
 create mode 100644 meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb

diff --git a/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb b/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
deleted file mode 100644
index 5b412ec..0000000
--- a/meta/recipes-graphics/xorg-lib/libxp_1.0.0.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-require xorg-lib-common.inc
-
-DESCRIPTION = "X Printing Extension (Xprint) client library"
-
-LICENSE = "MIT & MIT-style"
-LIC_FILES_CHKSUM = "file://COPYING;md5=329e54eb6793b3d4830a4f6f1ca16e3f \
-                    file://src/XpPage.c;beginline=2;endline=37;md5=886b68ac3721003d54abfbd82bafc5ad"
-
-DEPENDS += "libxext libxau printproto"
-PR = "r1"
-PE = "1"
-
-XORG_PN = "libXp"
-
-CFLAGS_append += " -I ${S}/include/X11/XprintUtil -I ${S}/include/X11/extensions"
-
-SRC_URI[md5sum] = "0f4ac39108c1ae8c443cdfac259b58fa"
-SRC_URI[sha256sum] = "7e64b1550ce85b05762e960459ac676a0406c786756b200ff29c57f84bce9cae"
diff --git a/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb b/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb
new file mode 100644
index 0000000..a8461a9
--- /dev/null
+++ b/meta/recipes-graphics/xorg-lib/libxp_1.0.1.bb
@@ -0,0 +1,18 @@
+require xorg-lib-common.inc
+
+DESCRIPTION = "X Printing Extension (Xprint) client library"
+
+LICENSE = "MIT & MIT-style"
+LIC_FILES_CHKSUM = "file://COPYING;md5=9504a1264f5ddd4949254a57c0f8d6bb \
+                    file://src/XpPage.c;beginline=2;endline=35;md5=2b7d3d2ba5505b19271cf31b6918997e"
+
+DEPENDS += "libxext libxau printproto"
+PR = "r0"
+PE = "1"
+
+XORG_PN = "libXp"
+
+CFLAGS_append += " -I ${S}/include/X11/XprintUtil -I ${S}/include/X11/extensions"
+
+SRC_URI[md5sum] = "7ae1d63748e79086bd51a633da1ff1a9"
+SRC_URI[sha256sum] = "71d1f260005616d646b8c8788365f2b7d93911dac57bb53b65753d9f9e6443d2"
-- 
1.7.2


