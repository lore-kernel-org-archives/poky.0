Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C6A9CEACC8
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 14:06:00 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.82655.1727791551927459818
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Oct 2024 07:05:52 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AFE84339
	for <poky@lists.yoctoproject.org>; Tue,  1 Oct 2024 07:06:20 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B49573F58B
	for <poky@lists.yoctoproject.org>; Tue,  1 Oct 2024 07:05:50 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericarm64: add more serial consoles
Date: Tue,  1 Oct 2024 15:05:41 +0100
Message-Id: <20241001140541.4184088-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 01 Oct 2024 14:06:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13448

Some boards - such as the BeaglePlay - have the serial console on ttyS2.

Add a few ttyS? consoles to SERIAL_CONSOLES to cater for these boards.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
index 1cb5e46dcf7..b6dfb8042d3 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -27,8 +27,8 @@ WKS_FILE ?=3D "genericarm64.wks.in"
=20
 EFI_PROVIDER ?=3D "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "s=
ystemd-boot", "grub-efi", d)}"
=20
-# Try to bring up one physical serial console, or a virtualized serial c=
onsole
-SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0"
+# Try to bring up a selection of physical or virtual serial consoles
+SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;tty=
S1 115200;ttyS2"
=20
 # Allow u-boot to be built for use with qemu-system-aarch64.
 # This u-boot is _not_ suitable for use with real hardware, and the expe=
ctation
--=20
2.34.1


