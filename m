Return-Path: <mathieu.dubois-briand@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 209F5F88077
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 06:48:32 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7577.1776322107995043465
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Apr 2026 23:48:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=zexd6IB0;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: mathieu.dubois-briand@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B8C974E42A18
	for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 06:48:25 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7DA955FDEB
	for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 06:48:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D73831045A0EF;
	Thu, 16 Apr 2026 08:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776322104; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=3NyD9duhtbvXpDSRvotVUTYAU4FT92ffsbY/hk/OcL4=;
	b=zexd6IB0+K4QNcA5WvI9DECqtgCXPTx5u9j21wC77l/wwTe0l9hwK/UlRoGhSCLE5WtUjJ
	UeowDuHxo5LaLMA2jbCtqX+9i+FhGSEECOSYzv1lE9a5jBFvSXwhsu6/P10CDnFjCsS/S7
	9V1RVjPSa5QsPaMyxou+mPqGOZNtdm0mclYvUb1pbCaLqoPIn3WBa3D4mNr+k3QF/XvueR
	veXDzLvfr0CfKx98UbDFMSKY/2aFUsgnbvUDzBwWiW2VQcvZEbejmt5tECXZd0LfEnXOpd
	b/7HLEUKQKUGX+1I4HRIw5tIlMD0YMYFXKKLkE5RhlVcPrXee2VOSzic22cT/g==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Date: Thu, 16 Apr 2026 08:48:06 +0200
Subject: [PATCH] poky.conf: Add Centos 10 to the sanity tested distros list
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-mathieu-centos-10-v1-1-9fe039080510@bootlin.com>
X-B4-Tracking: v=1; b=H4sIACWG4GkC/x3MQQqAIBBA0avErBsYRQ26SrSwmmoWWWhFIN09a
 fkW/2dIHIUTtFWGyLck2UOBqisYVx8WRpmKQZN2ZJTDzZ+r8IUjh3NPqAg1GTt5SzzYBkp3RJ7
 l+Z9d/74fuSdok2MAAAA=
X-Change-ID: 20260416-mathieu-centos-10-2045da50eb57
To: poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776322103; l=798;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=pHOHW9YOTAC4jzH+1w3/rf1qOuyOJPyDjW0QjkMDnGM=;
 b=tST8s9PJQ8Jnz74Lw/36+WQ5j9eBMtZYd+uumODe/Lxa9K6ZYD1ybpNiny/DZJNX1dSjxyyd5
 wBjROmlnZQZAD+qbnbmL8/q61wCp373wfCpY2y9cTrqhKrvOhmq17FZ
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 06:48:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13899

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index d86859ac9261..519cb4c750a5 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,6 +41,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-42 \n \
             fedora-43 \n \
             centos-9 \n \
+            centos-10 \n \
             debian-11 \n \
             debian-12 \n \
             debian-13 \n \

---
base-commit: 49cbb01d52521bfe557395c9ebfae6b1c162581e
change-id: 20260416-mathieu-centos-10-2045da50eb57

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>


