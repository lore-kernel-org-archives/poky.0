Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE503FEE4E1
	for <webhook@archiver.kernel.org>; Sat, 28 Feb 2026 09:24:18 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.116172.1772270650241881083
 for <poky@lists.yoctoproject.org>;
 Sat, 28 Feb 2026 01:24:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=zTakMIjb;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-439a7b48df2so243262f8f.2
        for <poky@lists.yoctoproject.org>; Sat, 28 Feb 2026 01:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1772270648; x=1772875448; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WFnfAIROYpNhrKJzzvsFQkCKXxNtTwsRwVBiCg/PqWQ=;
        b=zTakMIjbFN6/dIZycmyAHTGlVeaOKEJmFza8KHQd2UBjX6CfVV8wUpJcBaSqxFrbss
         BBF2A8M3nmUM0r9Z2H+DdiGgMMGfs0lolvkYT3AdnTVOPqDugNTBZEOmOe/AvhUyI8L5
         bPkxtSQNkkcbW9kmqBIXDLovJUeDs+FbWzu+M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772270648; x=1772875448;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFnfAIROYpNhrKJzzvsFQkCKXxNtTwsRwVBiCg/PqWQ=;
        b=Un2nJaKO/s2Qo9n7bSecXLVTgtDHEJWpM5WiTZGjLeF8agoyJpOZGGAPlTomLsrMVz
         atQj103GgYNNUt4j5tL/H0FcvGhCLGUTJXJusto4s8jFj0Advd44qwcrNekkuzxCW/fK
         0lW2f5xYdfEGszMldvnjhSPH0X9NAJIoOzQGtLbslotSiLwHHhbVv4MARMfPgi5y0j9H
         d5FCjWTdhrOTt9cfIovrjBpjTgmPCbmPLM9ppwEoz8t5ACXF5sCprtnAE9w8mKDxs5Se
         3HWXBhjzPdHRlwXi33ldw0DabbIdm7cqB1CcWyDI5RTlwpaBGa7/7zJz/a3BYCGbwocc
         stkg==
X-Gm-Message-State: AOJu0YzRzpQa/MCg7xuiiTRu2/jH2trNCVavQ8wbG7xq1Tjo3Nd9BUP4
	WmNLKrnSfRCxzj9sLeLcor5qlUhV5Nxxpibllsfr8hGaghDjxQDyGzJ/KxvFSoEPY+1A/4qvR7T
	CA8Uk
X-Gm-Gg: ATEYQzx4yMFn/Su0RiGrKOHU1wjeQSOrMO6oQ7nNERkBcSzPCHcZPlEReqOlfBeL/EG
	nz3b1kBS1sW1FGqNxW/ojyHwf3JfnRoOHnnklYdFD3oSt+kQ0LE4+vsgqAlzH5WbN5p5plHnk7e
	HDAB7HZh1pMU+u2YRbtnNMla9gdK1cJ+2Txxnv3DzE2Z2LT0ihqjr1YVwJ4E28ELSU+ypHaTm/4
	LeZQUwjSFan3b9UkZ+ZRPL8i0H3xbuD4b4z+P/elTukpUn86ZBNDbyKoHQ2IQcH1V2XUH0EvtrC
	Il0gZE6IQgs03dWGF8uHR1NbCVYiRsZD7blzWkS7b/vLcWSHz3mT5K2ssV78OE5x+MqjIaL4RJg
	j1iekdltaqorIWnMhK9zqOdZD/X2SV0p8c0v2p3IALeSP4DV8YrNAVHQGnZ6efnhMMB0bPzABIf
	/8U9HHFd72U68Vc59B/lcem8FP1pp3DcYU+zd8HKr3We6omfKYsYmiwkLygajRk32P/obLNX/fZ
	lJ3Db4gxLw9uEgYByU/NxNYyN/4ntLEN7NEb2M=
X-Received: by 2002:a05:6000:144e:b0:439:9605:7daf with SMTP id ffacd0b85a97d-4399de2d8afmr9999709f8f.55.1772270648303;
        Sat, 28 Feb 2026 01:24:08 -0800 (PST)
Received: from FRSMI25-LASER.home (2a01cb001331aa007f1b644d71d78354.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:7f1b:644d:71d7:8354])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ac9f3e5bsm803978f8f.37.2026.02.28.01.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Feb 2026 01:24:07 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: Poky ML <poky@lists.yoctoproject.org>
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [kirkstone][PATCH] poky.conf: add fedora-41, debian-12, rocky-8&9 to SANITY_TESTED_DISTROS
Date: Sat, 28 Feb 2026 10:24:00 +0100
Message-ID: <20260228092400.176007-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 28 Feb 2026 09:24:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13841

From: Yoann Congal <yoann.congal@smile.fr>

Those are already documented as supported:
https://git.yoctoproject.org/yocto-docs/tree/documentation/ref-manual/system-requirements.rst?h=kirkstone#n65

Actually support them in sanity check.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-poky/conf/distro/poky.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ae939b6d..d3f5459e 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,12 +41,16 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-37 \n \
             fedora-39 \n \
             fedora-40 \n \
+            fedora-41 \n \
             debian-11 \n \
+            debian-12 \n \
             opensuseleap-15.3 \n \
             almalinux-8.8 \n \
             almalinux-8.9 \n \
             almalinux-8.10 \n \
             almalinux-9.4 \n \
+            rocky-8 \n \
+            rocky-9 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"

