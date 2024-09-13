Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCE6FA375E
	for <webhook@archiver.kernel.org>; Fri, 13 Sep 2024 16:06:51 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.77210.1726243609194351808
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Sep 2024 09:06:49 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33A911477
	for <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 09:07:17 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 70E693F64C
	for <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 09:06:47 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH v2 2/2] genericarm64: don't pin to linux 6.6
Date: Fri, 13 Sep 2024 17:06:41 +0100
Message-Id: <20240913160641.3502335-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240913160641.3502335-1-ross.burton@arm.com>
References: <20240913160641.3502335-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Sep 2024 16:06:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13441

The 6.10 build has been tested on both a BeaglePlay and qemu, so we can
remove the pinning now.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
index 8c1b09fdd50..1cb5e46dcf7 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -12,7 +12,6 @@ MACHINE_FEATURES =3D "acpi alsa bluetooth efi keyboard =
pci qemu-usermode rtc scree
=20
 KERNEL_IMAGETYPE =3D "Image"
 PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?=3D "6.6%"
=20
 # Install all the kernel modules into the rootfs
 MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules"
--=20
2.34.1


