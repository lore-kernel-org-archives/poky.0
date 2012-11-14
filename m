Return-Path: <laurentiu.palcu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FCEEE01453
	for <poky@yoctoproject.org>; Wed, 14 Nov 2012 01:48:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2012 01:48:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,249,1352102400"; d="scan'208";a="248867189"
Received: from lpalcu-linux (HELO localhost.localdomain) ([10.237.105.42])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2012 01:48:45 -0800
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Nov 2012 11:48:42 +0200
Message-Id: <1352886522-26874-3-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1352886522-26874-1-git-send-email-laurentiu.palcu@intel.com>
References: <1352886522-26874-1-git-send-email-laurentiu.palcu@intel.com>
Subject: [PATCH 2/2] yocto-bsp: upgdate configs after xf86-video-omapfb changed name
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
X-List-Received-Date: Wed, 14 Nov 2012 09:48:47 -0000

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf       |    2 +-
 .../target/arch/arm/conf/machine/{{=machine}}.conf |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index 6633880..204be95 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -6,7 +6,7 @@ PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-omapfb \
+           xf86-video-omap \
            xf86-input-keyboard"
 
 # Ship all kernel modules by default
diff --git a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
index a3e2970..1990ef6 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf
@@ -9,7 +9,7 @@ PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 XSERVER = "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
-           xf86-video-omapfb \
+           xf86-video-omap \
            xf86-input-keyboard"
 
 # Ship all kernel modules by default
-- 
1.7.9.5


