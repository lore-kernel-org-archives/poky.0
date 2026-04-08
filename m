Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D34C1073CA2
	for <webhook@archiver.kernel.org>; Wed,  8 Apr 2026 11:47:26 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.104549.1775648835877660319
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Apr 2026 04:47:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@bootlin.com header.s=dkim header.b=rAycr6pe;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0FE0EC5B1AB;
	Wed,  8 Apr 2026 11:47:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BE09E603CB;
	Wed,  8 Apr 2026 11:47:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1DE3C104500B6;
	Wed,  8 Apr 2026 13:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775648833; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=de3B28w5THBt5NAKvRXVeAOXtN/Sf2GJnjfFx9c7W4s=;
	b=rAycr6pen2JigE8va1bUK5HmRwqipg+MjMrdC3wHX/1SWpV9fanuA6JXc3c1KFNah0cMVm
	sisStriDTIEFfV8WOLGT3xJ1b3ggXNrMCOeFCHceZXh58sY226XPWt1UNx+kxaMmIm6mrk
	DUzrd6HLMJtNbYymIAwcOxICyaISf9SJ3IuM/4rv3iJW+MOGFNyTWpthubYBzBYux57360
	k01EbgW3NUFtc1dU3ItBL5iU5moPk0BGW4TbUKbAPJtxGWCE+MBFSxI6PQBPl2jLb2RLoR
	OjUq0c8RyG+uDJyR8SakugzMsgkxNOIDgWo9Sx7lvTxFK+YwJpRzabrS5WP/nw==
From: Antonin Godard <antonin.godard@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>,
	Yoann Congal <yoann.congal@smile.fr>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Antonin Godard <antonin.godard@bootlin.com>
Subject: [whinlatter][PATCH] poky: Fix CentOS Stream 9 distro name
Date: Wed,  8 Apr 2026 13:44:54 +0200
Message-ID: <20260408114639.453987-1-antonin.godard@bootlin.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 08 Apr 2026 11:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13886

From: Paul Barker <paul@pbarker.dev>

CentOS Stream 9 reports as `centos-9`, not `centosstream-9`.

On our stream9-vk-1 autobuilder worker:

    $ ( source /etc/os-release && echo $ID-$VERSION_ID )
    centos-9

Signed-off-by: Paul Barker <paul@pbarker.dev>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 2ed5aa3ac9eb7082b2534f12fb6b2f7fc3dc4bee)
Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index c09bff13b0..e50d9ea1df 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,7 +41,7 @@ SANITY_TESTED_DISTROS ?=3D " \
             fedora-40 \n \
             fedora-41 \n \
             fedora-42 \n \
-            centosstream-9 \n \
+            centos-9 \n \
             debian-11 \n \
             debian-12 \n \
             debian-13 \n \

