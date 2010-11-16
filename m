Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD6AF4C811D4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:49:37 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 00:49:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="574633759"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 00:49:36 -0800
Message-Id: <60f36528e820dfb5745a177f2ef3659cd2516891.1289982119.git.ke.yu@intel.com>
In-Reply-To: <cover.1289982119.git.ke.yu@intel.com>
References: <cover.1289982119.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 21:58:59 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 07/10] xrandr: upgrade from 1.3.2 to 1.3.4
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
X-List-Received-Date: Wed, 17 Nov 2010 08:49:38 -0000

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-app/xrandr/resolve_symbol_clash.patch     |   33 --------------------
 .../xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb}  |    2 -
 3 files changed, 1 insertions(+), 36 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
 rename meta/recipes-graphics/xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb} (82%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index 5fba521..ae59129 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -126,7 +126,7 @@ PREFERRED_VERSION_xproto ?= "7.0.17"
 PREFERRED_VERSION_xproto-native ?= "7.0.17"
 PREFERRED_VERSION_xproto-nativesdk ?= "7.0.17"
 PREFERRED_VERSION_xproxymanagementprotocol ?= "1.0.3"
-PREFERRED_VERSION_xrandr ?= "1.3.2"
+PREFERRED_VERSION_xrandr ?= "1.3.4"
 PREFERRED_VERSION_xrdb ?= "1.0.5"
 PREFERRED_VERSION_xserver-kdrive ?= "1.7.99.2"
 PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.2"
diff --git a/meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch b/meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
deleted file mode 100644
index 1ecf956..0000000
--- a/meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
+++ /dev/null
@@ -1,33 +0,0 @@
----
- xrandr.c |    6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
-
---- xrandr-1.2.2.orig/xrandr.c
-+++ xrandr-1.2.2/xrandr.c
-@@ -189,7 +189,7 @@
- 
- #if HAS_RANDR_1_2
- typedef enum _policy {
--    clone, extend
-+    policy_clone, extend
- } policy_t;
- 
- typedef enum _relation {
-@@ -1602,7 +1602,7 @@
-     int		ret = 0;
- #if HAS_RANDR_1_2
-     output_t	*output = NULL;
--    policy_t	policy = clone;
-+    policy_t	policy = policy_clone;
-     Bool    	setit_1_2 = False;
-     Bool    	query_1_2 = False;
-     Bool	modeit = False;
-@@ -1863,7 +1863,7 @@
- 	    continue;
- 	}
- 	if (!strcmp ("--clone", argv[i])) {
--	    policy = clone;
-+	    policy = policy_clone;
- 	    setit_1_2 = True;
- 	    continue;
- 	}
diff --git a/meta/recipes-graphics/xorg-app/xrandr_1.3.2.bb b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
similarity index 82%
rename from meta/recipes-graphics/xorg-app/xrandr_1.3.2.bb
rename to meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
index 3ddccb2..a0e8286 100644
--- a/meta/recipes-graphics/xorg-app/xrandr_1.3.2.bb
+++ b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
@@ -6,5 +6,3 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=fe1608bdb33cf8c62a4438f7d34679b3"
 DEPENDS += "libxrandr libxrender"
 PE = "1"
 PR = "r0"
-
-SRC_URI += "file://resolve_symbol_clash.patch"
-- 
1.7.0.4


