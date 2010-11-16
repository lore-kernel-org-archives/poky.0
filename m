Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB79E4C80FA7
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 11:07:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Nov 2010 09:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,218,1288594800"; d="scan'208";a="628090838"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2010 09:07:33 -0800
Message-Id: <d4c996bd84c7b3e8e78a5c714b1124bb9573a4a5.1290097804.git.ke.yu@intel.com>
In-Reply-To: <cover.1290097804.git.ke.yu@intel.com>
References: <cover.1290097804.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 16 Nov 2010 21:58:59 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/5] xrandr: upgrade from 1.3.2 to 1.3.4
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
X-List-Received-Date: Thu, 18 Nov 2010 17:07:33 -0000

Also remove the patch resolve_symbol_clash.patch,
because the code it applies to has been removed from
1.3.4, by commit ccb3f8a42b: "Remove --clone / --extend
support code", so this patch is no longer needed.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |    2 +-
 .../xorg-app/xrandr/resolve_symbol_clash.patch     |   33 --------------------
 .../xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb}  |    3 +-
 3 files changed, 3 insertions(+), 35 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
 rename meta/recipes-graphics/xorg-app/{xrandr_1.3.2.bb => xrandr_1.3.4.bb} (61%)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index d49eacf..afa3422 100644
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
similarity index 61%
rename from meta/recipes-graphics/xorg-app/xrandr_1.3.2.bb
rename to meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
index 3ddccb2..9a6e470 100644
--- a/meta/recipes-graphics/xorg-app/xrandr_1.3.2.bb
+++ b/meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb
@@ -7,4 +7,5 @@ DEPENDS += "libxrandr libxrender"
 PE = "1"
 PR = "r0"
 
-SRC_URI += "file://resolve_symbol_clash.patch"
+SRC_URI[md5sum] = "d6d20038257eba5178b523e10239d51c"
+SRC_URI[sha256sum] = "5e4a2492e6cc51345aa571b95283c43c2771c4f444837dbce2699d62f76b4adb"
-- 
1.7.0.4


