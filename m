Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F2254C800C0
	for <poky@pokylinux.org>; Sat, 18 Jun 2011 14:05:49 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QY0q1-0004t6-DU
	for poky@pokylinux.org; Sat, 18 Jun 2011 21:05:45 +0200
Received: from 79.167.210.132 ([79.167.210.132])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 18 Jun 2011 21:05:45 +0200
Received: from gmane by 79.167.210.132 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 18 Jun 2011 21:05:45 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 18 Jun 2011 22:05:30 +0300
Organization: Reliable Embedded Systems
Message-ID: <4DFCF6FA.80606@reliableembeddedsystems.com>
References: <it8ite$i96$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 79.167.210.132
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <it8ite$i96$1@dough.gmane.org>
Cc: Darren Hart <dvhart@linux.intel.com>, robertcnelson@gmail.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] bernard 5.0.1 and beagle-xm rev c
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 18 Jun 2011 19:05:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

From: Robert Berger <gmane@ReliableEmbeddedSystems.com>

I wanted to have bernard-5.0.1 run on my beagle xm rev c before the next
proper poky release and so I hacked up something quick and dirty which
is going to be __OBSOLETE__ soon and which is __NOT__ intended to go
into any proper release.

Anyhow, maybe someone else needs something similar;)

After applying this patch to bernard-5.0.1 you might want to bitbake
poky-image-minimal-usbutils (which is also part of the patch) as a
testcase and run lsusb. If everything went well you should see:

root@beagleboard:~# lsusb
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 0424:9514 Standard Microsystems Corp.
Bus 001 Device 003: ID 0424:ec00 Standard Microsystems Corp.

I either took [1], [2], [3] unmodified, or added some minor tweaks,
so the real credits go to Jason Kridner, Koen Kooi and Robert C. Nelson.

[1]
http://gitorious.org/x-loader/x-loader/commit/2efa178acd56d83c86210b5934895cfb9ea62125
[2]
http://git.denx.de/?p=u-boot.git;a=commitdiff;h=f6e593bb1255d1e15201cb5dec8c95264489e729
[3]
https://github.com/RobertCNelson/linux-2.6/commit/ebe1e26476768b8edde0607433e564ffd4b0e903

Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
---
 .../beagleboard/0001-u-boot-xm-rev-c-support.patch |  114 ++++++++++++++
 meta/recipes-bsp/uboot/u-boot_git.bb               |    7 +-
 .../0001-x-loader-xm-rev-c-support.patch           |   54 +++++++
 meta/recipes-bsp/x-load/x-load_git.bb              |    3 +-
 .../images/poky-image-minimal-usbutils.bb          |    6 +
 .../beagleboard/0001-kernel-xm-rev-c-support.patch |  156
++++++++++++++++++++
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    9 +-
 7 files changed, 346 insertions(+), 3 deletions(-)
 create mode 100644
meta/recipes-bsp/uboot/u-boot-git/beagleboard/0001-u-boot-xm-rev-c-support.patch
 create mode 100644
meta/recipes-bsp/x-load/x-load-git/beagleboard/0001-x-loader-xm-rev-c-support.patch
 create mode 100644 meta/recipes-core/images/poky-image-minimal-usbutils.bb
 create mode 100644
meta/recipes-kernel/linux/linux-yocto-git/beagleboard/0001-kernel-xm-rev-c-support.patch

diff --git
a/meta/recipes-bsp/uboot/u-boot-git/beagleboard/0001-u-boot-xm-rev-c-support.patch
b/meta/recipes-bsp/uboot/u-boot-git/beagleboard/0001-u-boot-xm-rev-c-support.patch
new file mode 100644
index 0000000..db79fff
--- /dev/null
+++
b/meta/recipes-bsp/uboot/u-boot-git/beagleboard/0001-u-boot-xm-rev-c-support.patch
@@ -0,0 +1,114 @@
+From c505155b127c507cc06ee2dfd48ce8e415353d5e Mon Sep 17 00:00:00 2001
+From: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
+Date: Sat, 18 Jun 2011 16:01:09 +0300
+Subject: [PATCH] beagle-xm-revc-u-boot-support
+
+
+Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
+---
+ board/ti/beagle/beagle.c       |   32 +++++++++++++++++++++++++++-----
+ board/ti/beagle/beagle.h       |    4 +++-
+ include/configs/omap3_beagle.h |    2 +-
+ 3 files changed, 31 insertions(+), 7 deletions(-)
+
+diff --git a/board/ti/beagle/beagle.c b/board/ti/beagle/beagle.c
+index c066d6e..9939e1e 100644
+--- a/board/ti/beagle/beagle.c
++++ b/board/ti/beagle/beagle.c
+@@ -153,18 +153,15 @@ int misc_init_r(void)
+ 	case REVISION_AXBX:
+ 		printf("Beagle Rev Ax/Bx\n");
+ 		setenv("beaglerev", "AxBx");
+-		setenv("mpurate", "600");
+ 		break;
+ 	case REVISION_CX:
+ 		printf("Beagle Rev C1/C2/C3\n");
+ 		setenv("beaglerev", "Cx");
+-		setenv("mpurate", "600");
+ 		MUX_BEAGLE_C();
+ 		break;
+ 	case REVISION_C4:
+ 		printf("Beagle Rev C4\n");
+ 		setenv("beaglerev", "C4");
+-		setenv("mpurate", "720");
+ 		MUX_BEAGLE_C();
+ 		/* Set VAUX2 to 1.8V for EHCI PHY */
+ 		twl4030_pmrecv_vsel_cfg(TWL4030_PM_RECEIVER_VAUX2_DEDICATED,
+@@ -172,10 +169,19 @@ int misc_init_r(void)
+ 					TWL4030_PM_RECEIVER_VAUX2_DEV_GRP,
+ 					TWL4030_PM_RECEIVER_DEV_GRP_P1);
+ 		break;
+-	case REVISION_XM:
++	case REVISION_XM_A:
+ 		printf("Beagle xM Rev A\n");
+ 		setenv("beaglerev", "xMA");
+-		setenv("mpurate", "1000");
++                MUX_BEAGLE_XM();
++                /* Set VAUX2 to 1.8V for EHCI PHY */
++
twl4030_pmrecv_vsel_cfg(TWL4030_PM_RECEIVER_VAUX2_DEDICATED,
++                                        TWL4030_PM_RECEIVER_VAUX2_VSEL_18,
++                                        TWL4030_PM_RECEIVER_VAUX2_DEV_GRP,
++                                        TWL4030_PM_RECEIVER_DEV_GRP_P1);
++                break;
++        case REVISION_XM_B:
++                printf("Beagle xM Rev B\n");
++                setenv("beaglerev", "xMB");
+ 		MUX_BEAGLE_XM();
+ 		/* Set VAUX2 to 1.8V for EHCI PHY */
+ 		twl4030_pmrecv_vsel_cfg(TWL4030_PM_RECEIVER_VAUX2_DEDICATED,
+@@ -183,8 +189,24 @@ int misc_init_r(void)
+ 					TWL4030_PM_RECEIVER_VAUX2_DEV_GRP,
+ 					TWL4030_PM_RECEIVER_DEV_GRP_P1);
+ 		break;
++        case REVISION_XM_C:
++                printf("Beagle xM Rev C\n");
++                setenv("beaglerev", "xMC");
++                MUX_BEAGLE_XM();
++                /* Set VAUX2 to 1.8V for EHCI PHY */
++
twl4030_pmrecv_vsel_cfg(TWL4030_PM_RECEIVER_VAUX2_DEDICATED,
++                                        TWL4030_PM_RECEIVER_VAUX2_VSEL_18,
++                                        TWL4030_PM_RECEIVER_VAUX2_DEV_GRP,
++                                        TWL4030_PM_RECEIVER_DEV_GRP_P1);
++                break;
+ 	default:
+ 		printf("Beagle unknown 0x%02x\n", get_board_revision());
++                MUX_BEAGLE_XM();
++                /* Set VAUX2 to 1.8V for EHCI PHY */
++
twl4030_pmrecv_vsel_cfg(TWL4030_PM_RECEIVER_VAUX2_DEDICATED,
++                                        TWL4030_PM_RECEIVER_VAUX2_VSEL_18,
++                                        TWL4030_PM_RECEIVER_VAUX2_DEV_GRP,
++                                        TWL4030_PM_RECEIVER_DEV_GRP_P1);
+ 	}
+
+ 	switch (get_expansion_id()) {
+diff --git a/board/ti/beagle/beagle.h b/board/ti/beagle/beagle.h
+index b22b653..59edd0c 100644
+--- a/board/ti/beagle/beagle.h
++++ b/board/ti/beagle/beagle.h
+@@ -37,7 +37,9 @@ const omap3_sysinfo sysinfo = {
+ #define REVISION_AXBX	0x7
+ #define REVISION_CX	0x6
+ #define REVISION_C4	0x5
+-#define REVISION_XM	0x0
++#define REVISION_XM_A	0x0
++#define REVISION_XM_B	0x1
++#define REVISION_XM_C	0x2
+
+ /*
+  * IEN  - Input Enable
+diff --git a/include/configs/omap3_beagle.h
b/include/configs/omap3_beagle.h
+index 5cfa4cb..bee0e41 100644
+--- a/include/configs/omap3_beagle.h
++++ b/include/configs/omap3_beagle.h
+@@ -190,7 +190,7 @@
+ 	"loadaddr=0x82000000\0" \
+ 	"usbtty=cdc_acm\0" \
+ 	"console=ttyS2,115200n8\0" \
+-	"mpurate=500\0" \
++	"mpurate=auto\0" \
+ 	"vram=12M\0" \
+ 	"dvimode=1024x768MR-16@60\0" \
+ 	"defaultdisplay=dvi\0" \
+--
+1.7.1
+
diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb
b/meta/recipes-bsp/uboot/u-boot_git.bb
index 4c8f5df..a6d6bd3 100644
--- a/meta/recipes-bsp/uboot/u-boot_git.bb
+++ b/meta/recipes-bsp/uboot/u-boot_git.bb
@@ -8,10 +8,15 @@ FILESDIR =
"${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE

 SRCREV = "v2011.03"
 PV = "v2011.03+git${SRCPV}"
-PR="r3"
+PR="r4"

 SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"

+# patch for beagle-xm rev c
+SRC_URI_append_beagleboard = " \
+
file://0001-u-boot-xm-rev-c-support.patch;patch=1 \
+                             "
+
 UBOOT_MACHINE_beagleboard = "omap3_beagle_config"
 UBOOT_MACHINE_overo = "omap3_overo_config"

diff --git
a/meta/recipes-bsp/x-load/x-load-git/beagleboard/0001-x-loader-xm-rev-c-support.patch
b/meta/recipes-bsp/x-load/x-load-git/beagleboard/0001-x-loader-xm-rev-c-support.patch
new file mode 100644
index 0000000..91d1d7a
--- /dev/null
+++
b/meta/recipes-bsp/x-load/x-load-git/beagleboard/0001-x-loader-xm-rev-c-support.patch
@@ -0,0 +1,54 @@
+From cb8f553a1df59cbdd1fbd4957b4404d72a557e3c Mon Sep 17 00:00:00 2001
+From: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
+Date: Fri, 17 Jun 2011 18:13:51 +0300
+Subject: [PATCH] x-loader-xm-rev-c-support
+
+
+Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
+---
+ board/omap3530beagle/omap3530beagle.c |   15 ++++++++++++++-
+ 1 files changed, 14 insertions(+), 1 deletions(-)
+
+diff --git a/board/omap3530beagle/omap3530beagle.c
b/board/omap3530beagle/omap3530beagle.c
+index 073e35a..51bcc40 100644
+--- a/board/omap3530beagle/omap3530beagle.c
++++ b/board/omap3530beagle/omap3530beagle.c
+@@ -212,6 +212,7 @@ u32 cpu_is_3410(void)
+  *		GPIO173, GPIO172, GPIO171: 1 1 0 => C1/2/3
+  *		GPIO173, GPIO172, GPIO171: 1 0 1 => C4
+  *		GPIO173, GPIO172, GPIO171: 0 0 0 => XM
++ *              default                          => XM
+  ******************************************/
+ int beagle_revision(void)
+ {
+@@ -227,6 +228,18 @@ int beagle_revision(void)
+ 	rev = omap_get_gpio_datain(173) << 2 |
+ 		omap_get_gpio_datain(172) << 1 |
+ 		omap_get_gpio_datain(171);
++
++	/* Default newer board revisions to XM */
++	switch(rev) {
++	case REVISION_AXBX:
++	case REVISION_CX:
++	case REVISION_C4:
++		break;
++	case REVISION_XM:
++	default:
++		rev = REVISION_XM;
++	}
++
+ 	omap_free_gpio(171);
+ 	omap_free_gpio(172);
+ 	omap_free_gpio(173);
+@@ -690,7 +703,7 @@ int misc_init_r(void)
+ 			printf("Beagle Rev C4\n");
+ 		break;
+ 	case REVISION_XM:
+-		printf("Beagle xM Rev A\n");
++		printf("Beagle xM\n");
+ 		break;
+ 	default:
+ 		printf("Beagle unknown 0x%02x\n", rev);
+--
+1.7.1
+
diff --git a/meta/recipes-bsp/x-load/x-load_git.bb
b/meta/recipes-bsp/x-load/x-load_git.bb
index fc2927e..05f48a9 100644
--- a/meta/recipes-bsp/x-load/x-load_git.bb
+++ b/meta/recipes-bsp/x-load/x-load_git.bb
@@ -6,7 +6,7 @@ LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM =
"file://README;beginline=1;endline=25;md5=ef08d08cb99057bbb5b9d6d0c5a4396f"

 PV = "1.42+${PR}+git${SRCPV}"
-PR="r13"
+PR="r14"

 #SRC_URI =
"git://www.sakoman.net/git/x-load-omap3.git;branch=master;protocol=git"
 #SRC_URI =
"git://gitorious.org/x-load-omap3/mainline.git;branch=master;protocol=git"
@@ -14,6 +14,7 @@ SRC_URI =
"git://gitorious.org/x-loader/x-loader.git;branch=master;protocol=git"

 SRC_URI_append_beagleboard = " \
                               file://name.patch;patch=1 \
+
file://0001-x-loader-xm-rev-c-support.patch;patch=2 \
                              "
 S = "${WORKDIR}/git"

diff --git a/meta/recipes-core/images/poky-image-minimal-usbutils.bb
b/meta/recipes-core/images/poky-image-minimal-usbutils.bb
new file mode 100644
index 0000000..3c54de2
--- /dev/null
+++ b/meta/recipes-core/images/poky-image-minimal-usbutils.bb
@@ -0,0 +1,6 @@
+#
+# Copyright (C) 2008 OpenedHand Ltd.
+#
+require poky-image-minimal.bb
+
+IMAGE_INSTALL += "usbutils"
diff --git
a/meta/recipes-kernel/linux/linux-yocto-git/beagleboard/0001-kernel-xm-rev-c-support.patch
b/meta/recipes-kernel/linux/linux-yocto-git/beagleboard/0001-kernel-xm-rev-c-support.patch
new file mode 100644
index 0000000..a42bbf8
--- /dev/null
+++
b/meta/recipes-kernel/linux/linux-yocto-git/beagleboard/0001-kernel-xm-rev-c-support.patch
@@ -0,0 +1,156 @@
+From 828220f35f2777b33295b3d7d65826b65fed9230 Mon Sep 17 00:00:00 2001
+From: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
+Date: Fri, 17 Jun 2011 18:30:15 +0300
+Subject: [PATCH] kernel-xm-rev-c-support
+
+
+Signed-off-by: Robert Berger <robert.berger@ReliableEmbeddedSystems.com>
+---
+ arch/arm/mach-omap2/board-omap3beagle.c |   79
++++++++++++++++++++++++++++---
+ 1 files changed, 72 insertions(+), 7 deletions(-)
+
+diff --git a/arch/arm/mach-omap2/board-omap3beagle.c
b/arch/arm/mach-omap2/board-omap3beagle.c
+index 02a3469..694e6e2 100644
+--- a/arch/arm/mach-omap2/board-omap3beagle.c
++++ b/arch/arm/mach-omap2/board-omap3beagle.c
+@@ -58,7 +58,9 @@
+  *	AXBX	= GPIO173, GPIO172, GPIO171: 1 1 1
+  *	C1_3	= GPIO173, GPIO172, GPIO171: 1 1 0
+  *	C4	= GPIO173, GPIO172, GPIO171: 1 0 1
+- *	XM	= GPIO173, GPIO172, GPIO171: 0 0 0
++ *	XMA	= GPIO173, GPIO172, GPIO171: 0 0 0
++ *  	XMB  	= GPIO173, GPIO172, GPIO171: 0 0 1
++ *  	XMC  	= GPIO173, GPIO172, GPIO171: 0 1 0
+  */
+ enum {
+ 	OMAP3BEAGLE_BOARD_UNKN = 0,
+@@ -66,6 +68,7 @@ enum {
+ 	OMAP3BEAGLE_BOARD_C1_3,
+ 	OMAP3BEAGLE_BOARD_C4,
+ 	OMAP3BEAGLE_BOARD_XM,
++	OMAP3BEAGLE_BOARD_XMC,
+ };
+
+ static u8 omap3_beagle_version;
+@@ -120,9 +123,17 @@ static void __init omap3_beagle_init_rev(void)
+ 		printk(KERN_INFO "OMAP3 Beagle Rev: xM\n");
+ 		omap3_beagle_version = OMAP3BEAGLE_BOARD_XM;
+ 		break;
++	case 1:
++	        pr_info("OMAP3 Beagle Rev: xM B\n");
++		omap3_beagle_version = OMAP3BEAGLE_BOARD_XM;
++		break;
++	case 2:
++		pr_info("OMAP3 Beagle Rev: xM C\n");
++		omap3_beagle_version = OMAP3BEAGLE_BOARD_XMC;
++		break;
+ 	default:
+-		printk(KERN_INFO "OMAP3 Beagle Rev: unknown %hd\n", beagle_rev);
+-		omap3_beagle_version = OMAP3BEAGLE_BOARD_UNKN;
++		pr_info("OMAP3 Beagle Rev: unknown %hd, assuming xM C or newer\n",
beagle_rev);
++		omap3_beagle_version = OMAP3BEAGLE_BOARD_XMC;
+ 	}
+
+ 	return;
+@@ -273,13 +284,17 @@ static struct gpio_led gpio_leds[];
+ static int beagle_twl_gpio_setup(struct device *dev,
+ 		unsigned gpio, unsigned ngpio)
+ {
+-	if (omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM) {
++	int r;
++
++	if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM) ||
++		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XMC)) {
+ 		mmc[0].gpio_wp = -EINVAL;
+ 	} else if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C1_3) ||
+ 		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_C4)) {
+ 		omap_mux_init_gpio(23, OMAP_PIN_INPUT);
+ 		mmc[0].gpio_wp = 23;
+ 	} else {
++		mmc[0].gpio_wp = 29;
+ 		omap_mux_init_gpio(29, OMAP_PIN_INPUT);
+ 	}
+ 	/* gpio + 0 is "mmc0_cd" (input/IRQ) */
+@@ -294,9 +309,17 @@ static int beagle_twl_gpio_setup(struct device *dev,
+ 	 * power switch and overcurrent detect
+ 	 */
+
+-	gpio_request(gpio + 1, "EHCI_nOC");
+-	gpio_direction_input(gpio + 1);
+-
++	if ((omap3_beagle_get_rev() != OMAP3BEAGLE_BOARD_XM) &&
++		(omap3_beagle_get_rev() != OMAP3BEAGLE_BOARD_XMC)) {
++		r = gpio_request(gpio + 1, "EHCI_nOC");
++		if (!r) {
++			r = gpio_direction_input(gpio + 1);
++			if (r)
++		        gpio_free(gpio + 1);
++		}
++		if (r)
++			pr_err("%s: unable to configure EHCI_nOC\n", __func__);
++	}
+ 	/*
+ 	 * TWL4030_GPIO_MAX + 0 == ledA, EHCI nEN_USB_PWR (out, XM active
+ 	 * high / others active low)
+@@ -307,9 +330,44 @@ static int beagle_twl_gpio_setup(struct device *dev,
+ 	else
+ 		gpio_direction_output(gpio + TWL4030_GPIO_MAX, 0);
+
++	/* DVI reset GPIO is different between beagle revisions */
++	if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM) ||
++		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XMC))
++		beagle_dvi_device.reset_gpio = 129;
++	else
++		beagle_dvi_device.reset_gpio = 170;
++
+ 	/* TWL4030_GPIO_MAX + 1 == ledB, PMU_STAT (out, active low LED) */
+ 	gpio_leds[2].gpio = gpio + TWL4030_GPIO_MAX + 1;
+
++	/*
++	 * gpio + 1 on Xm controls the TFP410's enable line (active low)
++	 * gpio + 2 control varies depending on the board rev as follows:
++	 * P7/P8 revisions(prototype): Camera EN
++	 * A2+ revisions (production): LDO (supplies DVI, serial, led blocks)
++	 */
++	if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM) ||
++		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XMC)) {
++		r = gpio_request(gpio + 1, "nDVI_PWR_EN");
++		if (!r) {
++			r = gpio_direction_output(gpio + 1, 0);
++			if (r)
++				gpio_free(gpio + 1);
++		}
++		if (r)
++			pr_err("%s: unable to configure nDVI_PWR_EN\n",
++			__func__);
++		r = gpio_request(gpio + 2, "DVI_LDO_EN");
++		if (!r) {
++			r = gpio_direction_output(gpio + 2, 1);
++			if (r)
++				gpio_free(gpio + 2);
++		}
++		if (r)
++			pr_err("%s: unable to configure DVI_LDO_EN\n",
++			__func__);
++	}
++
+ 	return 0;
+ }
+
+@@ -569,6 +627,13 @@ static void __init omap3_beagle_init(void)
+ 	omap3_mux_init(board_mux, OMAP_PACKAGE_CBB);
+ 	omap3_beagle_init_rev();
+ 	omap3_beagle_i2c_init();
++
++	/* xM version uses pin 4 instead of 7 for user button */
++	if ((omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XM) ||
++		(omap3_beagle_get_rev() == OMAP3BEAGLE_BOARD_XMC)){
++		gpio_buttons[0].gpio = 4;
++	}
++
+ 	platform_add_devices(omap3_beagle_devices,
+ 			ARRAY_SIZE(omap3_beagle_devices));
+ 	omap_serial_init();
+--
+1.7.1
+
diff --git a/meta/recipes-kernel/linux/linux-yocto_git.bb
b/meta/recipes-kernel/linux/linux-yocto_git.bb
index 38fbba3..65a4333 100644
--- a/meta/recipes-kernel/linux/linux-yocto_git.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_git.bb
@@ -1,6 +1,8 @@
 inherit kernel
 require linux-yocto.inc

+FILESDIR =
"${@os.path.dirname(bb.data.getVar('FILE',d,1))}/linux-yocto-git/${MACHINE}"
+
 KMACHINE = "yocto/standard/base"
 KMACHINE_qemux86  = "yocto/standard/common-pc/base"
 KMACHINE_qemux86-64  = "yocto/standard/common-pc-64/base"
@@ -17,12 +19,17 @@ KMETA = meta

 LINUX_VERSION ?= "2.6.37"
 LINUX_VERSION_EXTENSION ?= "-yocto-${LINUX_KERNEL_TYPE}"
-PR = "r16"
+PR = "r17"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 SRCREV_FORMAT = "meta_machine"

 SRC_URI =
"git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"

+# patch for beagle-xm rev c
+SRC_URI_append_beagleboard = " \
+
file://0001-kernel-xm-rev-c-support.patch;patch=1 \
+                             "
+
 COMPATIBLE_MACHINE =
"(qemuarm|qemux86|qemuppc|qemumips|qemux86-64|mpc8315e-rdb|routerstationpro|beagleboard)"

 # Functionality flags
-- 1.7.1


