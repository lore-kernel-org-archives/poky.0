Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF2BECD98DE
	for <webhook@archiver.kernel.org>; Mon, 15 Jun 2026 08:07:46 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.124922.1781510855748033901
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Jun 2026 01:07:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=px7hZpPx;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 72572C2BB30
	for <poky@lists.yoctoproject.org>; Mon, 15 Jun 2026 08:07:37 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 6DE0760015
	for <poky@lists.yoctoproject.org>; Mon, 15 Jun 2026 08:07:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2A615106C92AC;
	Mon, 15 Jun 2026 10:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781510853; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=SDFyLAFMGj8MliLJ0GciaKXbmpfgaF7Y2c7weoR/gHE=;
	b=px7hZpPxfmz/kuio5BvTpvPlLCE1l4vI/R3flTuxwyIrgKvEZOf0M0Ai06NKTyIctZIZif
	UtNafc3XNJ/jTjIbOqWbdvZzBfuZLI+JXKHiE097+6CdH1L/JVK5E9Pylsr/E3VYQZmWMD
	Q5HEfyhMmPrep2gubFFkQKEJ0KL6pq1bMY1v9iiR4k1YGUeEjt64lxyfRvcl0QTuZEUh9E
	f86IwzTbq/I7T9hab7gQjDzlhii/MEO7YMz9Tum5epqVlt7WOH+y3sgMGPIwBa6hwizThJ
	PzUhQ+OwyoSB9s/u1zo7iQnsOGuzuraisv1/C/rOFiVpmEzvo2tEGTM7qp6ofQ==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Mon, 15 Jun 2026 10:07:29 +0200
Subject: [PATCH] poky: Remove fedora-42 from SANITY_TESTED_DISTROS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260615-mathieu-fedora-42-remove-v1-1-543c4bd259a3@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAMCyL2oC/x3MQQqDMBBG4avIrDugow3VqxQXoflTZ6EpExVBv
 Luhy2/x3kkZpsg0VCcZds2aloLmUdFn8ssXrKGYpBZXu+bJs18nxcYRIZnnTtgwpx3ct728HDq
 EKFTynyHq8V+/x+u6AY/M6zVqAAAA
X-Change-ID: 20260615-mathieu-fedora-42-remove-939286e4edf2
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781510852; l=875;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=XDsIzZ+VSe5mYyhEtbewh2IoMl4mRmGylfKzhHg/Cg0=;
 b=5dq0PFK7t2xi9EOCd6nYqFouEwyvJlorn8WsV5JAxDgXoMtVOlLZj4iebrZaGY7aWMHaScot1
 pEySbmpibrxBdI4N3BAZ81V6NEaanH948EPc6qT1GWyRKt0FiaKkGqR
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 Jun 2026 08:07:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13924

Fedora 42 is EOL and is no longer used on the autobuilder.

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 98cad527c361..55d224d564c2 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -37,7 +37,6 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-25.04 \n \
             ubuntu-25.10 \n \
             ubuntu-26.04 \n \
-            fedora-42 \n \
             fedora-43 \n \
             centos-9 \n \
             centos-10 \n \

---
base-commit: f49de2f33e37ca971d64215cc1a3669312e1e7c3
change-id: 20260615-mathieu-fedora-42-remove-939286e4edf2

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


