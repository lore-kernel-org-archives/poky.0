Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD4CBE0144C
	for <poky@yoctoproject.org>; Sat, 29 Sep 2012 16:45:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 Sep 2012 16:45:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,509,1344236400"; d="scan'208";a="198812779"
Received: from unknown (HELO localhost) ([10.255.14.37])
	by azsmga001.ch.intel.com with ESMTP; 29 Sep 2012 16:45:34 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Sat, 29 Sep 2012 18:45:30 -0500
Message-Id: <d71360b63f903f48e7b961c9c9bfd6bb8972e40c.1348958103.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1348958103.git.tom.zanussi@intel.com>
References: <cover.1348958103.git.tom.zanussi@intel.com>
Subject: [PATCH 1/2] yocto-bsp: use FILESEXTRAPATHS for xserver-xf86-config bbappends
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 29 Sep 2012 23:45:35 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

The xserver-xf86-config .bbappends are still using FILESPATH - update
them to use FILESEXTRAPATHS as recommended by the Poky Reference
Manual and BSP Developer's Guides.
---
 .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
 .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
 .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
 .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
 4 files changed, 4 insertions(+), 11 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 4b8d0e6..72d991c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 4b8d0e6..72d991c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
index d3420e0..72d991c 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
@@ -1,2 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"
index 4b8d0e6..72d991c 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"	
@@ -1,3 +1 @@
-THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
-FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}"], d)}:"
-
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-- 
1.7.11.4


