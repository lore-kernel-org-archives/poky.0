Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C8ECC54E64
	for <webhook@archiver.kernel.org>; Thu, 28 Mar 2024 12:22:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.14411.1711628549098902957
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Mar 2024 05:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16C0D1476
	for <poky@lists.yoctoproject.org>; Thu, 28 Mar 2024 05:23:02 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2FE203F7BD
	for <poky@lists.yoctoproject.org>; Thu, 28 Mar 2024 05:22:28 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH 1/2] README.hardware.md: fix Markdown formatting
Date: Thu, 28 Mar 2024 12:22:23 +0000
Message-Id: <20240328122224.2359814-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 28 Mar 2024 12:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13316

From: Ross Burton <ross.burton@arm.com>

This file is has a .md extension so it's meant to be Markdown. Reformat
it so that it's actually Markdown.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/README.hardware.md | 65 +++++++++++++++----------------
 1 file changed, 32 insertions(+), 33 deletions(-)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.ha=
rdware.md
index bb8f57913fd..a129063afa0 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -1,5 +1,5 @@
-                  Yocto Project Hardware Reference BSPs README
-                  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
+Yocto Project Hardware Reference BSPs README
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 This file gives details about using the Yocto Project hardware reference=
 BSPs.
 The machines supported can be seen in the conf/machine/ directory and ar=
e listed=20
@@ -13,9 +13,7 @@ consult the documentation for your board/device.
 Support for additional devices is normally added by adding BSP layers to=
 your=20
 configuration. For more information please see the Yocto Board Support P=
ackage=20
 (BSP) Developer's Guide - documentation source is in documentation/bspgu=
ide or=20
-download the PDF from:
-
-   https://docs.yoctoproject.org/
+download the PDF from https://docs.yoctoproject.org/
=20
 Note that these reference BSPs use the linux-yocto kernel and in general=
 don't
 pull in binary module support for the platforms. This means some device =
functionality
@@ -27,9 +25,9 @@ Hardware Reference Boards
=20
 The following boards are supported by the meta-yocto-bsp layer:
=20
-  * Texas Instruments Beaglebone (beaglebone-yocto)
-  * General 64-bit Arm SystemReady platforms (genericarm64)
-  * General IA platforms (genericx86 and genericx86-64)
+  * Texas Instruments Beaglebone (`beaglebone-yocto`)
+  * General 64-bit Arm SystemReady platforms (`genericarm64`)
+  * General IA platforms (`genericx86` and `genericx86-64`)
=20
 For more information see the board's section below. The appropriate MACH=
INE
 variable value corresponding to the board is given in brackets.
@@ -40,36 +38,36 @@ Reference Board Maintenance and Contributions
 Please refer to our contributor guide here: https://docs.yoctoproject.or=
g/dev/contributor-guide/
 for full details on how to submit changes.
=20
-As a quick guide, patches should be sent to poky@lists.yoctoproject.org
+As a quick guide, patches should be sent to <poky@lists.yoctoproject.org=
>
 The git command to do that would be:
 =20
      git send-email -M -1 --to poky@lists.yoctoproject.org
=20
 Send pull requests, patches, comments or questions about meta-yocto-bsp =
to=20
-poky@lists.yoctoproject.org
+<poky@lists.yoctoproject.org>.
=20
-Maintainers: Kevin Hao <kexin.hao@windriver.com>
-             Bruce Ashfield <bruce.ashfield@gmail.com>
+Maintainers:
+* Kevin Hao <kexin.hao@windriver.com>
+* Bruce Ashfield <bruce.ashfield@gmail.com>
=20
 Consumer Devices
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
 The following consumer devices are supported by the meta-yocto-bsp layer=
:
=20
-  * Arm-based SystemReady devices (genericarm64)
-  * Intel x86 based PCs and devices (genericx86 and genericx86-64)
+  * Arm-based SystemReady devices (`genericarm64`)
+  * Intel x86 based PCs and devices (`genericx86` and `genericx86-64`)
=20
 For more information see the device's section below. The appropriate MAC=
HINE
 variable value corresponding to the device is given in brackets.
=20
=20
-
-                      Specific Hardware Documentation
-                      =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+Specific Hardware Documentation
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
=20
=20
 Intel x86 based PCs and devices (genericx86*)
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+---------------------------------------------
=20
 The genericx86 and genericx86-64 MACHINE are tested on the following pla=
tforms:
=20
@@ -96,17 +94,18 @@ target boot device is /dev/sdb, be sure to verify thi=
s and use the correct
 device as the following commands are run as root and are not reversable.
=20
 USB Device:
+
   1. Build a live image. This image type consists of a simple filesystem
      without a partition table, which is suitable for USB keys, and with=
 the
      default setup for the genericx86 machine, this image type is built
      automatically for any image you build. For example:
=20
-     $ bitbake core-image-minimal
+         $ bitbake core-image-minimal
=20
-  2. Use the "dd" utility to write the image to the raw block device. Fo=
r
+  2. Use the `dd` utility to write the image to the raw block device. Fo=
r
      example:
=20
-     # dd if=3Dcore-image-minimal-genericx86.hddimg of=3D/dev/sdb
+         # dd if=3Dcore-image-minimal-genericx86.hddimg of=3D/dev/sdb
=20
   If the device fails to boot with "Boot error" displayed, or apparently
   stops just after the SYSLINUX version banner, it is likely the BIOS ca=
nnot
@@ -120,16 +119,16 @@ USB Device:
=20
   2. Use a ".wic" image with an EFI partition
=20
-     a) With a default grub-efi bootloader:
-     # dd if=3Dcore-image-minimal-genericx86-64.wic of=3D/dev/sdb
+     1. With a default grub-efi bootloader:
=20
-     b) Use systemd-boot instead
-     - Build an image with EFI_PROVIDER=3D"systemd-boot" then use the ab=
ove
-       dd command to write the image to a USB stick.
+            # dd if=3Dcore-image-minimal-genericx86-64.wic of=3D/dev/sdb
=20
+     2. Use systemd-boot instead. Build an image with `EFI_PROVIDER=3D"s=
ystemd-boot"` then use the above
+       `dd` command to write the image to a USB stick.
=20
-SystemReady Arm Platforms
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
+
+SystemReady Arm Platforms (genericarm64)
+----------------------------------------
=20
 The genericarm64 MACHINE is designed to work on standard SystemReady IR
 compliant boards with preinstalled firmware.
@@ -143,15 +142,15 @@ SD card for booting, for example.
=20
=20
 Texas Instruments Beaglebone (beaglebone-yocto)
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
+-----------------------------------------------
=20
 The Beaglebone is an ARM Cortex-A8 development board with USB, Ethernet,=
 2D/3D
 accelerated graphics, audio, serial, JTAG, and SD/MMC. The Black adds a =
faster
 CPU, more RAM, eMMC flash and a micro HDMI port. The beaglebone MACHINE =
is
 tested on the following platforms:
=20
-  o Beaglebone Black A6
-  o Beaglebone A6 (the original "White" model)
+  * Beaglebone Black A6
+  * Beaglebone A6 (the original "White" model)
=20
 The Beaglebone Black has eMMC, while the White does not. Pressing the US=
ER/BOOT
 button when powering on will temporarily change the boot order. But for =
the sake
@@ -169,10 +168,10 @@ From a Linux system with access to the image files =
perform the following steps:
=20
   1. Build an image. For example:
=20
-     $ bitbake core-image-minimal
+         $ bitbake core-image-minimal
=20
   2. Use the "dd" utility to write the image to the SD card. For example=
:
=20
-     # dd if=3Dcore-image-minimal-beaglebone-yocto.wic of=3D/dev/sdb
+         # dd if=3Dcore-image-minimal-beaglebone-yocto.wic of=3D/dev/sdb
=20
   3. Insert the SD card into the Beaglebone and boot the board.
--=20
2.34.1


