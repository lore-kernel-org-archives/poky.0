Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66685EB64D9
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 12:34:12 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.6108.1689165249958222206
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Jul 2023 05:34:10 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 509D8D75;
	Wed, 12 Jul 2023 05:34:51 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 676353F67D;
	Wed, 12 Jul 2023 05:34:08 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH] poky: add Debian 12 to supported distribution list
Date: Wed, 12 Jul 2023 13:34:04 +0100
Message-Id: <20230712123404.3030888-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 12 Jul 2023 12:34:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13106

From: Ross Burton <ross.burton@arm.com>

The autobuilder now has a Debian 12 machine and it appears to be working
fine, so add Debian 12 to the supported list.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index d1375276246..c72df162d08 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,6 +41,7 @@ SANITY_TESTED_DISTROS ?=3D " \
             fedora-36 \n \
             fedora-37 \n \
             debian-11 \n \
+            debian-12 \n \
             opensuseleap-15.3 \n \
             opensuseleap-15.4 \n \
             almalinux-8.7 \n \
--=20
2.34.1


