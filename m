Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47BACC71136
	for <webhook@archiver.kernel.org>; Tue, 17 Jun 2025 15:08:12 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.21629.1750172889528971780
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Jun 2025 08:08:09 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 117DD150C
	for <poky@lists.yoctoproject.org>; Tue, 17 Jun 2025 08:07:48 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A1ACE3F673
	for <poky@lists.yoctoproject.org>; Tue, 17 Jun 2025 08:08:08 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericarm64: generated compressed images
Date: Tue, 17 Jun 2025 16:08:03 +0100
Message-ID: <20250617150804.756915-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Jun 2025 15:08:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13655

As unlike qemu images these images are not ran directly on the build
machine but will be transfered to another machine or medium, so compress
the image. This reduces core-image-minimal's ~600M to ~100M.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
index 722bc7d4a66..4924c0e298a 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -24,7 +24,7 @@ INITRAMFS_MAXSIZE =3D "200000"
 INITRAMFS_IMAGE ?=3D "core-image-initramfs-boot"
 PACKAGE_INSTALL:append:pn-core-image-initramfs-boot =3D " ${MACHINE_EXTR=
A_RRECOMMENDS}"
=20
-IMAGE_FSTYPES ?=3D "wic"
+IMAGE_FSTYPES ?=3D "wic wic.zst"
 WKS_FILE ?=3D "genericarm64.wks.in"
=20
 EFI_PROVIDER ?=3D "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "s=
ystemd-boot", "grub-efi", d)}"
--=20
2.43.0


