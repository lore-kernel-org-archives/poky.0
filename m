Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E6DE7717D
	for <webhook@archiver.kernel.org>; Fri, 13 Dec 2024 15:08:43 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.17546.1734102522592083986
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Dec 2024 07:08:42 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 442441480
	for <poky@lists.yoctoproject.org>; Fri, 13 Dec 2024 07:09:10 -0800 (PST)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B5AAF3F720
	for <poky@lists.yoctoproject.org>; Fri, 13 Dec 2024 07:08:41 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] linux-yocto: enable linux 6.12 for genericarm64
Date: Fri, 13 Dec 2024 15:08:36 +0000
Message-ID: <20241213150836.326100-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Dec 2024 15:08:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13494

Add a bbappend so that genericarm64 can use 6.12.x.

We explicitly set the SRCREV to incorporate some required config fixes
that have not been integrated into the oe-core recipe at this point in
time.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.=
bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappen=
d b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
new file mode 100644
index 00000000000..97e512fbc5f
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -0,0 +1,4 @@
+COMPATIBLE_MACHINE:genericarm64 =3D "genericarm64"
+
+# Incorporate fixes post 6.12.3
+SRCREV_meta:genericarm64 =3D "9ee4baec963b10d213c060622fce6d2b34166f40"
--=20
2.43.0


