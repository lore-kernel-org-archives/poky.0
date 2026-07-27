Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A442FC53209
	for <webhook@archiver.kernel.org>; Mon, 27 Jul 2026 22:54:39 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.43759.1785192871697139109
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jul 2026 15:54:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=xY2LLDBG;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4954a32cf1eso16734585e9.3
        for <poky@lists.yoctoproject.org>; Mon, 27 Jul 2026 15:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1785192870; x=1785797670; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=abBIh+IsGN0kX1H7vQEssARtoQANRxAhURcoELD7zyw=;
        b=xY2LLDBGPREXw9vzjjxREe7wwOedfzeXvMFyvbPeHL5wRO4EuDrirwY0g4piG3w2ps
         vTq/myNDWEV4U1iVdW6RsavJ+BLjHSH5QQmCKEeSFEGnUAsD/8tCVJrFMd6q/PpB2WdX
         4Avay9pOz8qPFwKkUOQo7+LZMqFcZ9zLjKsYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785192870; x=1785797670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=abBIh+IsGN0kX1H7vQEssARtoQANRxAhURcoELD7zyw=;
        b=X2CGw8N5HQkun2SuONdGVhTiENWsDsoPMP6tJvvgh8a/Z/6aSmDjTtFSK3ZXMN+gy9
         2ESVtVHKXKOGMofIZmD+pRyO4tzqKNXVEf2EHoaGcJgGTGQhkTSb4nyzdGk3bCnLCOUu
         IvA4lAtdGbyS4T4G3AYsqJ0NRey4wfi+bCeXwCqPGmWMcBn8CxZ4059A3OwUfpgsKTNV
         fO59ZwrrF+dIQffiiKPus5ikZxPXR19Ynt0g4taDsAukTNjbM2WLKu6Gg+scnZFlNWxA
         j2bJn7WUGSvJAXPUBPtWcj4QTF16ZCsfHZoCU6ty55Vk9KUer77Y83gutq3EjAG0Lssx
         EKxA==
X-Gm-Message-State: AOJu0YwUk5YZEjjDkFYpcZcXFsgje7UKBGE+SD9rWZsTftF6Fcy4/SId
	brwf2mxCjtvQ8smTqudSWFaZRcCBaqWSaqZbFlOh1ajjDLh5sGZWsLKJAa7DZgDs+b19kynbXzX
	x+6/nlow=
X-Gm-Gg: AR+sD13KNxMqB5ZXV/Bq5SAq4lApKiNonLpB+okWnG+OlNBhbiGVAAEOv6xuHx6WT2g
	0VpwpT5uYD0t91nop13e/g6oxS4mCGlDLmWxrPT+JlQJvptXrzowaq/ILaFi8xmBzBDQXVXPDoG
	zXc88NJxCxZEhKJpGW24GRc9rafctXxMIaNIUTAmFFQOnvk3rWlPfetbds9UsEvrU+PO0xM8Bpe
	2p7zU7mgxssz7IcrAsRT94pFOsR90/AzeDQZe8uOmCdYyoaRgGy6twCrfpLl/eCNKWzjzrOLPS/
	B8mP7by9+S4/BHr2cDOwb8WxtZd7yNcfM75Px9C9CfOIbK0YpgY9f0pRMvmxCmrNiyE3P18QEl/
	ZT+FW7LPNc8PnQk/B3EQd4Fa+BkuKZ++/Wcy4hXBMeKra/K0EoXCpW6pD/PVJf3AZnEqUPjI5L5
	MjH1doKzygZRUPGdzTx55yyJbGf3qo0poF9SQMoMRbDF/7eZ/8b4pbenyyuOxRj5X9vH8ZCK+LA
	lPQRzSSjMVqQ2AE
X-Received: by 2002:a05:600c:630d:b0:495:4d35:5eab with SMTP id 5b1f17b1804b1-496b5747e37mr137493775e9.24.1785192869851;
        Mon, 27 Jul 2026 15:54:29 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f864305f5sm51588584f8f.17.2026.07.27.15.54.27
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 15:54:27 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 0/5] Patch review
Date: Tue, 28 Jul 2026 00:54:08 +0200
Message-ID: <cover.1785190768.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 27 Jul 2026 22:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13949

Please review this set of changes for wrynose and have comments back by
end of day Wednesday, July 29.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4303

The following changes since commit 824795b885b25e074a2880fbcd54e1a6c875d47d:

  yocto-bsps: update to v6.18.35 (2026-06-30 19:19:52 +0200)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/wrynose-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/wrynose-nut

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


