Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C4D21073CA0
	for <webhook@archiver.kernel.org>; Wed,  8 Apr 2026 11:47:26 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.104550.1775648836409438341
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Apr 2026 04:47:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@bootlin.com header.s=dkim header.b=aLi690bb;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id C4F8AC5B1BA
	for <poky@lists.yoctoproject.org>; Wed,  8 Apr 2026 11:47:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8DB38603CB;
	Wed,  8 Apr 2026 11:47:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9D48F104500C0;
	Wed,  8 Apr 2026 13:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775648834; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=gVq3V+Gans/9SK3F2APIcYJjoEYoRT25E5hjQvHfw20=;
	b=aLi690bbBV0yyAVRA7lIHrhzgOQNXarMhYpkaMLwteKe07VZkzUOcylsNnCedJ9DQuIlWi
	J6lwhUlHofdxu0XArMExAUYNvEsg9BubvwN2bX62VWR+Awqr46lyIa9oxf8FyWoRPAZV7N
	5zbtPwvBEgzHJst80TsTxyErddykOJcrneltl5jQCAgsHhGAbnUvA5xTrW4IDVkcOcxlfI
	TPupP7B1i6ZqIhmlWZBmQmfwMEJJIogm0MoP+2VVRCTdyZs7Lg3BUu2o/fbPXelA2hcGBz
	1sN7ZjFMJgUsOFGZIOr4Ua/9/85oa8cFzw09cBOp3np6H6fnCsgP4gSwRPruBQ==
From: Antonin Godard <antonin.godard@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>,
	Yoann Congal <yoann.congal@smile.fr>,
	Antonin Godard <antonin.godard@bootlin.com>
Subject: [scarthgap][PATCH] poky: Fix CentOS Stream distro names
Date: Wed,  8 Apr 2026 13:44:55 +0200
Message-ID: <20260408114639.453987-2-antonin.godard@bootlin.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260408114639.453987-1-antonin.godard@bootlin.com>
References: <20260408114639.453987-1-antonin.godard@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 08 Apr 2026 11:47:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13885

CentOS Stream 8 and 9 report as `centos-8/9`, not `centosstream-8.9`.

On our stream9-vk-1 autobuilder worker:

    $ ( source /etc/os-release && echo $ID-$VERSION_ID )
    centos-9

We don't have running CentOS Stream 8 workers anymore, but from a local d=
ocker
container:

$ docker run --rm -it quay.io/centos/centos:stream8 bash
[root@c33732bb804a /]# cat /etc/os-release
....
ID=3D"centos"
VERSION_ID=3D"8"

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
index 2c2e7bedc8..177a637ed4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -43,8 +43,8 @@ SANITY_TESTED_DISTROS ?=3D " \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \
-            centosstream-8 \n \
-            centosstream-9 \n \
+            centos-8 \n \
+            centos-9 \n \
             debian-11 \n \
             debian-12 \n \
             opensuseleap-15.4 \n \

