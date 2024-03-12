Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19CF1C54E58
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 18:11:23 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.3692.1710267079734579507
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 11:11:19 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F05D1007
	for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 11:11:56 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C53903F73F
	for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 11:11:18 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Subject: [PATCH 1/2] linux-yocto: put COMPATIBLE_MACHINE first
Date: Tue, 12 Mar 2024 18:11:14 +0000
Message-Id: <20240312181115.3848230-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 18:11:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13306

From: Ross Burton <ross.burton@arm.com>

Move the COMPATIBLE_MACHINE assignments to the top of the file as they
effectively control what machines this bbappend is for.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../recipes-kernel/linux/linux-yocto_6.6.bbappend      | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend=
 b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
index ca7b2b09df7..7a1fb6f245c 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
@@ -1,3 +1,8 @@
+COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
+COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
+COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
+
 KBRANCH:genericarm64  =3D "v6.6/standard/base"
 KBRANCH:genericx86  =3D "v6.6/standard/base"
 KBRANCH:genericx86-64  =3D "v6.6/standard/base"
@@ -13,11 +18,6 @@ SRCREV_machine:genericx86 ?=3D "332d4668fcc32826907d4f=
3c4938845206006089"
 SRCREV_machine:genericx86-64 ?=3D "332d4668fcc32826907d4f3c4938845206006=
089"
 SRCREV_machine:beaglebone-yocto ?=3D "332d4668fcc32826907d4f3c4938845206=
006089"
=20
-COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
-COMPATIBLE_MACHINE:genericx86 =3D "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 =3D "genericx86-64"
-COMPATIBLE_MACHINE:beaglebone-yocto =3D "beaglebone-yocto"
-
 LINUX_VERSION:genericarm64 =3D "6.6.18"
 LINUX_VERSION:genericx86 =3D "6.6.15"
 LINUX_VERSION:genericx86-64 =3D "6.6.15"
--=20
2.34.1


