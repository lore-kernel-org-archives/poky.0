Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22AD0E014E0
	for <poky@yoctoproject.org>; Wed, 29 May 2013 08:02:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 29 May 2013 08:02:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,764,1363158000"; d="scan'208";a="342000434"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.189])
	by fmsmga001.fm.intel.com with ESMTP; 29 May 2013 08:02:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 May 2013 16:01:53 +0100
Message-Id: <1369839713-11459-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH] yocto-bsp: re-enable AutoAddDevices in xorg.conf for generated BSPs
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
X-List-Received-Date: Wed, 29 May 2013 15:02:03 -0000

This was added quite a long time ago because of poor interactions
between HAL and the X server when it came to enabling input devices.
HAL is long gone and I think it's safe to say we don't need to disable
this any longer, especially as it gets in the way of being able to plug
in the keyboard/mouse after boot.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"                   | 1 -
 .../{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf" | 1 -
 .../{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" | 1 -
 .../{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" | 1 -
 .../{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" | 1 -
 .../{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" | 1 -
 6 files changed, 6 deletions(-)

diff --git "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"
index 0335e6a..264f3c9 100644
--- "a/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"	
+++ "b/scripts/lib/bsp/substrate/target/arch/arm/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver == \"y\": }} xorg.conf"	
@@ -30,5 +30,4 @@ EndSection
 
 Section "ServerFlags"
 	Option		"DontZap"  "0"
-        Option		"AutoAddDevices" "False"
 EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"
index 662f60f..3347437 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_emgd\": }} xorg.conf"	
@@ -44,5 +44,4 @@ EndSection
 
 Section "ServerFlags"
     Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
 EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
index 96b94b4..b658f40 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
@@ -22,5 +22,4 @@ EndSection
 
 Section "ServerFlags"
     Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
 EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
index da4fc3c..ae58e2b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
+++ "b/scripts/lib/bsp/substrate/target/arch/i386/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
@@ -22,5 +22,4 @@ EndSection
 
 Section "ServerFlags"
     Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
 EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"
index 96b94b4..b658f40 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_i915\": }} xorg.conf"	
@@ -22,5 +22,4 @@ EndSection
 
 Section "ServerFlags"
     Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
 EndSection
diff --git "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf" "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"
index da4fc3c..ae58e2b 100644
--- "a/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
+++ "b/scripts/lib/bsp/substrate/target/arch/x86_64/recipes-graphics/xorg-xserver/xserver-xf86-config/{{=machine}}/{{ if xserver_choice == \"xserver_vesa\": }} xorg.conf"	
@@ -22,5 +22,4 @@ EndSection
 
 Section "ServerFlags"
     Option        "DontZap"  "0"
-    Option        "AutoAddDevices"  "False"
 EndSection
-- 
1.8.1.2


