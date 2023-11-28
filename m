Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B3BC4167B
	for <webhook@archiver.kernel.org>; Tue, 28 Nov 2023 11:43:55 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.30707.1701171833777632766
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Nov 2023 03:43:53 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46CF1C15;
	Tue, 28 Nov 2023 03:44:40 -0800 (PST)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4C8973F73F;
	Tue, 28 Nov 2023 03:43:52 -0800 (PST)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH] genericx86: remove redundant assignments
Date: Tue, 28 Nov 2023 11:43:48 +0000
Message-Id: <20231128114348.1591150-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 28 Nov 2023 11:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13211

From: Ross Burton <ross.burton@arm.com>

GLIBC_ADDONS was removed from the glibc recipe in 2018 (oe-core 9dc9983).

matchbox-panel-2 uses the ACPI battery by default if the machine has the
'acpi' feature, which genericx86 has.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/=
meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index e0cb7157135..f6a030b1844 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -16,10 +16,6 @@ XSERVER ?=3D "${XSERVER_X86_BASE} \
=20
 MACHINE_EXTRA_RRECOMMENDS +=3D "kernel-modules linux-firmware"
=20
-GLIBC_ADDONS =3D "nptl"
-
-EXTRA_OECONF:append:pn-matchbox-panel-2 =3D " --with-battery=3Dacpi"
-
 IMAGE_FSTYPES +=3D "wic wic.bmap"
 WKS_FILE ?=3D "mkefidisk.wks.in"
 EFI_PROVIDER ??=3D "grub-efi"
--=20
2.34.1


