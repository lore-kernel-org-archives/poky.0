Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E05B5D2ECF7
	for <webhook@archiver.kernel.org>; Tue, 20 Jan 2026 13:18:15 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6133.1768915094113390211
 for <poky@lists.yoctoproject.org>;
 Tue, 20 Jan 2026 05:18:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=HIw4e5XE;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2E5944E420E6
	for <poky@lists.yoctoproject.org>; Tue, 20 Jan 2026 13:18:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id F2BAF606AB
	for <poky@lists.yoctoproject.org>; Tue, 20 Jan 2026 13:18:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 57B7310B6B439;
	Tue, 20 Jan 2026 14:18:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768915091; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=azmIHrVEx3wuRBpi+m4e8mrfop6MQx6edqEmc+2nHi4=;
	b=HIw4e5XEgETriFUHsDqGPT+CUYud1Pqw/wysCbveThEwSZA+vDT/2V1R2OnGD5LXpvZOt2
	EccjBYSkVk/V7ReU8LcJznEAZRM91ObGFbo8RYKuIw3H4daNtEsr+MqJE7iSyRkeOFF3vq
	JhoXB8cD6bfVWtSfhR/EES5JtbVXTjvJPebA6eLKJE5YQmFyIZ/9hyiDWYrAsGpchWwkxR
	fMkXFEwvhJaGEBdNs9JChCpdTwBThiNX1mZ+n6v3+rheDFGWHyKdUb3Ryx5yxrIOkbI8QG
	22xSaUpUrnaAkbruGsiVn3Gc7YoZrdO4pqrdU14yC6dYyh4Vx9RXpGIRgWtUYQ==
From: Antonin Godard <antonin.godard@bootlin.com>
Date: Tue, 20 Jan 2026 14:17:51 +0100
Subject: [poky][PATCH] README: switch to released documentation URLs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-update-readme-urls-v1-1-c622c6a74df8@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAH6Ab2kC/yXMTQ6CMBBA4auQWTsJbWxjvAphUdtBxx9oZqiRE
 O5O1eW3eG8FJWFSODcrCL1ZeRorzKGBeAvjlZBTNdjW+taYI5acwkwoFNKLsMhT8eScM37wPlo
 LNcxCA39+067/W8vlTnH+nro8PZYetm0H0mBRvHwAAAA=
X-Change-ID: 20260114-update-readme-urls-855516f66c22
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Antonin Godard <antonin.godard@bootlin.com>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1145;
 i=antonin.godard@bootlin.com; h=from:subject:message-id;
 bh=3nrVycfPmklf8yGgq10IruEAV8mSYB8PfEro3Qey2xM=;
 b=owEBbQKS/ZANAwAKAdGAQUApo6g2AcsmYgBpb4CSUGKOCkSJdSzYVa0qrrPERtNbwvhjUWjui
 SGVVNmFrXuJAjMEAAEKAB0WIQSGSHJRiN1AG7mg0//RgEFAKaOoNgUCaW+AkgAKCRDRgEFAKaOo
 NmtcEACL2oUx+rxmNaMFWiVW1EGO/lR+ixwstFAj1k9Srto/hdi3CNH+Bbe/ZzOo/93bkGDJLXA
 1E5gfsqQbCFmSGOErm0YW/jNuzgJG91MwZG2OXGbC7Eez/JOePrxjIyy2Ygxfrd2FxaYFkOXTxC
 P4xmc1/vmpP1NIUIy1C6OMAhgizNsIotIdpNYniIzh9i4vMxlHHjhTb76A7N5d5izHBjbhV/h2E
 gDccxBLzmJvrQ33/jUPUxzFS+NrXsxcLYAjohWV/OlD1NXIAtLw3pHDrbXxD6s54SnZQqcgpvaI
 Qj6xXID8Q71wkWKxMMY4XmcGmcg2VGzkM8odIh3db1hfna1wuYDSbwlWAp8azl6K5bYgoFP5EWW
 fMX1ULWpEKM2Xj2vEW1CUkbLuu8xaCNID/rDW2wgmk7wvYDQ8Pwk0PiN2gqWoj0tHrLj5JX0ufo
 991sijtOumbGtY8I+3rc0HwTY4H/fWqw8SCy99IbHxhk1eFLMcXPKwUW1t18SWFmWRvf3Ew9wt/
 QhRAKKBHd6UyZwNKHniEV82hnb2B9wE60LDQAt8zXkoyg+bKU64Pr5FcBfMlM0dPPjPXQcKqcBo
 SyZ1BOveE5B0fra9rcfFYGcHn/h/lr3IFpc2rNoa19SZTKjl0VAu6jOs5nQx+i5VjsdKTtKaQmg
 JvDOvpiFFPSn0zw==
X-Developer-Key: i=antonin.godard@bootlin.com; a=openpgp;
 fpr=8648725188DD401BB9A0D3FFD180414029A3A836
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 20 Jan 2026 13:18:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13825

Update the documentation links to their released form, as those now
contain the bitbake-setup and poky-manual-setup instructions (since
Whinlatter).

Also: long live Poky!

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 README | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/README b/README
index 7cf111ed147..61267d7acce 100644
--- a/README
+++ b/README
@@ -4,11 +4,11 @@ You can either:
 
 a) switch to individual clones of bitbake, openembedded-core, meta-yocto and yocto-docs
 
-   https://docs.yoctoproject.org/dev/dev-manual/poky-manual-setup.html
+   https://docs.yoctoproject.org/dev-manual/poky-manual-setup.html
 
 b) use the new bitbake-setup
 
-     https://docs.yoctoproject.org/bitbake/dev/bitbake-user-manual/bitbake-user-manual-environment-setup.html
+   https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-environment-setup.html
 
 You can find more information in our documentation: https://docs.yoctoproject.org/
 

---
base-commit: 485d9c126adad5764cca8d27fb437be7855b484a
change-id: 20260114-update-readme-urls-855516f66c22


