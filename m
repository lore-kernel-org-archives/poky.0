Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 497A9C54E71
	for <webhook@archiver.kernel.org>; Fri, 22 Mar 2024 16:50:24 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.54.1711126214143661691
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Mar 2024 09:50:14 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11C39FEC
	for <poky@lists.yoctoproject.org>; Fri, 22 Mar 2024 09:50:48 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7E70F3F67D
	for <poky@lists.yoctoproject.org>; Fri, 22 Mar 2024 09:50:13 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericarm64: add qemuboot configuration
Date: Fri, 22 Mar 2024 16:50:09 +0000
Message-Id: <20240322165009.3704771-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Mar 2024 16:50:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13312

From: Ross Burton <ross.burton@arm.com>

A basic SystemReady IR system can be provided by qemu-system-aarch64
and u-boot, so tell u-boot to build the qemu_arm64 machine and configure
qemuboot to start that u-boot and search the virtio-attached wic image
for the EFI boot partition.

Currently this machine support emulated (Cortex-A76) and virtualised (KVM=
)
execution, and virtio storage/network/console.  Display support will be
added shortly.

Note that this machine still doesn't build U-Boot by default, as a u-boot
binary for qemu in deploy would potentially confuse users who want to
boot on real hardware and think this u-boot is needed.  If you wish to
use genericarm64 with runqemu, you'll need to manually bitbake u-boot.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
index 7c4c76ffe0c..4afd6c3a870 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -29,3 +29,30 @@ EFI_PROVIDER ?=3D "${@bb.utils.contains("DISTRO_FEATUR=
ES", "systemd", "systemd-boo
=20
 # Try to bring up one physical serial console, or a virtualized serial c=
onsole
 SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0"
+
+# Allow u-boot to be built for use with qemu-system-aarch64.
+# This u-boot is _not_ suitable for use with real hardware, and the expe=
ctation
+# of this machine is that real hardware comes with the firmware pre-load=
ed.
+UBOOT_MACHINE =3D "qemu_arm64_defconfig"
+
+# runqemu configuration to run a genericarm64 image inside a qemu-system=
-aarch64. You will need
+# to build u-boot explicitly.
+IMAGE_CLASSES +=3D "qemuboot"
+QB_SYSTEM_NAME =3D "qemu-system-aarch64"
+# Boot the virtual machine with either an emulated Cortex-A76, or the ho=
st if using KVM
+QB_MACHINE =3D "-machine virt"
+QB_CPU =3D "-cpu cortex-a76"
+QB_CPU_KVM =3D "-cpu host -machine gic-version=3D3"
+QB_SMP =3D "-smp 4"
+# Boot into U-Boot and let that scan the disk for the next step, don't p=
ass any kernel or filesystem hints
+QB_DEFAULT_BIOS =3D "u-boot.bin"
+QB_DEFAULT_KERNEL =3D "none"
+QB_DEFAULT_FSTYPE =3D "wic"
+QB_FSINFO =3D "wic:no-kernel-in-fs"
+# Mount the wic rootfs as a virtio block device
+QB_ROOTFS_OPT =3D "-drive id=3Droot,file=3D@ROOTFS@,if=3Dnone,format=3Dr=
aw -device virtio-blk-pci,drive=3Droot"
+# Virtio serial consoles
+QB_SERIAL_OPT =3D "-device virtio-serial-pci -chardev null,id=3Dvirtcon =
-device virtconsole,chardev=3Dvirtcon"
+QB_TCPSERIAL_OPT =3D "-device virtio-serial-pci -chardev socket,id=3Dvir=
tcon,port=3D@PORT@,host=3D127.0.0.1,nodelay=3Don -device virtconsole,char=
dev=3Dvirtcon"
+# Virtio networking
+QB_TAP_OPT =3D "-netdev tap,id=3Dnet0,ifname=3D@TAP@,script=3Dno,downscr=
ipt=3Dno"
--=20
2.34.1


