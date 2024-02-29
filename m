Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63621C48BF6
	for <webhook@archiver.kernel.org>; Thu, 29 Feb 2024 16:24:47 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.342.1709223883482657958
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Feb 2024 08:24:43 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E26521FB
	for <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 08:25:21 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C11FD3F6C4
	for <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 08:24:42 -0800 (PST)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH v4] Add genericarm64 MACHINE
Date: Thu, 29 Feb 2024 16:24:40 +0000
Message-Id: <20240229162440.4039352-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Feb 2024 16:24:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13288

From: Ross Burton <ross.burton@arm.com>

This is a new 64-bit "generic" Arm machine, that expects the hardware to
be SystemReady compatible.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../conf/templates/default/local.conf.sample  |  1 +
 meta-yocto-bsp/README.hardware.md             | 18 ++++++++++-
 meta-yocto-bsp/conf/machine/genericarm64.conf | 31 +++++++++++++++++++
 .../linux/linux-yocto_6.6.bbappend            |  5 +++
 meta-yocto-bsp/wic/genericarm64.wks.in        | 11 +++++++
 5 files changed, 65 insertions(+), 1 deletion(-)
 create mode 100644 meta-yocto-bsp/conf/machine/genericarm64.conf
 create mode 100644 meta-yocto-bsp/wic/genericarm64.wks.in

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-po=
ky/conf/templates/default/local.conf.sample
index 5fb6944f3f0..1a93c9bdcf3 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -31,6 +31,7 @@
 # demonstration purposes:
 #
 #MACHINE ?=3D "beaglebone-yocto"
+#MACHINE ?=3D "genericarm64"
 #MACHINE ?=3D "genericx86"
 #MACHINE ?=3D "genericx86-64"
 #
diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.ha=
rdware.md
index a8f38cb21a6..e84c3e0e3dc 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -28,6 +28,7 @@ Hardware Reference Boards
 The following boards are supported by the meta-yocto-bsp layer:
=20
   * Texas Instruments Beaglebone (beaglebone-yocto)
+  * General 64-bit Arm SystemReady platforms (genericarm64)
   * General IA platforms (genericx86 and genericx86-64)
=20
 For more information see the board's section below. The appropriate MACH=
INE
@@ -55,7 +56,8 @@ Consumer Devices
=20
 The following consumer devices are supported by the meta-yocto-bsp layer=
:
=20
-  * Intel x86 based PCs and devices (genericx86)
+  * Arm-based SystemReady devices (genericarm64)
+  * Intel x86 based PCs and devices (genericx86 and genericx86-64)
=20
 For more information see the device's section below. The appropriate MAC=
HINE
 variable value corresponding to the device is given in brackets.
@@ -126,6 +128,20 @@ USB Device:
        dd command to write the image to a USB stick.
=20
=20
+SystemReady Arm Platforms
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
+
+The genericarm64 MACHINE is designed to work on standard SystemReady IR/=
SR
+compliant boards with preinstalled firmware.
+
+The genericarm64 MACHINE is currently tested on the following platforms:
+
+  * Texas Instruments BeaglePlay (IR)
+
+The images built are EFI bootable disk images and can be written directl=
y to a
+SD card for booting, for example.
+
+
 Texas Instruments Beaglebone (beaglebone-yocto)
 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
=20
diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
new file mode 100644
index 00000000000..33ffa3fc019
--- /dev/null
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -0,0 +1,31 @@
+#@TYPE: Machine
+#@NAME: genericarm64
+#@DESCRIPTION: Generic Arm64 machine for typical SystemReady IR/ES platf=
orms, which
+#have working firmware and boot via EFI.
+
+require conf/machine/include/arm/arch-armv8a.inc
+
+# Arm Base System Architecture says v8.0+ is allowed, but FEAT_CRC32 is =
required
+DEFAULTTUNE =3D "armv8a-crc"
+
+MACHINE_FEATURES =3D "acpi alsa bluetooth efi keyboard pci qemu-usermode=
 rtc screen usbhost vfat wifi"
+
+KERNEL_IMAGETYPE =3D "Image"
+PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
+
+# Install all the kernel modules into the rootfs
+MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
+# Install selected pieces of firmware
+MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-wl12xx linux-firmware-wl1=
8xx linux-firmware-wlcommon linux-firmware-rtl-nic"
+
+# Use an initramfs and populate it with the kernel modules and key firmw=
are
+INITRAMFS_IMAGE ?=3D "core-image-initramfs-boot"
+PACKAGE_INSTALL:append:pn-core-image-initramfs-boot =3D " kernel-modules=
 linux-firmware-rtl-nic"
+
+IMAGE_FSTYPES ?=3D "wic"
+WKS_FILE ?=3D "genericarm64.wks.in"
+
+EFI_PROVIDER ?=3D "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "s=
ystemd-boot", "grub-efi", d)}"
+
+# Try to bring up one physical serial console, or a virtualized serial c=
onsole
+SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
index 8e465c241e8..ca7b2b09df7 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
@@ -1,19 +1,24 @@
+KBRANCH:genericarm64  =3D "v6.6/standard/base"
 KBRANCH:genericx86  =3D "v6.6/standard/base"
 KBRANCH:genericx86-64  =3D "v6.6/standard/base"
 KBRANCH:beaglebone-yocto =3D "v6.6/standard/beaglebone"
=20
+KMACHINE:genericarm64 ?=3D "genericarm64"
 KMACHINE:genericx86 ?=3D "common-pc"
 KMACHINE:genericx86-64 ?=3D "common-pc-64"
 KMACHINE:beaglebone-yocto ?=3D "beaglebone"
=20
+SRCREV_machine:genericarm64 ?=3D "e064a7d658a30b027b999183e21cd37305caff=
2a"
 SRCREV_machine:genericx86 ?=3D "332d4668fcc32826907d4f3c4938845206006089=
"
 SRCREV_machine:genericx86-64 ?=3D "332d4668fcc32826907d4f3c4938845206006=
089"
 SRCREV_machine:beaglebone-yocto ?=3D "332d4668fcc32826907d4f3c4938845206=
006089"
=20
+COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
 COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
 COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
=20
+LINUX_VERSION:genericarm64 =3D "6.6.18"
 LINUX_VERSION:genericx86 =3D "6.6.15"
 LINUX_VERSION:genericx86-64 =3D "6.6.15"
 LINUX_VERSION:beaglebone-yocto =3D "6.6.15"
diff --git a/meta-yocto-bsp/wic/genericarm64.wks.in b/meta-yocto-bsp/wic/=
genericarm64.wks.in
new file mode 100644
index 00000000000..f76e5444be4
--- /dev/null
+++ b/meta-yocto-bsp/wic/genericarm64.wks.in
@@ -0,0 +1,11 @@
+# short-description: Create an EFI disk image
+# long-description: Creates a partitioned EFI disk image that the user
+# can directly dd to boot media.
+
+part /boot --source bootimg-efi --sourceparams=3D"loader=3D${EFI_PROVIDE=
R},initrd=3D${INITRAMFS_IMAGE}-${MACHINE}.${INITRAMFS_FSTYPES}" --label b=
oot --active --align 1024 --use-uuid
+
+part swap --size 32 --label swap --fstype=3Dswap --use-uuid
+
+part / --source rootfs --fstype=3Dext4 --label root --align 1024 --use-u=
uid
+
+bootloader --ptable gpt --timeout=3D5 --append=3D"rootwait rootfstype=3D=
ext4"
--=20
2.34.1


