Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B28BCCD1BF
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 10:50:07 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.web11.5382.1761648600822383474
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 03:50:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=A8OvkLZh;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 0EE154E41393
	for <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 10:49:59 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D8809606AB
	for <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 10:49:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C658A117A1E9F;
	Tue, 28 Oct 2025 11:49:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761648598; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=scIl3WDal6BulLtADklFkG1TtYJbg9QJu5CLcSfPVRs=;
	b=A8OvkLZhmn4iRJ3g2KXpZNKVOhn1O/TMEiEm0JdC3UukwqLRPiqUBW22hkwp4QYh2yG9rg
	VtKOv9AdFWpXReX4YFPCqqtF+eMDhTtABCSMXBqbS+1Bk4vLY/7DzJGNRPH8TO2FRyWj2c
	ym2CZIxoP7xqQkv0cm6wMD0qN3oierWw3yOSAzyz3DTMYsQUfKztAXeWMkxHiV+zxPhJqW
	b+j1Dr89CkxWS225RlObJ3NiCeOqcLWA1WOSfBl9QCM9Y7l5paLB7Eb5RR7aJuZp8Jhiln
	3MfJpF6K61tZK8CSYsVwjtdlliNYA00VH17anudoLQ+Tz/XaKGuYTJYXCy4Hrw==
From: Antonin Godard <antonin.godard@bootlin.com>
Date: Tue, 28 Oct 2025 11:49:47 +0100
Subject: [PATCH] meta-poky/conf: bblayers.conf.sample: move meta-yocto
 repos out of oe-core
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAMqfAGkC/yXMQQrCMBBG4auUWTvQRiPBq4iLSfqrI7WGTCtK6
 d2NuvwW7y1kKAqjQ7NQwVNNH2NFt2koXWW8gLWvJtc637Uu8Jx7mcAxDvJGMTa55wEc4m6fZIs
 g3lONc8FZX7/x8fS3zfGGNH1vtK4fXKGpGHoAAAA=
X-Change-ID: 20251028-update-bblayers-sample-8b46ca3e8a55
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Antonin Godard <antonin.godard@bootlin.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1761;
 i=antonin.godard@bootlin.com; h=from:subject:message-id;
 bh=G+2x6v1UHpkQ/nOCTC8ozfiMYbggb2L4U1ncfKqLEcA=;
 b=owEBbQKS/ZANAwAKAdGAQUApo6g2AcsmYgBpAJ/UD5r7SYxalzeAcsrVfDSbkqiZdFKlULbk2
 zhsxRigz2yJAjMEAAEKAB0WIQSGSHJRiN1AG7mg0//RgEFAKaOoNgUCaQCf1AAKCRDRgEFAKaOo
 NrfCD/4+Ugr0YX3jVtc1s2UgwVI9uYSqGYYcZ83MYeS0aCTy1fKmJhEsrzvUSwi1Gj7PK+a5KDb
 UV4FifvoeW+M/Go1sfrqXDBzeRNFgjH1D9OdhZLRLCerVzVzbypvU/9Xr7KZMIzdHhLkkxTP5Fg
 yjr+zBH0p3QSzuVPH0qdvzE7qYRE9UW+hNnobn02qJmxtkr/OXjjIdlSDhguhv3tB3xW9L5YQoV
 cQhzNBbS9cSFKaTNwERw1Un9E77blLklOBvElbdCfYiPtGNCAHKtS9SfB4Zstz9lOO5rHDsUXcb
 Qpzh5afu/wOS87YrsbS8Nt9+6AWgHFvJeokLRiQ3HbirGGrE+cJI9ELJh7YLdq6yWcQ6y2qmDYQ
 g1uJiLMkIuEF+IMwmQztq7QUq3c02kjiXZcjj0evQVvFHsGIH8rxog7n/gsqZXuBEpdGIm1tOt/
 tTc4Np3lIR+6wiIJkuWEZ7ULAYTQ3pWNOdzQdU4iL0YxvOPa92YLvm1jI0yVUOt8FfdoBfsxYkb
 PDstW53JyUcHFgMtxWTm0Z2z6EvtiMIAfyiK7hJW+Z+W6G/tsR1dzxm+8ctaYuwem6ESw40dPDI
 slIDqfLJuQNfFIIX40cDmJgm1z4RNnGVn3y63gba/mLoYi4AXmx/8DjqBe8UhNrac1PYvu1sW1G
 zxysAr11Gk1Ao/A==
X-Developer-Key: i=antonin.godard@bootlin.com; a=openpgp;
 fpr=8648725188DD401BB9A0D3FFD180414029A3A836
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 10:50:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13774

Since the Poky repository will stop being updated (in favor of
bitbake-setup), the meta-poky and meta-yocto-bsp are no longer part
of ##OEROOT## by default when cloning the OE-Core and meta-yocto
repositories separately.

As a consequence the current bblayers.conf.sample file will not work
unless a user takes the extra steps of moving meta-poky and
meta-yocto-bsp out of meta-yocto and move it in openembedded-core.

Instead, make the assumption that meta-yocto has been cloned next to
openembedded-core with its default name ("meta-yocto") and update the
paths accordingly. This layout is the one provided by bitbake-setup.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
I'm also in the process of creating a document in yocto-docs that
describes how to build the Poky reference distro without bitbake-setup,
and that uses this file to setup layers. So this layout will also be
reflected in the documentation.
---
 meta-poky/conf/templates/default/bblayers.conf.sample | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/templates/default/bblayers.conf.sample b/meta-poky/conf/templates/default/bblayers.conf.sample
index 8b1cbdf..d34b552 100644
--- a/meta-poky/conf/templates/default/bblayers.conf.sample
+++ b/meta-poky/conf/templates/default/bblayers.conf.sample
@@ -7,6 +7,6 @@ BBFILES ?= ""
 
 BBLAYERS ?= " \
   ##OEROOT##/meta \
-  ##OEROOT##/meta-poky \
-  ##OEROOT##/meta-yocto-bsp \
+  ##OEROOT##/../meta-yocto/meta-poky \
+  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
   "

---
base-commit: fe65e142d0d9ba0e51ff9175ffa82e902f982a20
change-id: 20251028-update-bblayers-sample-8b46ca3e8a55

Best regards,
--  
Antonin Godard <antonin.godard@bootlin.com>


