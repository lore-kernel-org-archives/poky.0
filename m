Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CCEDC531D0
	for <webhook@archiver.kernel.org>; Thu, 30 Jul 2026 08:33:58 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6945.1785400432163735952
 for <poky@lists.yoctoproject.org>;
 Thu, 30 Jul 2026 01:33:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=djfY9leJ;
 spf=pass (domain: smile.fr, ip: 209.85.221.41, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-47f7027ca11so1205742f8f.3
        for <poky@lists.yoctoproject.org>; Thu, 30 Jul 2026 01:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1785400430; x=1786005230; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=060YYlYlAySbx1oOuRZ2FCCu1X5bSPdxiQ9zSX3DiSM=;
        b=djfY9leJ+Tu4tAcrOSqNMkE06gNz+IlNjATaFlL3NkDwyEkn8ee0fls4IGsAYVr66p
         txZOxoerPzSWty/YK0kUJROOc6XKrh8U5Ocxch0ArksG2gZFYjf4RXAd/g9kakD/IfUH
         ZDHSe3w47On3wR0hR5Hpkryjf/i+tTH4KbYIE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785400430; x=1786005230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=060YYlYlAySbx1oOuRZ2FCCu1X5bSPdxiQ9zSX3DiSM=;
        b=d0uD4SsimTfbEcgXAg+0JdJmPjrdaH1c+cBEbFA5yz8LiN86uGHOO6P3NmwQqiEVks
         93xOqWlFK5lSQleaVGDSqYhtXf1DDcTs7WKXFVo+oV2rgTlMxIPD19mWJhRttviuwNtz
         VV7w0NAN3r+j+ReKzEWFdJBWR4dL/dhGl6mvixcqewj1mUrGKEog9E4ET4LkcKwWV0Lk
         CTF96ybz7R9JXbbANsFXtn2QAkxnN5Y+sKJMakf1FJmzMNJXc4fO7rtTFny6RxJ9uxFN
         +O72culX+zu9KbI0h5fx2ym1Pjo6Jnjsd6QIyheUpPeUy3qMBcG/Nz3MjtKI2eDEAv05
         Qqaw==
X-Gm-Message-State: AOJu0YyzfLYM6xk+Xr2F/6e56JP9YBdMRAZunaoc1esoQVL/qVdlFvSt
	JroiLnYDQC3G1oeW5o7TblQbcJW8IDjkVIWnCne2VbQ+m4HpA2QMaCL8ZCoxUNyyC3dS7MOLs/+
	35xkvhzE=
X-Gm-Gg: AR+sD112wNoSCZX8oBnJ52NXgnje3LOFrsjDa5HExkRjsAZeTN5M0uAgw7XIXO6aHbp
	RCmjKTmiJ7sppLG3DcynX589q/7wadz4bYgGVwnPJeyO2lgsU0SAA7z+RdqXdQT1bG+7hACrj6y
	Apg/uqqO9SnIskFxDkchtvFWu5FlSDzHstpbq3JqHsbQHBYy1rFNRsWNo2zyikdBuePzpU91vlp
	9pTlrsbmlyydK/fK36D+k7DPjCBwSzkQvYTWzkXfvNLDll8fzOkjKdsHWXJyTj/ZEHX6VPi0Aub
	zjFdItpBYv9cr2P5Hacf2th0oxF1UW/osOVaXTN18Ak2q0MG9lvrDxyScADAyVRD4ZC8tADWpvq
	dhezfOqBHz/g7y9lTR7WFEqJZhfVit8fGo1BAFq3ABnO4XhispW1xBW2kUVoMSJzKTLfL0qGsSJ
	GvpabHPzi6a8vWfiawgMVvyI3uWoDSKoa7k18bPQMfqVQhN6O1NaO3C1eEcyzm2BNDRwHeBpBuu
	KmhZhbyjrmikbenz+a1gzskxJlroinkSoV56ng/BuiGmgv1pkUrZhQl9VyyHyTAyg89xwE4Ljc=
X-Received: by 2002:a05:6000:2405:b0:47f:c3a1:244 with SMTP id ffacd0b85a97d-47fc844e168mr1916230f8f.30.1785400430191;
        Thu, 30 Jul 2026 01:33:50 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fc88d6f18sm4129263f8f.4.2026.07.30.01.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 01:33:49 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][wrynose 0/5] Pull request (cover letter only)
Date: Thu, 30 Jul 2026 10:33:48 +0200
Message-ID: <cover.1785399676.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 30 Jul 2026 08:33:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13955

Warning: this contains a yocto-bsps update that must be merged with the
corresponding linux-yocto upgrade in OE-Core.

Those are the patches from the last patch review:
https://lore.kernel.org/poky/cover.1785190768.git.yoann.congal@smile.fr/T/#t
No review, no change

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4313

The following changes since commit 824795b885b25e074a2880fbcd54e1a6c875d47d:

  yocto-bsps: update to v6.18.35 (2026-06-30 19:19:52 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-next

for you to fetch changes up to cc2e16655b852958a7bb0ef636e9286b91bcb43f:

  yocto-bsps: update to v6.18.39 (2026-07-27 00:00:07 +0200)

----------------------------------------------------------------

Bruce Ashfield (3):
  yocto-bsps: update to v6.18.36
  yocto-bsps: update to v6.18.38
  yocto-bsps: update to v6.18.39

Yoann Congal (2):
  README: Add wrynose subject-prefix to git-send-email suggestion
  b4-config: add send-prefixes for wrynose

 .b4-config                                                    | 3 ++-
 meta-yocto-bsp/README.hardware.md                             | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)


