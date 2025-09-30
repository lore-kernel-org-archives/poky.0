Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D988CCA468
	for <webhook@archiver.kernel.org>; Tue, 30 Sep 2025 11:13:50 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.web10.22940.1759230823471012026
 for <poky@lists.yoctoproject.org>;
 Tue, 30 Sep 2025 04:13:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=T4FAg7Sv;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 0BCFC1A1013
	for <poky@lists.yoctoproject.org>; Tue, 30 Sep 2025 11:13:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D1571606E4
	for <poky@lists.yoctoproject.org>; Tue, 30 Sep 2025 11:13:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 45FD3102F17D5;
	Tue, 30 Sep 2025 13:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1759230821; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=9LDbZJOFhmpBbsnOrMQ0FCVU/jCDPSfSjARUS+Zp8rc=;
	b=T4FAg7Svq+D351voBQkA2WdRnETzh9gkQ+1Y7nlpCZA6idp/zKN5UZ/SRrV6haZWRekhD6
	BiXH+Y4+C3oMghi7EmLdD9md4zmL5RbDlQYtgc4fP2mMfZk6nob8wmNkCpCl3lvYI7VRye
	k17lPhpbKbpp8mEve35r8R2Ql3tJNUKmU9h1QvV0M6dNLUaWMhcDKkpVRcl5Rshi6tiSnm
	Ne2rtznav7KkGT0UnQrw7ZHAroXWfZ0NLzHvL9nWZakeDtxGwBVfrRZuorT4As8anWNceD
	S3TLvc/qb3eBjfaWdHLJVr7bbMxrVrfW3AC8u6viHLUWJ4UrTKjqmlOUh0V4vw==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Tue, 30 Sep 2025 13:13:34 +0200
Subject: [PATCH] poky: update supported Ubuntu distribustions
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-mathieu-ubuntu-2504-v1-1-8c62845f30a8@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAF2722gC/x2MywqAIBAAfyX23II97PUr0cFszT1koRlB9O9Jx
 xmYeSCQZwowZA94ujjw7hIUeQbaKrcS8pIYSlFK0VcCN3Vapohxju6MmGyNszDaKGla2TWQysO
 T4fu/jtP7fvqWU8hlAAAA
X-Change-ID: 20250930-mathieu-ubuntu-2504-b0fcfa5f7586
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759230821; l=1065;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=A1JDdl18NZS0No9Pfb4695vWSxw0IvRXYx9rQ3mqwUI=;
 b=Y6t5yEZUvIuN79XVU3Z+pCRptMUig63oXnEBcKxtzasdC0J1iicpBho3xq3OlG7SfZr6VtrTu
 QanxPi4wBRtAi+QXYfRtZxgrgM6uy3Md5rSTRcLQlDAd+EGaLxMCKWe
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 30 Sep 2025 11:13:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13758

Ubuntu 24.10 has reach its end of life and is no longer supported.
Workers were removed from the autobuilder and replaced by ubuntu 25.04
workers.

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 3a17748fdbab99c88bfae57758ccea70a109069a..29b529ddb8d11e8108835ae1c9cdafbd309190cb 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -35,7 +35,7 @@ SANITY_TESTED_DISTROS ?= " \
             poky-5.2 \n \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
-            ubuntu-24.10 \n \
+            ubuntu-25.04 \n \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \

---
base-commit: db24e48498b2d40131b871f6eafeb7a67da343f0
change-id: 20250930-mathieu-ubuntu-2504-b0fcfa5f7586

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


