Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D5FAD58CC9
	for <webhook@archiver.kernel.org>; Tue, 24 Mar 2026 22:33:25 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9789.1774391595695910752
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Mar 2026 15:33:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=EDAWZpXA;
 spf=pass (domain: smile.fr, ip: 209.85.221.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-439b611274bso3207126f8f.3
        for <poky@lists.yoctoproject.org>; Tue, 24 Mar 2026 15:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1774391594; x=1774996394; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1cGNWBkAC4faeS9sPxGIey0H0mDXOPeaeThibcyoxfM=;
        b=EDAWZpXApG0nv79fK6WmBToTZX3fKDZFSNe1z3TTy5Q7AbEPTHs0eKHO3lKj0z+sVy
         kSrZhTwUATrf6p4ImvihTYVVxRIsA91AiUGtOfg3B4tNRDd2bgpkm4UX8jTBLRYiI/dw
         fhCOtbbOlEew90Sl25oOndQEWiqf3HmPSCnfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774391594; x=1774996394;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cGNWBkAC4faeS9sPxGIey0H0mDXOPeaeThibcyoxfM=;
        b=AtiyE6+IvGlYxXpNMIq8+ZKdsbxHfZe3z0ZniJVtxSSY6UNmSnEZIEm3GLG208FG05
         shDLAdenC64Z94HYUZOVwxhaOJWnLH4odQvhV8MMtOj55BGgaKK4kPWybL6eGh3h6khc
         H/dYytcCRLIYH2AdiAThqMw2R/rFXh2S2Hgc2CDrc26r+lSZw2BGn/JFq7K5X5ZH/7XI
         0hYdEU3Rup2apLmW/8CI+VVSKNuDZzMry3O3V99+yLJCmB4SD8u0GdPdg1tuzShafa5c
         /7A8vcEdKJAYjj1t1GlG2fq8gE3LOqPIgPUndr+uBbgkSpPuRwdtagPHAph9ffiJNtaa
         GBNQ==
X-Gm-Message-State: AOJu0YwqvekZVZ4vsQL/PXSuLjS1YE9DmWBdacIWkOgtsy7aHE6n7ISJ
	8eXhg1QzMbCQ1zq+Kv6dPj1SsbFKltjm2gtHxAoQNsDNOsl4btrLd9L/KLfeKxz0bdXRV5JgS/v
	6V+LR
X-Gm-Gg: ATEYQzxfrZ2JWc7XZ+fDMyYbNAtp+eebKGEcCx8vVj7kz3mW18c8x5Ih4wMnWkG/69Y
	SrsTtF6o8x0iP9h4dV2zwbOWFz1rqv4K/yD2kbp+EYWg4VeiuLu58xfsKSbzkh/GoROOUrRSrNP
	aK5YUJookE6WnCTYNJyAQb7t4hEMP8pYOuWTuzax+jK84G/JMDlCYh1KCXHdyZwgkJcP9NPTqVw
	DZ49TLqrkxRo/Jfr82KFoey2Cv6xumnR3KKihmPWh/amzodiIUOC3uWZRrGq9LkybIWVMSvmyYM
	Oq+KISSthw3VLsBmPihl1Tqy/1H5mTOl8MxyY1+MqNEAJDscH5OkpRBddMLd01AGUEteFDN9mDX
	VgMSAzG9XQOp27P9ckV7ErWXWgXLDZwuJJLnVtbrw81LzJHEFUiKvrzK/Z9TUNA4EqBUMZT51Sb
	sYBHvT26n9/4pG/rtre6UJiEELQ25ZEQcJJmbaFPrwvRh/xPGNr1Hv1vCOYuDMvYHBDZL4RdiO8
	Pk9tKj8pCE34kwW7vD5iyNW4851e9joYeFrTg==
X-Received: by 2002:a5d:5f47:0:b0:439:b2d9:cf35 with SMTP id ffacd0b85a97d-43b88986aa6mr1594781f8f.8.1774391593734;
        Tue, 24 Mar 2026 15:33:13 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b646b0d3dsm39510469f8f.16.2026.03.24.15.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 15:33:13 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][scarthgap 0/1] Pull request (cover letter only)
Date: Tue, 24 Mar 2026 23:33:04 +0100
Message-ID: <cover.1774391439.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Mar 2026 22:33:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13867

This is the patch from the last patch review:
https://lore.kernel.org/poky/cover.1773966064.git.yoann.congal@smile.fr/T/#t

Passed a-full on autobuilder (with an AB-INT):
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3502
* qemuarm64-tc failed on what look like the bug 16058 – AB-INT: rust do_test_compile/do_install segfault
* rebuilt successfully in https://autobuilder.yoctoproject.org/valkyrie/#/builders/5/builds/3396

The following changes since commit 94d19f9d8392f8a125764df0f8eda04205c7e76c:

  poky.conf: add fedora-41, rocky-8 to SANITY_TESTED_DISTROS (2026-02-28 10:22:25 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-next

for you to fetch changes up to f87e76ef6bd6745038616876af07c6a74b49f8c9:

  poky.conf: add Centos Stream 9 to SANITY_TESTED_DISTROS (2026-03-20 01:13:41 +0100)

----------------------------------------------------------------

Yoann Congal (1):
  poky.conf: add Centos Stream 9 to SANITY_TESTED_DISTROS

 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)


