Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 793D14C811DD
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Dec 2010 21:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="632278330"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2010 21:55:35 -0800
Message-Id: <26d119cb8d86934444543eac63fd0a64cd8683b0.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Tue, 30 Nov 2010 17:17:11 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/14] x11perf: Update to 1.5.2
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:36 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb |   10 ++++++++++
 meta/recipes-graphics/xorg-app/x11perf_1.5.bb   |    6 ------
 2 files changed, 10 insertions(+), 6 deletions(-)
 create mode 100644 meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
 delete mode 100644 meta/recipes-graphics/xorg-app/x11perf_1.5.bb

diff --git a/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb b/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
new file mode 100644
index 0000000..eaa83ac
--- /dev/null
+++ b/meta/recipes-graphics/xorg-app/x11perf_1.5.2.bb
@@ -0,0 +1,10 @@
+require xorg-app-common.inc
+
+DESCRIPTION = "X11 server performance test program"
+DEPENDS += "libxmu libxrender libxft libxext fontconfig"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=428ca4d67a41fcd4fc3283dce9bbda7e \
+                    file://x11perf.h;endline=24;md5=29555066baf406a105ff917ac25b2d01"
+
+PR = "r0"
+PE = "1"
diff --git a/meta/recipes-graphics/xorg-app/x11perf_1.5.bb b/meta/recipes-graphics/xorg-app/x11perf_1.5.bb
deleted file mode 100644
index 35680e7..0000000
--- a/meta/recipes-graphics/xorg-app/x11perf_1.5.bb
+++ /dev/null
@@ -1,6 +0,0 @@
-require xorg-app-common.inc
-
-DESCRIPTION = "X11 server performance test program"
-DEPENDS += "libxmu libxrender libxft libxext fontconfig"
-PR = "r1"
-PE = "1"
-- 
1.7.0.4


