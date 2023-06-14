Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B701EB64D8
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 13:57:36 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.12704.1686751046230172513
 for <poky@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 06:57:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD77E1FB;
	Wed, 14 Jun 2023 06:58:09 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 089FA3F64C;
	Wed, 14 Jun 2023 06:57:24 -0700 (PDT)
From: ross.burton@arm.com
To: poky@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH] poky-altconfig: enable usrmerge DISTRO_FEATURE
Date: Wed, 14 Jun 2023 14:57:19 +0100
Message-Id: <20230614135719.170802-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 14 Jun 2023 13:57:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13086

From: Ross Burton <ross.burton@arm.com>

The point of poky-altconfig is to exercise popular DISTRO_FEATURES which
are not enabled in nodistro or poky out of the box.

With the upcoming v254 release of systemd mandating usrmerge[1] this
will become mandatory for anyone using systemd, so get ahead of the
curve and enable it in poky-altconfig now to shake out any problems and
ensure it is continually tested.

[1] https://lists.freedesktop.org/archives/systemd-devel/2023-June/049173=
.html

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.in=
c b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 32797525fbb..4c1eb552a3f 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -1,5 +1,5 @@
-# Add an extra DISTRO_FEATURE
-DISTRO_FEATURES:append =3D " pam"
+# Add extra DISTRO_FEATUREs
+DISTRO_FEATURES:append =3D " pam usrmerge"
=20
 # Use the LTSI Kernel
 PREFERRED_VERSION_linux-yocto =3D "6.1%"
--=20
2.34.1


