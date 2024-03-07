Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8230FC54E49
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 14:42:30 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.24858.1709822546051185871
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 06:42:26 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96553C15
	for <poky@lists.yoctoproject.org>; Thu,  7 Mar 2024 06:43:02 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3F9B73F73F
	for <poky@lists.yoctoproject.org>; Thu,  7 Mar 2024 06:42:25 -0800 (PST)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH 2/2] genericarm64: clean up kernel modules and firmware
Date: Thu,  7 Mar 2024 14:42:22 +0000
Message-Id: <20240307144222.776289-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307144222.776289-1-ross.burton@arm.com>
References: <20240307144222.776289-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Mar 2024 14:42:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13302

From: Ross Burton <ross.burton@arm.com>

Don't install _all_ of the firmware, as that's huge (almost 1GB). Instead
install a few pieces of firmware for common hardware.

Also use the same list of packages to populate the initramfs, so there's
no need to manually sync the package lists (as initramfs doesn't install
the MACHINE_EXTRA_RRECOMMENDS automatically).

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
index 83f1aca137a..7c4c76ffe0c 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -1,6 +1,6 @@
 #@TYPE: Machine
 #@NAME: genericarm64
-#@DESCRIPTION: Generic Arm64 machine for typical SystemReady platforms, =
which
+#@DESCRIPTION: Generic Arm64 machine for typical SystemReady IR/ES platf=
orms, which
 #have working firmware and boot via EFI.
=20
 require conf/machine/include/arm/arch-armv8a.inc
@@ -10,15 +10,17 @@ DEFAULTTUNE =3D "armv8a-crc"
=20
 MACHINE_FEATURES =3D "acpi alsa bluetooth efi keyboard pci qemu-usermode=
 rtc screen usbhost vfat wifi"
=20
-# Install all the kernel modules and all the firmware
-MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules linux-firmware"
-
 KERNEL_IMAGETYPE =3D "Image"
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
=20
-# Use an initramfs and populate it with the kernel modules
+# Install all the kernel modules into the rootfs
+MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
+# Install selected pieces of firmware
+MACHINE_EXTRA_RRECOMMENDS +=3D "linux-firmware-wl12xx linux-firmware-wl1=
8xx linux-firmware-rtl-nic"
+
+# Use an initramfs and populate it with the kernel modules and key firmw=
are
 INITRAMFS_IMAGE ?=3D "core-image-initramfs-boot"
-PACKAGE_INSTALL:append:pn-core-image-initramfs-boot =3D " kernel-modules=
"
+PACKAGE_INSTALL:append:pn-core-image-initramfs-boot =3D " ${MACHINE_EXTR=
A_RRECOMMENDS}"
=20
 IMAGE_FSTYPES ?=3D "wic"
 WKS_FILE ?=3D "genericarm64.wks.in"
--=20
2.34.1


