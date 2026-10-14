Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CC06CC6B1D
	for <webhook@archiver.kernel.org>; Wed, 14 Oct 2026 13:39:03 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13885.1791985135324560950
 for <poky@lists.yoctoproject.org>;
 Wed, 14 Oct 2026 06:38:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=uKKdIyrX;
 spf=pass (domain: smile.fr, ip: 209.85.221.46, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-48af4d4e61fso3011413f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 14 Oct 2026 06:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1791985133; x=1792589933; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GmYhNi0IDPJzAZqs31TtmOAyQJWryzyELycqbyyESkk=;
        b=uKKdIyrXAAylmZFCVMT0quwC3N57ofG32GCeI0CHhhd2o1S3qCM/DLuZ5Nn8LhkI2F
         X4nxGr0335nSs+1zrJ1iBO2toGFTsxLOer0HD8R6dnXId+bDWmTFKZytY1zoRlCy1TM3
         sLoMsooJLmbRpBobsqzOeLuseKqCvrhLFJm8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791985133; x=1792589933;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GmYhNi0IDPJzAZqs31TtmOAyQJWryzyELycqbyyESkk=;
        b=tATMk4dzs8AW5oRghLaTCWIvppzBGz9KMT7uxuWb/Tjis7auBYWAcbtKSCs7SNw5sQ
         E2G4DuzVXAZ43ZouG4gFm0wljy5p1I/rcMbHHnZGHoFAXSw5SCcQ3sn5l89yKYgikMXr
         hs2MquX1ebGk9gprWTBKebofiyHxHW9lCbd1HpTnc6Hq3j6S+K+Sk8PpvyLuJhOhgspo
         kEde6reZ1c8FGY1aqB4+iqTpx3Uhd8/x+WlGCOMybPpio0383CcSAEX6JhgcTv+2nKSE
         OtaPln0mht6dW7aGjTQUBbfNvqvid6+KeDJtiFAYMJc1bm7UYocMPJWR3SzCBABbB45q
         UeVg==
X-Gm-Message-State: AFq9FYJ8IdB/oVusbMAnysipcG2o7bHTF82oPYWnL81ATQsSa6EVIcZ7
	FneaFF9SSgbKPFhGYWnbZg7SoNmq3tirLwETpS98PzYFSz1kkumOlTIUNmG1l/E8yPlLPktW0vi
	G1bDx+pM=
X-Gm-Gg: AYBFou15unQyeb+ELpXXWZDdlqgv0RmTmVOIVfLW1NOaDHncV2H1FJxJ8It1t6Nfr/x
	37I7zQ9Wh+ybzgOJHt/ow2d219tHOL09DrnoiSBoBKVPl50rA9R46gdKXoSmjeoOgsBiH4mzxF3
	sf2SS0abhxb65u3l1nem1EJybwxQShP7/benb7NhW0RU+0Au9zPLJubZcZV8BUSbdltfanhz+LA
	ktETTSiMj4gDXRmQOnxBissK7kmiXJ8lvfzvgz7HZan6DjbQRksPr+Mq8yGQUxlyp/lQmEO4bI8
	D/KDIalOZF2q7f53P8aAibhYoXpDIXvvD4PF4y/TXS+KG46RA2p2T6lJsf1ITsEYHEnMGpAd0b+
	SEhOvoMPrn0N36JUOdUxAYeYEcK0ONviD1LtB6W4UueBu3dov+6pjkVFZwhPxc7sGm7vnXc4DJd
	Tsjgdcj9o8aWj+xSKdAOeKeIwMqGEAUvwoWSL9cL5wlf4Nv15IFAeFHjmH+MWxoSf8mUGcMpaF5
	glUVD9H/e8/fN+V4I4DCOtJGWnxFPWdHgqsVRzOv9OHpe6ZYxG9SvoUOTWtL9GRUp2APWBEM96T
	Gobm1g==
X-Received: by 2002:a05:6000:4814:b0:48d:db43:4ba7 with SMTP id ffacd0b85a97d-48ddb434e4amr15612780f8f.9.1791985133234;
        Wed, 14 Oct 2026 06:38:53 -0700 (PDT)
Received: from FRSMI25-LASER.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de72d2b13sm6915091f8f.55.2026.10.14.06.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 06:38:52 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][blacksail 0/2] Pull request (cover letter only)
Date: Wed, 14 Oct 2026 15:38:39 +0200
Message-ID: <cover.1791984944.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 14 Oct 2026 13:39:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13973

This is the meta-yocto PR that should have been sent with the related
OE-core PR: https://lore.kernel.org/all/cover.1791709419.git.yoann.congal@smile.fr/

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/4887
* qemuriscv64-ptest failed on:
  * 16422 – AB-INT PTEST RISCV64: python3 ptest failure (python3-more-itertools)
  * 15896 – AB-INT PTEST RISCV64: e2fsprogs ptest failure
  ... both known AB-INT issues that a similar branch passed:
      https://autobuilder.yoctoproject.org/valkyrie/#/builders/56/builds/2553

The following changes since commit 43946d08974e61361f6313ae348c5d87c12be934:

  poky: Update version to 6.1 (2026-09-29 17:32:18 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/blacksail-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/blacksail-next

for you to fetch changes up to d0119aa2eb77b985fcd33ac527d5c0287eb68e58:

  yocto-bsps: update to v6.18.54 (2026-10-05 11:53:53 +0200)

----------------------------------------------------------------

Bruce Ashfield (2):
  yocto-bsps: update to v7.2.8
  yocto-bsps: update to v6.18.54

 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_7.2.bbappend  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


