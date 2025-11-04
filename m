Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25E58CCFA00
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 10:31:52 +0000 (UTC)
Received: from mta-65-226.siemens.flowmailer.net (mta-65-226.siemens.flowmailer.net [185.136.65.226])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14728.1762252301415425095
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 02:31:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm1 header.b=kpx9qYaC;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.226, mailfrom: fm-256628-20251104103137476d4740ce00020753-6wtceo@rts-flowmailer.siemens.com)
Received: by mta-65-226.siemens.flowmailer.net with ESMTPSA id 20251104103137476d4740ce00020753
        for <poky@lists.yoctoproject.org>;
        Tue, 04 Nov 2025 11:31:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=Gsi1Mm6EynT0175Vp+ofHTkK9aSw9OyS1R6l2lBvyqc=;
 b=kpx9qYaCeu3vmp2psp/ontamn/hZqwpIWlyEBqgJdI+zx2+Foy5km6VYRNcH00HbcGL6Ui
 MlVZOOu9LrfFxcI5ONGHLq4pSYsW3478AmfVfejn3TNJfNtlm6ekmWXFmgEGVSbJI+bBS7yB
 FhqUzMcd2YdGdv9uBB2MNiOmRYQ1/LMm7xo1JfgqsUvIHsyNb1uEiGLeI421jF+yqc+SXlss
 u9GyUo7B3lYkQ4IMW3QgKpf5rJrBlNf2yAgwiyf4VQU497Kf9mw9QMESXEGpiDEZlleDfzgp
 MsR4ZrsAl4tzBTOqQ+MG8dO+/brFva4rlGvRbIWwI1866G9+GX5vniZQ==;
From: Peter Marko <peter.marko@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH] yocto-bsp/6.17: correct branch name
Date: Tue,  4 Nov 2025 11:31:34 +0100
Message-Id: <20251104103134.2610187-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Nov 2025 10:31:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13778

From: Peter Marko <peter.marko@siemens.com>

6.16 in branch name for 6.17 kernel does not look correct.
$ git branch -r --contains 459fdea93914f4db040bd8ebf8bce134a4cd6388
  linux-yocto/v6.17/standard/genericarm64

Signed-off-by: Peter Marko <peter.marko@siemens.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.17.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.17.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.17.bbappend
index 51b61b1552..603a967f2a 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.17.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.17.bbappend
@@ -7,5 +7,5 @@ KMACHINE:beaglebone-yocto ?= "beaglebone"
 KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 
-KBRANCH:genericarm64 ?= "v6.16/standard/genericarm64"
+KBRANCH:genericarm64 ?= "v6.17/standard/genericarm64"
 SRCREV_machine:genericarm64 ?= "459fdea93914f4db040bd8ebf8bce134a4cd6388"

