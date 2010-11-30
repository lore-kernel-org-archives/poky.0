Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C3C174C810C1
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 23:32:12 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 21:32:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="580136802"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 21:31:58 -0800
Message-Id: <7553c545084625ea256d0c86240c163fb30c5d15.1291354553.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291354552.git.edwin.zhai@intel.com>
References: <cover.1291354552.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Tue, 30 Nov 2010 17:53:44 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 10/14] x11vnc: Update to 0.9.12
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
X-List-Received-Date: Fri, 03 Dec 2010 05:32:12 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb |   15 +++++++++++++++
 meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb  |   11 -----------
 2 files changed, 15 insertions(+), 11 deletions(-)
 create mode 100644 meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
 delete mode 100644 meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb

diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
new file mode 100644
index 0000000..af21786
--- /dev/null
+++ b/meta/recipes-graphics/x11vnc/x11vnc_0.9.12.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "Export your X session on-the-fly via VNC"
+HOMEPAGE = "http://www.karlrunge.com/x11vnc/"
+
+SECTION = "x11/utils"
+AUTHOR = "Karl Runge"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=361b6b837cad26c6900a926b62aada5f \
+                    file://x11vnc/x11vnc.h;endline=33;md5=ee4946e57bb73ecf93d7d98a3d48c6be"
+
+DEPENDS = "openssl virtual/libx11 libxext avahi jpeg zlib"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/libvncserver/x11vnc-${PV}.tar.gz"
+
+inherit autotools
+
diff --git a/meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb b/meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb
deleted file mode 100644
index 5269ff3..0000000
--- a/meta/recipes-graphics/x11vnc/x11vnc_0.9.3.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-DESCRIPTION = "Export your X session on-the-fly via VNC"
-SECTION = "x11/utils"
-HOMEPAGE = "http://www.karlrunge.com/x11vnc/"
-AUTHOR = "Karl Runge"
-LICENSE = "GPL"
-DEPENDS = "openssl virtual/libx11 libxext avahi jpeg zlib"
-
-SRC_URI = "${SOURCEFORGE_MIRROR}/libvncserver/x11vnc-${PV}.tar.gz"
-
-inherit autotools
-
-- 
1.7.0.4


