Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB26C4C80FAD
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 13:45:09 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2011 11:45:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="649804041"
Received: from unknown (HELO [10.255.14.122]) ([10.255.14.122])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 11:45:09 -0800
Message-ID: <4D39E241.3010107@linux.intel.com>
Date: Fri, 21 Jan 2011 11:45:05 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH] linux-2.6-windriver: omap3: beaglexm: fix EHCI power up GPIO dir
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
X-List-Received-Date: Fri, 21 Jan 2011 19:45:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

The following patch from Koen's angstrom-linux repository fixes initialization
of the Beagleboard xM's on-board USB hub and makes it possible to use the
on-board network port.

Please merge contrib/dvhart/beagleboard-standard with beagleboard-standard.

Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
  Branch: dvhart/beagleboard-standard
  Browse: http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=dvhart/beagleboard-standard

Thanks,
    Darren Hart <dvhart@linux.intel.com>


From 23a104853de8cdb351b7747af799463215dc4d8c Mon Sep 17 00:00:00 2001
From: Koen Kooi <koen@beagleboard.org>
Date: Tue, 11 Jan 2011 17:13:35 +0000
Subject: [PATCH] omap3: beaglexm: fix EHCI power up GPIO dir

commit a5624323866c06156ca548b8515d9347fdd5188e angstrom-linux

EHCI enable power pin is inverted (active high) in comparison
to vanilla beagle which is active low. Handle this case conditionally.

Without this fix, Beagle XM 4 port EHCI will not function and no
networking will be available

[nm@ti.com: split up, added descriptive changelogs]
Signed-off-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Koen Kooi <koen@beagleboard.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/board-omap3beagle.c |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap2/board-omap3beagle.c b/arch/arm/mach-omap2/board-omap3beagle.c
index 5bcf6ee..80c203c 100644
--- a/arch/arm/mach-omap2/board-omap3beagle.c
+++ b/arch/arm/mach-omap2/board-omap3beagle.c
@@ -250,9 +250,15 @@ static int beagle_twl_gpio_setup(struct device *dev,
 	gpio_request(gpio + 1, "EHCI_nOC");
 	gpio_direction_input(gpio + 1);
 
-	/* TWL4030_GPIO_MAX + 0 == ledA, EHCI nEN_USB_PWR (out, active low) */
+	/*
+	 * TWL4030_GPIO_MAX + 0 == ledA, EHCI nEN_USB_PWR (out, XM active
+	 * high / others active low)
+	 */
 	gpio_request(gpio + TWL4030_GPIO_MAX, "nEN_USB_PWR");
-	gpio_direction_output(gpio + TWL4030_GPIO_MAX, 0);
+	if (omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM)
+		gpio_direction_output(gpio + TWL4030_GPIO_MAX, 1);
+	else
+		gpio_direction_output(gpio + TWL4030_GPIO_MAX, 0);
 
 	/* TWL4030_GPIO_MAX + 1 == ledB, PMU_STAT (out, active low LED) */
 	gpio_leds[2].gpio = gpio + TWL4030_GPIO_MAX + 1;
-- 
1.7.1
-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

