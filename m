Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45135D58E7F
	for <webhook@archiver.kernel.org>; Mon,  2 Mar 2026 08:34:03 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.156071.1772440434566619551
 for <poky@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 00:33:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=E0L+ySi2;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id E8CC71A2109
	for <poky@lists.yoctoproject.org>; Mon,  2 Mar 2026 08:33:52 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AF97C5FE89
	for <poky@lists.yoctoproject.org>; Mon,  2 Mar 2026 08:33:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B1C14103694E2;
	Mon,  2 Mar 2026 09:33:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772440432; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=AmbY24cEbDEjpWsTZMB9MSgYaD6dEvT2+pKzXIdL0JE=;
	b=E0L+ySi2LxNjMbUVbw0DJzsmw152o2aIOl6zjJwe1+nBlHrWf7Xh3TPieTW3qIS4Lp6h7q
	5CwAlVI1BMrvwxOzbPGGaNOFjccNC5l7JXkx3aS+8OUQXwoPCAJknvF7vva79IFc4Sk3PC
	y2tDQ4lFkZUuUti1TRhvUtYocqTUKHQsW6yWJME4NBz1X9Rm/IIjkhhoNTPy/PIpjbIfZS
	ydt0FHwjPUAr9nyVMfbi0HOpOcgf565ybV/XvvAHpn9Qtu0SqUABilP7mufTJLlgXjcWt+
	t8uLVWUnATNmRpZOZkgb03mOs3B+ZwSHmE8SrejY2Ao7V9BxxU/36TGbQKo94Q==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Mon, 02 Mar 2026 09:33:44 +0100
Subject: [PATCH] poky: Add Fedora 43 to sanity tested distros list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-contrib-mathieu-master-next-v1-1-0b49f66672d0@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAGdLpWkC/x3MSwqEMBBF0a1IjS3IR0R6K+JA7RetQUepRBHEv
 Rt6dDmTe1OCChJ9qpsUpyTZYoGtK5rXMS5g+RaTM6413jiet5hVJv6NeRUcpSlDOeLK7Dvrm9a
 G0HlQOeyKINf/3g/P8wLGQ6i4bQAAAA==
X-Change-ID: 20260302-contrib-mathieu-master-next-3813461ff83e
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772440431; l=814;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=fo3raBTrYVGPlnY6oi6AWJN5m1+yWpZYgWyP7d54VlE=;
 b=le4Bg0COzLxZjza1D0ziXzNyyIef8zLEImOLiYWjX+QJ/pKUbRvSvIluRY/BomXykcOvxspaQ
 74DBnbKcyRkB3FbMcaGaFRVps99/Hf14o5gBQ8D8Arb1XfXn3XQ8ijJ
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 02 Mar 2026 08:34:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13843

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 93759c73f44c..ae51c8c4cabc 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,6 +41,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-40 \n \
             fedora-41 \n \
             fedora-42 \n \
+            fedora-43 \n \
             centosstream-9 \n \
             debian-11 \n \
             debian-12 \n \

---
base-commit: 4d16760044bbcca6ffe5543b6c37123a022f3438
change-id: 20260302-contrib-mathieu-master-next-3813461ff83e

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


