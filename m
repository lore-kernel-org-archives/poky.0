Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE257FF886C
	for <webhook@archiver.kernel.org>; Tue, 28 Apr 2026 21:11:09 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.49.1777410663932278181
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Apr 2026 14:11:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=lDHGsL8l;
 spf=pass (domain: smile.fr, ip: 209.85.128.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4891e86fabeso132188825e9.1
        for <poky@lists.yoctoproject.org>; Tue, 28 Apr 2026 14:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1777410662; x=1778015462; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h0awaHCZ+GAIx8TsX7ghfkmQyQh5Pl96eK+70Q8fgAM=;
        b=lDHGsL8lTjBgfusjWjeYy3NrEBRRV7DexU5fREZOXXfgoft8ksJlvwrycRvpd7Y/GK
         Rw/Vs54kkN+Y5sLlIc4ebbhuMDuwf6J0b4NJurY/Ms4OgwxHZFxRk0Dz5GG/wUaQibKx
         2uZBZZBy7eive9BdmyoJhAkMTqYDpCLVUTwl4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777410662; x=1778015462;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0awaHCZ+GAIx8TsX7ghfkmQyQh5Pl96eK+70Q8fgAM=;
        b=KqhbgDsjWNmYOlbYIbAJxXVKIAmvJl+JkR2wa9Kg34Da/zg499R66AIHpunVxXqB85
         Z7yiW5zTHL+gd5iS28Vvm/+UtKsaVlqyyYoKu7YRsCNRD9/qnRnTBgq3+UK50vDPzyIQ
         6+Jp6YIOacYEX8HbfeI3g1KEvb+l2GZMYOsA27iW1KUdHnOpOjW3O8Vc/+nHlK3hCpsL
         bip960JJelJolJ9e1eybx4BuR+a7GDGlwvm3W85vJrvsFdXI91sR63C7yl/ceg05op8V
         eAljj+gvpHdc2epYxEqi6JvKYyzV20A3Jw6D7QkMBvMTn66jQki79A5St7R6LAMzZp/g
         rx6A==
X-Gm-Message-State: AOJu0YyLwDrlQQuMbyMKTMjZwh/C7ZOuym2sAuhj9v307yURQ6sayyRw
	gNROpYIRv4Ctr2tb6PwhBFp8KZN1jbDRr5zAcVDlq8TFxdLblNa0ke3Z5Elcv0v+Jxf4gFj8jo8
	q74Pmm5w=
X-Gm-Gg: AeBDiesWQ9JX1mRy03UzMoC7Xr3EsowQcRvBepvxlKcwlyBiHrNc3O1ufUPsv+ep/ni
	bs+7GJXcck/IE/fTeprb7HZqOH/0v+scG2waThRRhi19ppc6DfoaQ4ahLicpsfsM5g0sNA/l0qA
	pAG8tc0ml+syH6b7X1PFep1xWPMK4MC35gkxmMQTtR8xR25QWVZhSYnDg9gsGqtJ3fF/0D0RxFa
	6q0y99UEu1qymueegjVsi/zL4t5YwTIxVw8trVuJwW/PKhC78TimI1TNhgi8JGIx0h1glcIAlkX
	1y4qIOvdwL2X0fRjOmqZ+1Wnukp+LRKxm+hjeMCZ6WewhpRDMWNOWeEuj7uQatorXfxjyXCJC2h
	fOdJESX+c/QQ0evBCWfOIrt1GaLsYKIbmO0M2h/480mv9SU7JQr4ahC0yFpY6u5R6i2uUBZU33N
	cCXS+m4KbMJWBnjMrve/f3UpRD3fcjUIlWoH1ZEqyvQjBdCOpcCoYjj2jNGN86kwM4VzlQYChA1
	blaQ2lkJFePcAP0JcSytu+nlkWTfvDCQvdY+G+W
X-Received: by 2002:a05:600c:c101:b0:48a:5970:2005 with SMTP id 5b1f17b1804b1-48a7b50e83cmr14540965e9.2.1777410662066;
        Tue, 28 Apr 2026 14:11:02 -0700 (PDT)
Received: from localhost.localdomain (2a02-8440-4509-99b4-a398-280a-6dff-ad32.rev.sfr.net. [2a02:8440:4509:99b4:a398:280a:6dff:ad32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a7bc87e46sm10353145e9.15.2026.04.28.14.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 14:11:01 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Cc: Paul Barker <paul@pbarker.dev>
Subject: [meta-yocto][scarthgap 0/1] Pull request (cover letter only)
Date: Tue, 28 Apr 2026 23:10:50 +0200
Message-ID: <cover.1777410433.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 28 Apr 2026 21:11:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13917

This is the patch from the last patch review:
https://lore.kernel.org/poky/cover.1777064702.git.yoann.congal@smile.fr/T/

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/29/builds/3732
But got impacted by 2 intermittent failures:
* qemuarm64-ptest failed with a python3 ptest failure
  https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3558
  * I reported the (new) issue in:
    #16267 – [scarthgap] AB-INT PTEST: python3 failure (test_wrong_cert_tls13)
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=16267
  * successfuly retried as https://autobuilder.yoctoproject.org/valkyrie/?#/builders/61/builds/3559
* oe-selftest-armhost failed to download Rust crates from crates.io in bitbake selftest
  https://autobuilder.yoctoproject.org/valkyrie/?#/builders/23/builds/3835
  * This bitbake commit did pass in https://autobuilder.yoctoproject.org/valkyrie/?#/builders/23/builds/3814
  * The fix got merged on branch: https://git.openembedded.org/bitbake/commit/?h=2.8&id=b2404004135b669f8258c85c7b5aed4570a805c7

The following changes since commit c7c38663a1cafb1fa8593c0b246811e51d3bbe20:

  poky.conf: Bump version for 5.0.17 release (2026-04-02 13:44:48 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-next
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-next

for you to fetch changes up to 0845965f1d81d22d47dcf28c525c7463fafe5245:

  poky: Fix CentOS Stream distro names (2026-04-17 15:15:00 +0200)

----------------------------------------------------------------

Antonin Godard (1):
  poky: Fix CentOS Stream distro names

 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)


