Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 942034C810CE
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 20:11:57 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 18:11:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,208,1288594800"; d="scan'208";a="574548397"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 18:11:56 -0800
Message-Id: <1796b7237144a86e75cd33b18f49bdfc26688845.1289958240.git.ke.yu@intel.com>
In-Reply-To: <cover.1289958240.git.ke.yu@intel.com>
References: <cover.1289958240.git.ke.yu@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Date: Tue, 16 Nov 2010 23:11:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/12] fixesproto: upgrade from 4.1.1 to the latest version 4.1.2
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
X-List-Received-Date: Wed, 17 Nov 2010 02:11:57 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-proto/fixesproto_4.1.1.bb                 |   11 -----------
 .../xorg-proto/fixesproto_4.1.2.bb                 |   11 +++++++++++
 3 files changed, 12 insertions(+), 12 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
 create mode 100644 meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 6f5b019..49ccbe8 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -10,7 +10,7 @@ PREFERRED_VERSION_compositeproto ?= "0.4"
 PREFERRED_VERSION_damageproto ?= "1.2.1"
 PREFERRED_VERSION_dmxproto ?= "2.3"
 PREFERRED_VERSION_evieext ?= "1.1.0"
-PREFERRED_VERSION_fixesproto ?= "4.1.1"
+PREFERRED_VERSION_fixesproto ?= "4.1.2"
 PREFERRED_VERSION_fontcacheproto ?= "0.1.3"
 PREFERRED_VERSION_fontcacheproto-native ?= "0.1.3"
 PREFERRED_VERSION_fontsproto ?= "2.1.0"
diff --git a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
deleted file mode 100644
index cb709f7..0000000
--- a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.1.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-require xorg-proto-common.inc
-
-LICENSE = "MIT-style"
-LIC_FILES_CHKSUM = "file://COPYING;md5=ae2c93d7226d1ed33287c3924ca61816 \
-                    file://xfixesproto.h;endline=41;md5=fa6bf4d92ae4dd0c1cac511105e541d2"
-
-CONFLICTS = "fixesext"
-PR = "r1"
-PE = "1"
-
-BBCLASSEXTEND = "nativesdk"
diff --git a/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
new file mode 100644
index 0000000..daf9c7a
--- /dev/null
+++ b/meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb
@@ -0,0 +1,11 @@
+require xorg-proto-common.inc
+
+LICENSE = "MIT & MIT-style"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bd0f26ecf86d0f24922125195d5b70a \
+                    file://xfixesproto.h;endline=43;md5=27614675897bb1cdc611ba7de506cddc"
+
+CONFLICTS = "fixesext"
+PR = "r0"
+PE = "1"
+
+BBCLASSEXTEND = "nativesdk"
-- 
1.7.0.4


