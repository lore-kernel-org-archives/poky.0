Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B2E1075281
	for <webhook@archiver.kernel.org>; Thu, 19 Mar 2026 09:15:42 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7082.1773911732529448532
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Mar 2026 02:15:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=v93RjvNU;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id EB5061A2F05
	for <poky@lists.yoctoproject.org>; Thu, 19 Mar 2026 09:15:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C22CE5FDEB
	for <poky@lists.yoctoproject.org>; Thu, 19 Mar 2026 09:15:30 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 428EA1045095E;
	Thu, 19 Mar 2026 10:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773911730; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=5j4BFldf51yuP1NpHoXI8FOZkWCE1fDwQdXEJNXeVMk=;
	b=v93RjvNUz5rCFlIWdAisazA1x0jTeUKS2gS3OPDkp6DO7yMVV/MOcQcho6dGK2mEYUWoFb
	UezjC4xq4/JcyjN8+CkkaU5O1qMVDhYL8eNmKIHT3Cug3tq88NCYO64p47KBk15SXjsbii
	1vTuiWqxZJZR8wAKj9/O5zy/z7MwGSNHvnFDLjm+P0NoS1wtA/LPLBCVbyIG+VskPU3Nba
	1Mwyhhe8TaUpOGDfzUqmMkYdjh6gqOup9l78zW7dgh5rc8j5PkI4UR21na7q1K7YKGooSD
	Ev8QG802q7mJlgkwtpNec/7yf/T3CBnbm5v/aFW7rsGzw+IvFdgaYQR0P8yX9g==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Thu, 19 Mar 2026 10:15:09 +0100
Subject: [PATCH] poky: Remove Fedora 41 from sanity tested distros list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-mathieu-remove-fedora-41-v1-1-996d227abe2e@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAJy+u2kC/x3MQQqDMBBG4avIrDuQxESwVyldhPhHZ6GRSSsF8
 e4NLr/FeydVqKDSsztJcUiVsjXYR0dpidsMlqmZnHGD6e3Ia/wsgi8r1nKAM6aikb3lZEM/GB8
 CkqOW74osv3v9el/XH1llBwxqAAAA
X-Change-ID: 20260319-mathieu-remove-fedora-41-c15360455ec2
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773911729; l=813;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=fGZRXG8nVP2EYvOjcV6JMx0UhwmmZ6LIqRIHxMeMqJI=;
 b=gUEXQx2gETS40d1wUmrnJm+epWsgXlUKJKx4Cl1hxBlWKiAyqH57bFcyuQ8KpVO6IP+QvJASE
 U7zODDL7o2AD7Xfa1VN63rk681s+kUgm1aFHg2W0DX1ecsaVEXW6lif
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 19 Mar 2026 09:15:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13864

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5e1dc28c25fa..2625268f5835 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -39,7 +39,6 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-25.10 \n \
             fedora-39 \n \
             fedora-40 \n \
-            fedora-41 \n \
             fedora-42 \n \
             fedora-43 \n \
             centosstream-9 \n \

---
base-commit: f4d45d0ff060a1ee411668b3309a6ff0b7e7d415
change-id: 20260319-mathieu-remove-fedora-41-c15360455ec2

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


