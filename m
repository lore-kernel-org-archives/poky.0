Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E1E64C80B71
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2010 06:48:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="575119260"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2010 06:48:30 -0800
Message-Id: <a15a9776e961a709701d4f6c51ab899d14984890.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 12:34:24 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/7] pm-utils: Upgrade to version 1.4.1
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:31 -0000

Also fixed its metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb |   17 -----------------
 meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb |   23 +++++++++++++++++++++++
 2 files changed, 23 insertions(+), 17 deletions(-)
 delete mode 100644 meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb
 create mode 100644 meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb

diff --git a/meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb b/meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb
deleted file mode 100644
index fef87d3..0000000
--- a/meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-SECTION = "base"
-SUMMARY = "Utilities and scripts for power management"
-DESCRIPTION = "Simple shell command line toos to suspect and hibernate."
-LICENSE="GPL"
-
-PR = "r0"
-
-SRC_URI = "http://pm-utils.freedesktop.org/releases/pm-utils-${PV}.tar.gz"
-
-inherit pkgconfig autotools
-
-FILES_${PN}-dbg += "${libdir}/pm-utils/bin/.debug \
-		    ${datadir}/doc/pm-utils/README.debugging"
-
-do_configure_prepend () {
-	autoreconf -f -i -s
-}
diff --git a/meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb b/meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb
new file mode 100644
index 0000000..a4ac230
--- /dev/null
+++ b/meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb
@@ -0,0 +1,23 @@
+SECTION = "base"
+SUMMARY = "Utilities and scripts for power management"
+DESCRIPTION = "Simple shell command line toos to suspect and hibernate."
+HOMEPAGE = "http://pm-utils.freedesktop.org/wiki/"
+LICENSE="GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+                    file://src/pm-pmu.c;beginline=1;endline=22;md5=3c1ddbc54e735fb4a0386e14c78a3147"
+
+PR = "r0"
+
+SRC_URI = "http://pm-utils.freedesktop.org/releases/pm-utils-${PV}.tar.gz"
+
+inherit pkgconfig autotools
+
+FILES_${PN}-dbg += "${libdir}/pm-utils/bin/.debug \
+		    ${datadir}/doc/pm-utils/README.debugging"
+
+do_configure_prepend () {
+	autoreconf -f -i -s
+}
+
+SRC_URI[md5sum] = "1742a556089c36c3a89eb1b957da5a60"
+SRC_URI[sha256sum] = "8ed899032866d88b2933a1d34cc75e8ae42dcde20e1cc21836baaae3d4370c0b"
-- 
1.7.0.4


