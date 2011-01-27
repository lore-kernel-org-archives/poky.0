Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 873C74C81266
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180240"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:33 -0800
Message-Id: <d75b756232fc78abdab8710883fcd196f5d20063.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 01:13:55 +0800
Date: Fri, 28 Jan 2011  7:40:53 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 10/16] xf86driproto: upgrade from 2.1.0 to 2.1.1
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:34 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-proto/xf86driproto_2.1.0.bb               |   11 -----------
 .../xorg-proto/xf86driproto_2.1.1.bb               |   11 +++++++++++
 2 files changed, 11 insertions(+), 11 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb

diff --git a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
deleted file mode 100644
index 9f76ddd..0000000
--- a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.0.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-require xorg-proto-common.inc
-
-LICENSE = "MIT"
-LIC_FILES_CHKSUM = "file://COPYING;md5=4641deddaa80fe7ca88e944e1fd94a94 \
-                    file://xf86driproto.h;endline=35;md5=42be3d8e6d429ab79172572bb0cff544"
-
-PR = "r1"
-PE = "1"
-
-SRC_URI[md5sum] = "309d552732666c3333d7dc63e80d042f"
-SRC_URI[sha256sum] = "d23f12deffd03e582e897ed6a7df3ea7f66ee8577f0f61374dcdf2ebffdce1be"
diff --git a/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb
new file mode 100644
index 0000000..dc4e758
--- /dev/null
+++ b/meta/recipes-graphics/xorg-proto/xf86driproto_2.1.1.bb
@@ -0,0 +1,11 @@
+require xorg-proto-common.inc
+
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://COPYING;md5=ef103b9d951e39ff7e23d386e2011fa3 \
+                    file://xf86driproto.h;endline=35;md5=42be3d8e6d429ab79172572bb0cff544"
+
+PR = "r0"
+PE = "1"
+
+SRC_URI[md5sum] = "1d716d0dac3b664e5ee20c69d34bc10e"
+SRC_URI[sha256sum] = "9c4b8d7221cb6dc4309269ccc008a22753698ae9245a398a59df35f1404d661f"
-- 
1.7.2


