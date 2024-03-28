Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F31C54E67
	for <webhook@archiver.kernel.org>; Thu, 28 Mar 2024 12:22:38 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.14291.1711628549436373619
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Mar 2024 05:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A137515A1
	for <poky@lists.yoctoproject.org>; Thu, 28 Mar 2024 05:23:02 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B31273F7BD
	for <poky@lists.yoctoproject.org>; Thu, 28 Mar 2024 05:22:28 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH 2/2] README.hardware.md: add section on genericarm64 on qemu
Date: Thu, 28 Mar 2024 12:22:24 +0000
Message-Id: <20240328122224.2359814-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240328122224.2359814-1-ross.burton@arm.com>
References: <20240328122224.2359814-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 28 Mar 2024 12:22:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13317

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/README.hardware.md | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.ha=
rdware.md
index a129063afa0..6045c3d8679 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -140,6 +140,11 @@ The genericarm64 MACHINE is currently tested on the =
following platforms:
 The images built are EFI bootable disk images and can be written directl=
y to a
 SD card for booting, for example.
=20
+There is also limited support for booting a genericarm64 image inside QE=
MU. When
+building the image also build the `u-boot` recipe to build the required
+firmware (note that this firmware will _not_ boot on real hardware), the=
n use
+`runqemu` as usual.
+
=20
 Texas Instruments Beaglebone (beaglebone-yocto)
 -----------------------------------------------
--=20
2.34.1


