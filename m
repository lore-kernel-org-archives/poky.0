Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E73DCAC58E
	for <webhook@archiver.kernel.org>; Thu, 11 Sep 2025 19:55:54 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.6856.1757620552975605569
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Sep 2025 12:55:53 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB72B204C
	for <poky@lists.yoctoproject.org>; Thu, 11 Sep 2025 12:55:43 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B48173F694
	for <poky@lists.yoctoproject.org>; Thu, 11 Sep 2025 12:55:51 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: don't mark debian-11 as supported
Date: Thu, 11 Sep 2025 20:55:44 +0100
Message-ID: <20250911195545.3525333-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 11 Sep 2025 19:55:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13744

Debian 11 is now "oldoldstable" and under community LTS support until
August 2026[1]. It is not covered by the Debian Security team and any
fixes are best-effort only by the LTS community.

Debian 11 was released 2021-08-14, Debian 12 was released in 2023-06-10
and is the current "oldstable" whilst Debian 12 is the current "stable"
and was released in 2025-08-09.

We should shortly be testing on Debian 13. There's no real need to
continue testing our next release on such an old release of Debian, so
remove it from the tested distribution list.

[1] https://wiki.debian.org/LTS

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index d86630b153a..2bca49770a2 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -40,7 +40,6 @@ SANITY_TESTED_DISTROS ?=3D " \
             fedora-40 \n \
             fedora-41 \n \
             centosstream-9 \n \
-            debian-11 \n \
             debian-12 \n \
             opensuseleap-15.5 \n \
             opensuseleap-15.6 \n \
--=20
2.43.0


