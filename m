Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A5114C811E7
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 07:06:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2011 05:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="693795309"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 05:06:40 -0800
Message-Id: <13cc5b10968734be165fe150dae9bdd94d1cfde0.1294232460.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1294232460.git.dexuan.cui@intel.com>
References: <cover.1294232460.git.dexuan.cui@intel.com>
From: Dexuan Cui <dexuan.cui@intel.com>
Old-Date: Wed, 5 Jan 2011 20:47:42 +0800
Date: Wed, 05 Jan 2011 21:06:24 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/12] preferred-xorg-versions.inc: updated for lastest package updates
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
X-List-Received-Date: Wed, 05 Jan 2011 13:06:41 -0000

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../distro/include/preferred-xorg-versions.inc     |   28 ++++++++++----------
 1 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/meta/conf/distro/include/preferred-xorg-versions.inc b/meta/conf/distro/include/preferred-xorg-versions.inc
index a47b08f..84e42eb 100644
--- a/meta/conf/distro/include/preferred-xorg-versions.inc
+++ b/meta/conf/distro/include/preferred-xorg-versions.inc
@@ -6,7 +6,7 @@ PREFERRED_VERSION_applewmproto ?= "1.4.1"
 PREFERRED_VERSION_bigreqsproto ?= "1.1.0"
 PREFERRED_VERSION_bigreqsproto-native ?= "1.1.0"
 PREFERRED_VERSION_bigreqsproto-nativesdk ?= "1.1.0"
-PREFERRED_VERSION_compositeproto ?= "0.4"
+PREFERRED_VERSION_compositeproto ?= "0.4.2"
 PREFERRED_VERSION_damageproto ?= "1.2.1"
 PREFERRED_VERSION_dmxproto ?= "2.3"
 PREFERRED_VERSION_evieext ?= "1.1.0"
@@ -18,14 +18,14 @@ PREFERRED_VERSION_fontsproto-native ?= "2.1.1"
 PREFERRED_VERSION_gccmakedep ?= "1.0.2"
 PREFERRED_VERSION_glproto ?= "1.4.12"
 PREFERRED_VERSION_imake ?= "1.0.4"
-#PREFERRED_VERSION_inputproto ?= "2.0"
-#PREFERRED_VERSION_inputproto-native ?= "2.0"
-#PREFERRED_VERSION_inputproto-nativesdk ?= "2.0"
+PREFERRED_VERSION_inputproto ?= "2.0.1"
+PREFERRED_VERSION_inputproto-native ?= "2.0.1"
+PREFERRED_VERSION_inputproto-nativesdk ?= "2.0.1"
 PREFERRED_VERSION_kbproto ?= "1.0.5"
 PREFERRED_VERSION_kbproto-native ?= "1.0.5"
 PREFERRED_VERSION_kbproto-nativesdk ?= "1.0.5"
 PREFERRED_VERSION_libapplewm ?= "1.0.0"
-PREFERRED_VERSION_libdmx ?= "1.1.0"
+PREFERRED_VERSION_libdmx ?= "1.1.1"
 PREFERRED_VERSION_libfontenc ?= "1.1.0"
 PREFERRED_VERSION_libfontenc-native ?= "1.1.0"
 PREFERRED_VERSION_libfs ?= "1.0.1"
@@ -78,20 +78,20 @@ PREFERRED_VERSION_libxtst ?= "1.2.0"
 PREFERRED_VERSION_libxv ?= "1.0.6"
 PREFERRED_VERSION_libxvmc ?= "1.0.6"
 PREFERRED_VERSION_libxxf86dga ?= "1.1.2"
-PREFERRED_VERSION_libxxf86misc ?= "1.0.2"
+PREFERRED_VERSION_libxxf86misc ?= "1.0.3"
 PREFERRED_VERSION_libxxf86vm ?= "1.1.1"
 PREFERRED_VERSION_lndir ?= "1.0.1"
 PREFERRED_VERSION_makedepend ?= "1.0.3"
 PREFERRED_VERSION_makedepend-native ?= "1.0.3"
-PREFERRED_VERSION_pixman ?= "0.20.0"
+PREFERRED_VERSION_pixman ?= "0.21.2"
 PREFERRED_VERSION_printproto ?= "1.0.4"
 PREFERRED_VERSION_randrproto ?= "1.3.2"
 PREFERRED_VERSION_randrproto-nativesdk ?= "1.3.2"
 PREFERRED_VERSION_recordproto ?= "1.14.1"
-PREFERRED_VERSION_renderproto ?= "0.11"
-PREFERRED_VERSION_renderproto-nativesdk ?= "0.11"
-PREFERRED_VERSION_resourceproto ?= "1.1.0"
-PREFERRED_VERSION_scrnsaverproto ?= "1.2.0"
+PREFERRED_VERSION_renderproto ?= "0.11.1"
+PREFERRED_VERSION_renderproto-nativesdk ?= "0.11.1"
+PREFERRED_VERSION_resourceproto ?= "1.1.1"
+PREFERRED_VERSION_scrnsaverproto ?= "1.2.1"
 PREFERRED_VERSION_trapproto ?= "3.4.3"
 PREFERRED_VERSION_util-macros ?= "1.11.0"
 PREFERRED_VERSION_util-macros-native ?= "1.11.0"
@@ -122,9 +122,9 @@ PREFERRED_VERSION_xineramaproto ?= "1.2"
 PREFERRED_VERSION_xmodmap ?= "1.0.5"
 PREFERRED_VERSION_xorg-cf-files ?= "1.0.3"
 PREFERRED_VERSION_xprop ?= "1.1.0"
-PREFERRED_VERSION_xproto ?= "7.0.19"
-PREFERRED_VERSION_xproto-native ?= "7.0.19"
-PREFERRED_VERSION_xproto-nativesdk ?= "7.0.19"
+PREFERRED_VERSION_xproto ?= "7.0.20"
+PREFERRED_VERSION_xproto-native ?= "7.0.20"
+PREFERRED_VERSION_xproto-nativesdk ?= "7.0.20"
 PREFERRED_VERSION_xproxymanagementprotocol ?= "1.0.3"
 PREFERRED_VERSION_xrandr ?= "1.3.4"
 PREFERRED_VERSION_xrdb ?= "1.0.5"
-- 
1.7.2


