Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0A4D4C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 02:41:39 -0600 (CST)
Received: by wwb31 with SMTP id 31so22955293wwb.11
	for <poky@yoctoproject.org>; Sun, 09 Jan 2011 00:41:38 -0800 (PST)
Received: by 10.227.132.83 with SMTP id a19mr17673466wbt.112.1294562498257;
	Sun, 09 Jan 2011 00:41:38 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m10sm19089115wbc.10.2011.01.09.00.41.37
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 09 Jan 2011 00:41:37 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Sun,  9 Jan 2011 09:41:33 +0100
Message-Id: <1294562493-7423-1-git-send-email-koen@openembedded.org>
X-Mailer: git-send-email 1.7.0
Subject: [PATCH] machines: move PACKAGE_EXTRA_ARCHS to tune files
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
X-List-Received-Date: Sun, 09 Jan 2011 08:41:40 -0000

From: Koen Kooi <koen@dominion.thruhere.net>

This gets us closer to making including tune-<arch>.inc "just work".
Moving the TARGET_ARCH definitions is something for a follup patch.

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/conf/machine/akita.conf                   |    1 -
 meta/conf/machine/atom-pc.conf                 |    1 -
 meta/conf/machine/beagleboard.conf             |    1 -
 meta/conf/machine/cm-x270.conf                 |    2 +-
 meta/conf/machine/depicture.conf               |    1 -
 meta/conf/machine/em-x270.conf                 |    1 -
 meta/conf/machine/htcuniversal.conf            |    2 +-
 meta/conf/machine/hx2000.conf                  |    2 +-
 meta/conf/machine/igep0020.conf                |    1 -
 meta/conf/machine/igep0030.conf                |    1 -
 meta/conf/machine/include/tune-arm1136jf-s.inc |    1 +
 meta/conf/machine/include/tune-arm920t.inc     |    2 +-
 meta/conf/machine/include/tune-arm926ejs.inc   |    2 +-
 meta/conf/machine/include/tune-arm9tdmi.inc    |    2 ++
 meta/conf/machine/include/tune-armv7.inc       |    1 +
 meta/conf/machine/include/tune-atom.inc        |    1 +
 meta/conf/machine/include/tune-c3.inc          |    3 ++-
 meta/conf/machine/include/tune-cortexa8.inc    |    1 +
 meta/conf/machine/include/tune-ep9312.inc      |    2 ++
 meta/conf/machine/include/tune-iwmmxt.inc      |    3 ++-
 meta/conf/machine/include/tune-mips32.inc      |    2 ++
 meta/conf/machine/include/tune-ppc603e.inc     |    4 +++-
 meta/conf/machine/include/tune-ppce300c2.inc   |    1 +
 meta/conf/machine/include/tune-ppce500.inc     |    2 ++
 meta/conf/machine/include/tune-sh3.inc         |    2 ++
 meta/conf/machine/include/tune-sh4.inc         |    6 ++++++
 meta/conf/machine/include/tune-supersparc.inc  |    3 ++-
 meta/conf/machine/include/tune-xscale.inc      |    1 +
 meta/conf/machine/mpc8315e-rdb.conf            |    1 -
 meta/conf/machine/mx31ads.conf                 |    1 -
 meta/conf/machine/mx31phy.conf                 |    1 -
 meta/conf/machine/omap-3430ldp.conf            |    1 -
 meta/conf/machine/omap-3430sdp.conf            |    1 -
 meta/conf/machine/overo.conf                   |    1 -
 meta/conf/machine/qemuarm.conf                 |    1 -
 meta/conf/machine/qemuppc.conf                 |    1 -
 meta/conf/machine/qemux86-64.conf              |    1 -
 meta/conf/machine/qemux86.conf                 |    1 -
 meta/conf/machine/spitz.conf                   |    1 -
 meta/conf/machine/zoom2.conf                   |    1 -
 meta/conf/machine/zylonite.conf                |    3 ++-
 41 files changed, 38 insertions(+), 29 deletions(-)

diff --git a/meta/conf/machine/akita.conf b/meta/conf/machine/akita.conf
index 0f5eaca..cdd4652 100644
--- a/meta/conf/machine/akita.conf
+++ b/meta/conf/machine/akita.conf
@@ -5,7 +5,6 @@
 require conf/machine/include/zaurus-2.6.inc
 require conf/machine/include/zaurus-clamshell.inc
 
-PACKAGE_EXTRA_ARCHS += "iwmmxt" 
 MACHINE_FEATURES += "iwmmxt"
 
 IMAGE_FSTYPES ?= "jffs2"
diff --git a/meta/conf/machine/atom-pc.conf b/meta/conf/machine/atom-pc.conf
index 8cf09b8..58c9b0d 100644
--- a/meta/conf/machine/atom-pc.conf
+++ b/meta/conf/machine/atom-pc.conf
@@ -4,7 +4,6 @@
 #@DESCRIPTION: Machine configuration for Intel Atom based PCs. Currently supported machines are the Asus eee901, Acer Aspire One, Toshiba NB305, and Intel BlackSand development board.
 
 TARGET_ARCH = "i586"
-PACKAGE_EXTRA_ARCHS = "x86 core2"
 
 include conf/machine/include/tune-atom.inc
 
diff --git a/meta/conf/machine/beagleboard.conf b/meta/conf/machine/beagleboard.conf
index 1b73250..cb6417b 100644
--- a/meta/conf/machine/beagleboard.conf
+++ b/meta/conf/machine/beagleboard.conf
@@ -2,7 +2,6 @@
 #@NAME: Beagleboard machine
 #@DESCRIPTION: Machine configuration for the http://beagleboard.org/ board 
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7 armv7a"
 
 PREFERRED_PROVIDER_virtual/xserver = "xserver-kdrive"
 XSERVER = "xserver-kdrive-fbdev"
diff --git a/meta/conf/machine/cm-x270.conf b/meta/conf/machine/cm-x270.conf
index 226942d..9bf7d8f 100644
--- a/meta/conf/machine/cm-x270.conf
+++ b/meta/conf/machine/cm-x270.conf
@@ -8,9 +8,9 @@ GUI_MACHINE_CLASS ?= "bigscreen"
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 PREFERRED_VERSION_linux ?= "2.6.23"
 
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te iwmmxt"
 
 require conf/machine/include/tune-xscale.inc
+PACKAGE_EXTRA_ARCHS += "iwmmxt"
 
 # Console serial port. 
 # If you have a W module, add the following line to your local.conf:
diff --git a/meta/conf/machine/depicture.conf b/meta/conf/machine/depicture.conf
index 333af4f..f72ab29 100644
--- a/meta/conf/machine/depicture.conf
+++ b/meta/conf/machine/depicture.conf
@@ -3,7 +3,6 @@
 #@DESCRIPTION: Machine configuration for running an ARM 920t in the BBD20EUROU board.
 
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t"
 
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-arm920t.inc
diff --git a/meta/conf/machine/em-x270.conf b/meta/conf/machine/em-x270.conf
index 47fb8ca..9bcec5b 100644
--- a/meta/conf/machine/em-x270.conf
+++ b/meta/conf/machine/em-x270.conf
@@ -8,7 +8,6 @@
 TARGET_ARCH = "arm"
 GUI_MACHINE_CLASS ?= "bigscreen"
 
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te iwmmxt  "
 PREFERRED_PROVIDER_virtual/kernel = "linux"
 
 require conf/machine/include/tune-xscale.inc
diff --git a/meta/conf/machine/htcuniversal.conf b/meta/conf/machine/htcuniversal.conf
index 2f5b798..72f3bc4 100644
--- a/meta/conf/machine/htcuniversal.conf
+++ b/meta/conf/machine/htcuniversal.conf
@@ -4,9 +4,9 @@
 
 #include conf/machine/include/tune-iwmmxt.inc
 include conf/machine/include/tune-xscale.inc
+PACKAGE_EXTRA_ARCHS += "iwmmxt"
 
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4t armv5te iwmmxt"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
 
diff --git a/meta/conf/machine/hx2000.conf b/meta/conf/machine/hx2000.conf
index 8b4c39f..a6775f2 100644
--- a/meta/conf/machine/hx2000.conf
+++ b/meta/conf/machine/hx2000.conf
@@ -3,7 +3,7 @@
 #@DESCRIPTION: Machine configuration for the hx2000 iPAQs with a pxa27x CPU 
 
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te iwmmxt  "
+PACKAGE_EXTRA_ARCHS += "iwmmxt"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
 
diff --git a/meta/conf/machine/igep0020.conf b/meta/conf/machine/igep0020.conf
index 9ddbad6..86adfcf 100644
--- a/meta/conf/machine/igep0020.conf
+++ b/meta/conf/machine/igep0020.conf
@@ -2,7 +2,6 @@
 #@NAME: IGEP v2 machine
 #@DESCRIPTION: Machine configuration for the IGEP v2 board (http://www.myigep.com)
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7 armv7a"
 
 # Floating point option
 TARGET_FPU_arm = "hard"
diff --git a/meta/conf/machine/igep0030.conf b/meta/conf/machine/igep0030.conf
index 7ebfaa0..af36982 100644
--- a/meta/conf/machine/igep0030.conf
+++ b/meta/conf/machine/igep0030.conf
@@ -2,7 +2,6 @@
 #@NAME: OMAP3 IGEP module
 #@DESCRIPTION: Machine configuration for the OMAP3 IGEP module (http://www.myigep.com)
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7 armv7a"
 
 # Floating point option
 TARGET_FPU_arm = "hard"
diff --git a/meta/conf/machine/include/tune-arm1136jf-s.inc b/meta/conf/machine/include/tune-arm1136jf-s.inc
index be5aedc..a771751 100644
--- a/meta/conf/machine/include/tune-arm1136jf-s.inc
+++ b/meta/conf/machine/include/tune-arm1136jf-s.inc
@@ -4,5 +4,6 @@ FEED_ARCH = "armv6"
 BASE_PACKAGE_ARCH = "armv6"
 
 ARM_INSTRUCTION_SET = "${@['thumb','arm'][bb.data.getVar('CPU_FEATURES', d, 1).find('thumb') == -1]}"
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t armv5te armv6"
 
 require conf/machine/include/tune-thumb.inc
diff --git a/meta/conf/machine/include/tune-arm920t.inc b/meta/conf/machine/include/tune-arm920t.inc
index 1f7a04b..fee5c58 100644
--- a/meta/conf/machine/include/tune-arm920t.inc
+++ b/meta/conf/machine/include/tune-arm920t.inc
@@ -1,4 +1,4 @@
 FEED_ARCH = "armv4t"
 BASE_PACKAGE_ARCH = "armv4t" 
 TARGET_CC_ARCH = "-march=armv4t -mtune=arm920t"
-
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t"
diff --git a/meta/conf/machine/include/tune-arm926ejs.inc b/meta/conf/machine/include/tune-arm926ejs.inc
index e80ef10..f41e460 100644
--- a/meta/conf/machine/include/tune-arm926ejs.inc
+++ b/meta/conf/machine/include/tune-arm926ejs.inc
@@ -1,5 +1,5 @@
 FEED_ARCH = "armv5te"
-
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t armv5te"
 # For gcc 3.x you need:
 #TARGET_CC_ARCH = "-march=armv5te -mtune=arm926ejs"
 # For gcc 4.x you need:
diff --git a/meta/conf/machine/include/tune-arm9tdmi.inc b/meta/conf/machine/include/tune-arm9tdmi.inc
index 39e4493..d788b53 100644
--- a/meta/conf/machine/include/tune-arm9tdmi.inc
+++ b/meta/conf/machine/include/tune-arm9tdmi.inc
@@ -1,2 +1,4 @@
+FEED_ARCH = "armv4t"
 BASE_PACKAGE_ARCH = "armv4t"
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t"
 TARGET_CC_ARCH = "-mcpu=arm9tdmi -mtune=arm9tdmi"
diff --git a/meta/conf/machine/include/tune-armv7.inc b/meta/conf/machine/include/tune-armv7.inc
index 96c8c64..379a3eb 100644
--- a/meta/conf/machine/include/tune-armv7.inc
+++ b/meta/conf/machine/include/tune-armv7.inc
@@ -3,4 +3,5 @@
 # This will NOT compile programs in 'ARM' mode, which is what you really want
 TARGET_CC_ARCH = "-march=armv7 -mfpu=vfp -mfloat-abi=softfp"
 FEED_ARCH = "armv7"
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t armv5te armv6 armv7"
 BASE_PACKAGE_ARCH = "armv7"
diff --git a/meta/conf/machine/include/tune-atom.inc b/meta/conf/machine/include/tune-atom.inc
index 0f09e8d..a401856 100644
--- a/meta/conf/machine/include/tune-atom.inc
+++ b/meta/conf/machine/include/tune-atom.inc
@@ -2,3 +2,4 @@ BASE_PACKAGE_ARCH = "core2"
 TARGET_CC_ARCH = "-m32 -march=core2 -msse3 -mtune=generic -mfpmath=sse"
 #MOBLIN_CFLAGS = "-Os -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -fasynchronous-unwind-tables"
 
+PACKAGE_EXTRA_ARCHS += "x86 i386 i486 i586 core2"
diff --git a/meta/conf/machine/include/tune-c3.inc b/meta/conf/machine/include/tune-c3.inc
index 107341e..1d636e8 100644
--- a/meta/conf/machine/include/tune-c3.inc
+++ b/meta/conf/machine/include/tune-c3.inc
@@ -1,3 +1,4 @@
 TARGET_CC_ARCH = "-march=c3 -mtune=c3"
+PACKAGE_EXTRA_ARCHS += "i386 i486 i586"
 BASE_PACKAGE_ARCH = "i586"
-
+FEED_ARCH = "i586"
diff --git a/meta/conf/machine/include/tune-cortexa8.inc b/meta/conf/machine/include/tune-cortexa8.inc
index 2c40b70..3ec1c03 100644
--- a/meta/conf/machine/include/tune-cortexa8.inc
+++ b/meta/conf/machine/include/tune-cortexa8.inc
@@ -10,3 +10,4 @@ TARGET_CC_ARCH = "-march=armv7-a -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
 
 FEED_ARCH = "armv7a"
 BASE_PACKAGE_ARCH = "armv7a"
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t armv5te armv6 armv7 armv7a"
diff --git a/meta/conf/machine/include/tune-ep9312.inc b/meta/conf/machine/include/tune-ep9312.inc
index 2cfdf52..d0c5bb2 100644
--- a/meta/conf/machine/include/tune-ep9312.inc
+++ b/meta/conf/machine/include/tune-ep9312.inc
@@ -2,5 +2,7 @@ TARGET_CC_ARCH = "-march=ep9312 -mtune=ep9312 -mcpu=ep9312"
 # add "-mfp=maverick" for newer gcc versions > 4.0
 
 #set arch to ep9312 for all generated packages
+PACKAGE_EXTRA_ARCHS += "armv4t ep9312"
 BASE_PACKAGE_ARCH = "ep9312"
+FEED_ARCH = "ep9312"
 
diff --git a/meta/conf/machine/include/tune-iwmmxt.inc b/meta/conf/machine/include/tune-iwmmxt.inc
index 49e560e..f7291be 100644
--- a/meta/conf/machine/include/tune-iwmmxt.inc
+++ b/meta/conf/machine/include/tune-iwmmxt.inc
@@ -2,5 +2,6 @@
 # Please use tune-xscale for PXA255/PXA26x based processors.
 TARGET_CC_ARCH = "-march=iwmmxt -mcpu=iwmmxt -mtune=iwmmxt"
 BASE_PACKAGE_ARCH = "iwmmxt"
-PACKAGE_EXTRA_ARCHS += "iwmmxt"
+PACKAGE_EXTRA_ARCHS += "armv4 armv4t armv5te iwmmxt"
+FEED_ARCH = "iwmmxt"
 
diff --git a/meta/conf/machine/include/tune-mips32.inc b/meta/conf/machine/include/tune-mips32.inc
index 93da66b..67edca2 100644
--- a/meta/conf/machine/include/tune-mips32.inc
+++ b/meta/conf/machine/include/tune-mips32.inc
@@ -1 +1,3 @@
 TARGET_CC_ARCH = "-march=mips32"
+FEED_ARCH = "${TARGET_ARCH}"
+BASE_PACKAGE_ARCH = "${TARGET_ARCH}"
diff --git a/meta/conf/machine/include/tune-ppc603e.inc b/meta/conf/machine/include/tune-ppc603e.inc
index a4a68d6..15a72d1 100644
--- a/meta/conf/machine/include/tune-ppc603e.inc
+++ b/meta/conf/machine/include/tune-ppc603e.inc
@@ -1,2 +1,4 @@
-TARGET_CC_ARCH = "-mcpu=603e -mhard-float"
+TARGET_CC_ARCH = "-mcpu=603e  -mhard-float"
 BASE_PACKAGE_ARCH = "ppc603e"
+FEED_ARCH = "ppc603e"
+PACKAGE_EXTRA_ARCHS += "ppc603e"
diff --git a/meta/conf/machine/include/tune-ppce300c2.inc b/meta/conf/machine/include/tune-ppce300c2.inc
index 067a7b1..2956875 100644
--- a/meta/conf/machine/include/tune-ppce300c2.inc
+++ b/meta/conf/machine/include/tune-ppce300c2.inc
@@ -1,2 +1,3 @@
 TARGET_CC_ARCH = "-mcpu=e300c2 -msoft-float"
 BASE_PACKAGE_ARCH = "ppce300"
+PACKAGE_EXTRA_ARCHS += "ppce300"
diff --git a/meta/conf/machine/include/tune-ppce500.inc b/meta/conf/machine/include/tune-ppce500.inc
index 2482196..44f8742 100644
--- a/meta/conf/machine/include/tune-ppce500.inc
+++ b/meta/conf/machine/include/tune-ppce500.inc
@@ -1,2 +1,4 @@
 TARGET_CC_ARCH = "-mcpu=8540"
 BASE_PACKAGE_ARCH = "ppce500"
+FEED_ARCH = "ppce500"
+PACKAGE_EXTRA_ARCHS += "ppce500"
diff --git a/meta/conf/machine/include/tune-sh3.inc b/meta/conf/machine/include/tune-sh3.inc
index 192dd8f..32801a6 100644
--- a/meta/conf/machine/include/tune-sh3.inc
+++ b/meta/conf/machine/include/tune-sh3.inc
@@ -1 +1,3 @@
 TARGET_CC_ARCH = "-ml -m3"
+FEED_ARCH = "sh3"
+BASE_PACKAGE_ARCH = "sh3"
diff --git a/meta/conf/machine/include/tune-sh4.inc b/meta/conf/machine/include/tune-sh4.inc
index 866f7f8..51b4069 100644
--- a/meta/conf/machine/include/tune-sh4.inc
+++ b/meta/conf/machine/include/tune-sh4.inc
@@ -1 +1,7 @@
+# NOTE: If you want to optimize to sh4a, conf/machine/include/tune-sh4a.inc.
+# But it is not compatible for sh4.
+# The binary optimized by m4a doesn't operate on sh4. It works on sh4a only.
+
 TARGET_CC_ARCH = "-ml -m4"
+FEED_ARCH = "sh4"
+BASE_PACKAGE_ARCH = "sh4"
diff --git a/meta/conf/machine/include/tune-supersparc.inc b/meta/conf/machine/include/tune-supersparc.inc
index 10133c6..a402e7c 100644
--- a/meta/conf/machine/include/tune-supersparc.inc
+++ b/meta/conf/machine/include/tune-supersparc.inc
@@ -1,2 +1,3 @@
 TARGET_CC_ARCH = "-mcpu=supersparc"
-BASE_PACKAGE_ARCH = "supersparc" 
+BASE_PACKAGE_ARCH = "supersparc"
+FEED_ARCH = "supersparc" 
diff --git a/meta/conf/machine/include/tune-xscale.inc b/meta/conf/machine/include/tune-xscale.inc
index 4f96814..f1ef3d4 100644
--- a/meta/conf/machine/include/tune-xscale.inc
+++ b/meta/conf/machine/include/tune-xscale.inc
@@ -5,6 +5,7 @@ INHERIT += "siteinfo"
 TARGET_CC_ARCH = "-march=armv5te -mtune=xscale"
 TARGET_CC_KERNEL_ARCH = "-march=armv5te -mtune=xscale"
 BASE_PACKAGE_ARCH = "${@['armv5teb', 'armv5te'][bb.data.getVar('SITEINFO_ENDIANESS', d, 1) == 'le']}"
+PACKAGE_EXTRA_ARCHS += "${@['armv4b armv4tb armv5teb', 'armv4 armv4t armv5te'][bb.data.getVar('SITEINFO_ENDIANESS', d, 1) == 'le']}"
 
 # webkit-gtk has alignment issues with double instructions on armv5 so
 # disable them here
diff --git a/meta/conf/machine/mpc8315e-rdb.conf b/meta/conf/machine/mpc8315e-rdb.conf
index 1b7982a..919a95d 100644
--- a/meta/conf/machine/mpc8315e-rdb.conf
+++ b/meta/conf/machine/mpc8315e-rdb.conf
@@ -2,7 +2,6 @@
 #@DESCRIPTION: Machine configuration for running 
 
 TARGET_ARCH = "powerpc"
-PACKAGE_EXTRA_ARCHS = "ppc603e"
 TARGET_FPU = "spe"
 
 require conf/machine/include/tune-ppc603e.inc
diff --git a/meta/conf/machine/mx31ads.conf b/meta/conf/machine/mx31ads.conf
index 04a238d..8b3e3db 100644
--- a/meta/conf/machine/mx31ads.conf
+++ b/meta/conf/machine/mx31ads.conf
@@ -2,7 +2,6 @@
 #@NAME: Freescale imx31 ADS Board
 #@DESCRIPTION: Machine configuration for the imx31 based Freescale ADS Board
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-mx31"
 
diff --git a/meta/conf/machine/mx31phy.conf b/meta/conf/machine/mx31phy.conf
index 28b255c..eea673a 100644
--- a/meta/conf/machine/mx31phy.conf
+++ b/meta/conf/machine/mx31phy.conf
@@ -2,7 +2,6 @@
 #@NAME: Phytec phyCORE-iMX31 Board
 #@DESCRIPTION: Machine configuration for the imx31 based Phytec phyCORE-iMX31
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-mx31"
 
diff --git a/meta/conf/machine/omap-3430ldp.conf b/meta/conf/machine/omap-3430ldp.conf
index 0be0546..759d58f 100644
--- a/meta/conf/machine/omap-3430ldp.conf
+++ b/meta/conf/machine/omap-3430ldp.conf
@@ -2,7 +2,6 @@
 #@NAME: TI OMAP 3430 LDP
 #@DESCRIPTION: Machine configuration for the TI OMAP 3430 LDP (aka OMAP Zoom)
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7a"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-omap"
 
diff --git a/meta/conf/machine/omap-3430sdp.conf b/meta/conf/machine/omap-3430sdp.conf
index 5d87bd1..651d6a9 100644
--- a/meta/conf/machine/omap-3430sdp.conf
+++ b/meta/conf/machine/omap-3430sdp.conf
@@ -2,7 +2,6 @@
 #@NAME: TI OMAP 3430 SDP
 #@DESCRIPTION: Machine configuration for the TI OMAP 3430 SDP
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7a"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-omap"
 
diff --git a/meta/conf/machine/overo.conf b/meta/conf/machine/overo.conf
index dde4bff..9fefd73 100644
--- a/meta/conf/machine/overo.conf
+++ b/meta/conf/machine/overo.conf
@@ -5,7 +5,6 @@
 include conf/machine/include/tune-cortexa8.inc
 
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7 armv7a"
 MACHINE_FEATURES = "kernel26 apm usbgadget usbhost vfat alsa"
 
 PREFERRED_VERSION_u-boot = "git"
diff --git a/meta/conf/machine/qemuarm.conf b/meta/conf/machine/qemuarm.conf
index 400ecc8..9fb1893 100644
--- a/meta/conf/machine/qemuarm.conf
+++ b/meta/conf/machine/qemuarm.conf
@@ -3,7 +3,6 @@
 #@DESCRIPTION: arm_versaile_926ejs
 
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te"
 
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-arm926ejs.inc
diff --git a/meta/conf/machine/qemuppc.conf b/meta/conf/machine/qemuppc.conf
index 0bbeac7..83d0841 100644
--- a/meta/conf/machine/qemuppc.conf
+++ b/meta/conf/machine/qemuppc.conf
@@ -3,7 +3,6 @@
 #@DESCRIPTION: Machine configuration for running an PPC system under qemu emulation
 
 TARGET_ARCH = "powerpc"
-PACKAGE_EXTRA_ARCHS = "ppc603e"
 
 require conf/machine/include/qemu.inc
 require conf/machine/include/tune-ppc603e.inc
diff --git a/meta/conf/machine/qemux86-64.conf b/meta/conf/machine/qemux86-64.conf
index fd34709..182759a 100644
--- a/meta/conf/machine/qemux86-64.conf
+++ b/meta/conf/machine/qemux86-64.conf
@@ -4,7 +4,6 @@
 
 TARGET_ARCH = "x86_64"
 TRANSLATED_TARGET_ARCH = "x86-64"
-PACKAGE_EXTRA_ARCHS = "x86"
 
 PREFERRED_PROVIDER_virtual/libgl  = "mesa-dri"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
diff --git a/meta/conf/machine/qemux86.conf b/meta/conf/machine/qemux86.conf
index cb2a32d..f1a0939 100644
--- a/meta/conf/machine/qemux86.conf
+++ b/meta/conf/machine/qemux86.conf
@@ -3,7 +3,6 @@
 #@DESCRIPTION: Machine configuration for running a common x86
 
 TARGET_ARCH = "i586"
-PACKAGE_EXTRA_ARCHS = "x86"
 
 PREFERRED_PROVIDER_virtual/libgl  = "mesa-dri"
 PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
diff --git a/meta/conf/machine/spitz.conf b/meta/conf/machine/spitz.conf
index 4a79433..faa00e9 100644
--- a/meta/conf/machine/spitz.conf
+++ b/meta/conf/machine/spitz.conf
@@ -9,7 +9,6 @@ MACHINE_FEATURES += "iwmmxt"
 
 PIVOTBOOT_EXTRA_RDEPENDS += "pivotinit ${PCMCIA_MANAGER}"
 
-PACKAGE_EXTRA_ARCHS += "iwmmxt"
 IMAGE_FSTYPES ?= "tar.gz ext3"
 IMAGE_ROOTFS_SIZE_ext3 = "250000"
 
diff --git a/meta/conf/machine/zoom2.conf b/meta/conf/machine/zoom2.conf
index 142a40c..dec90c2 100644
--- a/meta/conf/machine/zoom2.conf
+++ b/meta/conf/machine/zoom2.conf
@@ -2,7 +2,6 @@
 #@NAME: Logic PD Zoom2
 #@DESCRIPTION: Machine configuration for the OMAP3-powered Logic PD Zoom2
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5te armv6 armv7a"
 
 PREFERRED_PROVIDER_virtual/kernel = "linux-omap-zoomsync"
 
diff --git a/meta/conf/machine/zylonite.conf b/meta/conf/machine/zylonite.conf
index 644675e..e82f041 100644
--- a/meta/conf/machine/zylonite.conf
+++ b/meta/conf/machine/zylonite.conf
@@ -4,8 +4,9 @@
 
 require conf/machine/include/tune-xscale.inc
 
+PACKAGE_EXTRA_ARCHS += "iwmmxt"
+
 TARGET_ARCH = "arm"
-PACKAGE_EXTRA_ARCHS = "armv4 armv4t armv5e armv5te iwmmxt"
 
 EXTRA_IMAGECMD_jffs2 = "--little-endian --eraseblock=0x20000 -n -x lzo -p"
 
-- 
1.6.6.1


