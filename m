Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 213E94C811B0
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 10:37:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Jan 2011 08:37:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="378032445"
Received: from unknown (HELO localhost) ([10.255.14.122])
	by azsmga001.ch.intel.com with ESMTP; 21 Jan 2011 08:37:27 -0800
Message-Id: <194fd4c2bacb3e39b64c66e10813cbf868af331a.1295627451.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295627451.git.dvhart@linux.intel.com>
References: <cover.1295627451.git.dvhart@linux.intel.com>
From: Robert Nelson <robertcnelson@gmail.com>
Old-Date: Thu, 23 Sep 2010 18:22:48 -0700
Date: Fri, 21 Jan 2011  8:37:24 -0800
To: poky@yoctoproject.org,bruce.ashfield@windriver.com,tom.zanussi@intel.com
Subject: [PATCH 2/3] omap: Beagle: only Cx boards use pin 23 for write protect
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
X-List-Received-Date: Fri, 21 Jan 2011 16:37:28 -0000

system_rev comes from u-boot and is a constant 0x20, so
Bx boards also fall in this 'if' and will get setup with the
wrong gpio_wp pin. Switch to using the Beagle revision routine
to correcly set pin 23 only for C1/2/3 and C4 Boards. Bx boards
will then use the correct default pin setting.

Signed-off-by: Robert Nelson <robertcnelson@gmail.com>
Acked-by: Jarkko Nikula <jhnikula@gmail.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/board-omap3beagle.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap2/board-omap3beagle.c b/arch/arm/mach-omap2/board-omap3beagle.c
index 734aa93..f80d2cd 100644
--- a/arch/arm/mach-omap2/board-omap3beagle.c
+++ b/arch/arm/mach-omap2/board-omap3beagle.c
@@ -226,7 +226,8 @@ static struct gpio_led gpio_leds[];
 static int beagle_twl_gpio_setup(struct device *dev,
 		unsigned gpio, unsigned ngpio)
 {
-	if (system_rev >= 0x20 && system_rev <= 0x34301000) {
+	if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C1_3) ||
+		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C4)) {
 		omap_mux_init_gpio(23, OMAP_PIN_INPUT);
 		mmc[0].gpio_wp = 23;
 	} else {
-- 
1.7.1


