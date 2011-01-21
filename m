Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B74D4C80FAD
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 10:37:29 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jan 2011 08:37:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,358,1291622400"; d="scan'208";a="699223989"
Received: from unknown (HELO localhost) ([10.255.14.122])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 08:37:28 -0800
Message-Id: <ce32eb9f15eee4f6c9a99348363aec080f94b0ab.1295627451.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1295627451.git.dvhart@linux.intel.com>
References: <cover.1295627451.git.dvhart@linux.intel.com>
From: Robert Nelson <robertcnelson@gmail.com>
Old-Date: Thu, 23 Sep 2010 18:22:48 -0700
Date: Fri, 21 Jan 2011  8:37:25 -0800
To: poky@yoctoproject.org,bruce.ashfield@windriver.com,tom.zanussi@intel.com
Subject: [PATCH 3/3] omap: Beagle: no gpio_wp pin connection on xM
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
X-List-Received-Date: Fri, 21 Jan 2011 16:37:29 -0000

The omap3630 based BeagleBoard xM uses a MicroSD card slot with
no write protection.

Signed-off-by: Robert Nelson <robertcnelson@gmail.com>
Acked-by: Jarkko Nikula <jhnikula@gmail.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/board-omap3beagle.c |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap2/board-omap3beagle.c b/arch/arm/mach-omap2/board-omap3beagle.c
index f80d2cd..5bcf6ee 100644
--- a/arch/arm/mach-omap2/board-omap3beagle.c
+++ b/arch/arm/mach-omap2/board-omap3beagle.c
@@ -226,7 +226,9 @@ static struct gpio_led gpio_leds[];
 static int beagle_twl_gpio_setup(struct device *dev,
 		unsigned gpio, unsigned ngpio)
 {
-	if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C1_3) ||
+	if (omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM) {
+		mmc[0].gpio_wp = -EINVAL;
+	} else if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C1_3) ||
 		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C4)) {
 		omap_mux_init_gpio(23, OMAP_PIN_INPUT);
 		mmc[0].gpio_wp = 23;
-- 
1.7.1


