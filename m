Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F8E1C54E67
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 18:11:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.3693.1710267080140726171
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 11:11:20 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D97EC1570
	for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 11:11:56 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6CD7D3F73F
	for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 11:11:19 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH 2/2] linux-yocto: implicitly track oe-core's kernel version for genericarm64
Date: Tue, 12 Mar 2024 18:11:15 +0000
Message-Id: <20240312181115.3848230-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240312181115.3848230-1-ross.burton@arm.com>
References: <20240312181115.3848230-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 18:11:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13307

From: Ross Burton <ross.burton@arm.com>

Don't override KBRANCH/SRCREV/LINUX_VERSION, instead use the values in
the base oe-core linux-yocto recipe.

The advantage of this is that we don't need to update this file every
time the kernel is upgraded in oe-core.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
index 7a1fb6f245c..b404f827e7b 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
@@ -3,7 +3,6 @@ COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
 COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
=20
-KBRANCH:genericarm64  =3D "v6.6/standard/base"
 KBRANCH:genericx86  =3D "v6.6/standard/base"
 KBRANCH:genericx86-64  =3D "v6.6/standard/base"
 KBRANCH:beaglebone-yocto =3D "v6.6/standard/beaglebone"
@@ -13,12 +12,10 @@ KMACHINE:genericx86 ?=3D "common-pc"
 KMACHINE:genericx86-64 ?=3D "common-pc-64"
 KMACHINE:beaglebone-yocto ?=3D "beaglebone"
=20
-SRCREV_machine:genericarm64 ?=3D "e064a7d658a30b027b999183e21cd37305caff=
2a"
 SRCREV_machine:genericx86 ?=3D "332d4668fcc32826907d4f3c4938845206006089=
"
 SRCREV_machine:genericx86-64 ?=3D "332d4668fcc32826907d4f3c4938845206006=
089"
 SRCREV_machine:beaglebone-yocto ?=3D "332d4668fcc32826907d4f3c4938845206=
006089"
=20
-LINUX_VERSION:genericarm64 =3D "6.6.18"
 LINUX_VERSION:genericx86 =3D "6.6.15"
 LINUX_VERSION:genericx86-64 =3D "6.6.15"
 LINUX_VERSION:beaglebone-yocto =3D "6.6.15"
--=20
2.34.1


