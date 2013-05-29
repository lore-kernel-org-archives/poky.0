Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 783C7E004CF
	for <poky@yoctoproject.org>; Wed, 29 May 2013 08:01:36 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 May 2013 08:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,764,1363158000"; d="scan'208";a="345138371"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.189])
	by fmsmga002.fm.intel.com with ESMTP; 29 May 2013 08:01:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 29 May 2013 16:01:12 +0100
Message-Id: <1369839672-11420-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH] xserver-xf86-config: re-enable AutoAddDevices for beagleboard
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
X-List-Received-Date: Wed, 29 May 2013 15:01:36 -0000

This was added quite a long time ago because of poor interactions
between HAL and the X server when it came to enabling input devices.
HAL is long gone and I think it's safe to say we don't need to disable
this any longer, especially as it gets in the way of being able to plug
in the keyboard/mouse after boot.

(This has already effectively been removed for the other BSPs in
meta-yocto-bsp).

Fixes [YOCTO #1823].

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 .../xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf               | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
index 0335e6a..264f3c9 100644
--- a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
+++ b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf
@@ -30,5 +30,4 @@ EndSection
 
 Section "ServerFlags"
 	Option		"DontZap"  "0"
-        Option		"AutoAddDevices" "False"
 EndSection
-- 
1.8.1.2


