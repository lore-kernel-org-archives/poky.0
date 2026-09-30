Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D35D0CA5FB1
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 08:58:03 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9294.1790758673523299574
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 01:57:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=WFwNmB/s;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 358E21A107C
	for <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 08:57:51 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EFAED60749
	for <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 08:57:50 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0DB6910328EC1;
	Wed, 30 Sep 2026 10:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790758670; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=RN2yLoQF8qyJ+BteWn7IfBgWxWRRQbGKxND2f1X4VWI=;
	b=WFwNmB/sZqFTdKQxTIvbiwg4VtqmIxRr7uLAW7uJqawRr8+Q9yQQvd7kjqTuMvLQqz299Z
	IVsrTAmY9dnt4GXYJfMW4Z4kKmQQUKKCv486NCwN+SodORS77+0fPkSlzFiSb9nPq5EHzm
	h8OUO3XfPHVvaiZ09l4APbX6LUlehrwnXTehqMFmxPVRL1tZ2vUD71RkFEgAtGVmQ3wreD
	g7B3/vaLq1Rlr+pLAgUjPS2Q4yH3RGLfFmB5Ab/yc8ZQDUxNTXg/VMiLBPadUU9qYf3PHi
	UbY47weh6jCS6DwtnWgwIbgw0ZCPE5bNxYfW5/I34XW0mDQ3F9qoZ6+rJc78zw==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Wed, 30 Sep 2026 10:57:37 +0200
Subject: [PATCH] poky: Add fedora-45 in SANITY_TESTED_DISTROS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260930-mathieu-fedora45-v1-1-061d0ec59378@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAADPvGoC/x3MSw5AMBRG4a3IHWtSjwq2IgZVf7kDrbSIROxdY
 /gNznkoIjAi9dlDARdH9i6hyDMyq3YLBM/JVMqykV0lxaaPlXEKi9kHXSvR2hbKFJiMVJSyPcD
 y/S+H8X0/69/AVWIAAAA=
X-Change-ID: 20260930-mathieu-fedora45-8f8e5c1ebc05
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790758668; l=858;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=UK8Yp0SKM2/NgJL90lTN70KPtWTSXeGDbeWr/AS4FRY=;
 b=a6IZhL0S4oMzxHITMierMlvsi4/Gmmie7PsJBjF1mWr0K4gRfZDViWmRifIXI5t0+tdt4f1MO
 2JsZ4VeJ8o1BItWBQboM1m8GAdFl0ai4EyYdBVwXiUrQH8UBVQa0L6h
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 08:58:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13971

Fedora 45 is out and now available on the autobuilder.

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 96d668d52a55..adadb95615a9 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-26.04 \n \
             fedora-43 \n \
             fedora-44 \n \
+            fedora-45 \n \
             centos-9 \n \
             centos-10 \n \
             debian-11 \n \

---
base-commit: 01f504740bcfa42ff53f4b3341a0dcee275fa6bd
change-id: 20260930-mathieu-fedora45-8f8e5c1ebc05

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


