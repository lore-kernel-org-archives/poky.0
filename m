Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C054B4C81250
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180223"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:31 -0800
Message-Id: <db9e0d39dc54e1820b757b99a72815c4f11f9f89.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 00:49:38 +0800
Date: Fri, 28 Jan 2011  7:40:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 08/16] printproto: upgrade from 1.0.4 to 1.0.5
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:31 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-proto/printproto_1.0.4.bb                 |   12 ------------
 .../xorg-proto/printproto_1.0.5.bb                 |   12 ++++++++++++
 2 files changed, 12 insertions(+), 12 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb

diff --git a/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb b/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
deleted file mode 100644
index 6f8e205..0000000
--- a/meta/recipes-graphics/xorg-proto/printproto_1.0.4.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require xorg-proto-common.inc
-
-
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=a2363c155fd3749a8cf436ef56c3070f \
-                    file://Print.h;beginline=2;endline=59;md5=1a2ee3cbfe3e38e136ff1b8477b51f4a"
-
-PR = "r1"
-PE = "1"
-
-SRC_URI[md5sum] = "7321847a60748b4d2f1fa16db4b6ede8"
-SRC_URI[sha256sum] = "f059a93188e7143dbb6cc55e31ccf81b976776aa3023bfa57f47501fd1bfd3be"
diff --git a/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb b/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb
new file mode 100644
index 0000000..28f0e94
--- /dev/null
+++ b/meta/recipes-graphics/xorg-proto/printproto_1.0.5.bb
@@ -0,0 +1,12 @@
+require xorg-proto-common.inc
+
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=658463213f19b48b81f8672d2696069f \
+                    file://Print.h;beginline=2;endline=59;md5=db19e065445b3755c09432864dcd8a9b"
+
+PR = "r0"
+PE = "1"
+
+SRC_URI[md5sum] = "99d0e25feea2fead7d8325b7000b41c3"
+SRC_URI[sha256sum] = "1298316cf43b987365ab7764d61b022a3d7f180b67b423eed3456862d155911a"
-- 
1.7.2


