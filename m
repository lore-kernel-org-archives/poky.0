Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED2A3C5B543
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 17:42:29 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.1318.1748626933628636388
 for <poky@lists.yoctoproject.org>;
 Fri, 30 May 2025 10:42:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=BWGyygxm;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-7fd581c2bf4so1650856a12.3
        for <poky@lists.yoctoproject.org>; Fri, 30 May 2025 10:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1748626933; x=1749231733; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=dODZJREpgiel++9jbnkAOia4wiKiMVhZCMLMQM55pe0=;
        b=BWGyygxmvM8IR2bVFm6vOYxQb+JrV+jNDXyXQLIdVRCLGYKCjeH9Z8Xa4rCSaHU8BG
         j6ajfFaxBmmozyWamrAW821YOuPOzE1vPl2s75r3/iM66F26VRhld1L0MUoFzWj/npbi
         u0716mLAFkfacoY3rT3cdab1u+LPyUCc83fgGhkdCWjTOeontIQLanz6V2/3CNliFSQ9
         /4aoudfrWMGaY48znnP7DCamvSTtULQM56jbnHhFGC6+X0wQKvOx84Cvk6om9q9LI40n
         VyEDlQJBovKKGoz/XIjV5qSSnPHAo0rsNhPuDGX7QZCSBLr8r3611f5CmIFSYPgiaTXh
         Np9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748626933; x=1749231733;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dODZJREpgiel++9jbnkAOia4wiKiMVhZCMLMQM55pe0=;
        b=Pbc/13wm2IGgKYh5dCQaR8dLH4yDakWs4kJtz7FT7GhF/jdu9OPnTnV9KGtTq8C9uP
         Bv/seriyCMukU7fV5TsSf4JqZYkdY/198GogJYnw0Zw49/lYJT0xNLqRTLwOXthh+HCT
         Z4hmq/o1Sv98+/sOYrhb2bzga+iQ/SIPRbaLh7hXhqJUB9RKGF8Of/Wk+EMtlBZu7FQd
         xDbSLC2xPQ0QfeGEhMrKExa7QFPmkdFI5KQpLbEl1v99LzJ8YmXmCpDCO5QFG6T8mPIF
         KmTOioJuFvZ8Ae4tfkoU514KLansyIu/sc83BGnJxLMmNCIT2xxqyOpxyPSbykEHItAp
         Wrrg==
X-Gm-Message-State: AOJu0YwKomE2pxWn8NAw+9k+BVvRPXDRQPoS9Z8FqYxrsYajGxaCEbUB
	ZRtp4h1YT5hVJMD987aBA2/t2PNNVtGYH86dn9GwkEaqHBL+4rwTC4Rfr1NVtx8mDJ3ZHEtJOfg
	UyRYK
X-Gm-Gg: ASbGnctip8JMlstZmuxwn+UNojXODIc1hinEiUPCPMbgbfwGVQ+5PMOihua6wXzzzVi
	XPbQ2sZGCZ+Xv4W27sQXMkkMx+xhudVL+M9rAhC7O9ElgfXPKXhz/xZqjfHWBc/5fM1/aL8sykx
	QD9//LBpxzyrwiRx/cwtwkrerqeOapAWXReMPTQ4oTvaaO5exZA8ZDte0zXk5sJBS9aXJkn3T7Y
	72wsbRhRaS3Xg7bP0Ul9ndchfI7pBiqPsQICrUWF9+kpF6YUPQXtpjx5aMrpDlRqJTVuyMRMaSl
	o8pGM4lCUeOKAp0mwxLq8QjgJJQICti3v68+lDeFfGw=
X-Google-Smtp-Source: AGHT+IHls43iR2Egy9CbROmjgEatCrTq2sNHoIc0juT9rfogHYZmXfRQb6yOE4BR90aomEssQaBqRQ==
X-Received: by 2002:a17:90b:1b0b:b0:311:f05b:8695 with SMTP id 98e67ed59e1d1-31241e86b7fmr5088029a91.23.1748626932615;
        Fri, 30 May 2025 10:42:12 -0700 (PDT)
Received: from hexa.. ([2602:feb4:3b:2100:c9d8:e2d0:bfbc:3a26])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2b544asm1622039a91.2.2025.05.30.10.42.12
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:42:12 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][walnascar 0/2] Patch review
Date: Fri, 30 May 2025 10:42:04 -0700
Message-ID: <cover.1748626837.git.steve@sakoman.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 30 May 2025 17:42:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13627

Please review this set of changes for walnascar and have comments back by
end of day Tuesday, June 3

Passed a-full on autobuilder:

https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1692

The following changes since commit 73ef61468496fd129b90c3f0afe26859b441b26b:

  poky.conf: bump version for 5.2.1 (2025-05-19 09:41:34 -0700)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/walnascar-next
  https://git.yoctoproject.org/meta-yocto/log/?h=contrib/walnascar-next

Mikko Rapeli (1):
  genericarm64.conf: increase INITRAMFS_MAXSIZE

Richard Purdie (1):
  local.conf.sample: Switch to new CDN

 meta-poky/conf/templates/default/local.conf.sample | 5 +----
 meta-yocto-bsp/conf/machine/genericarm64.conf      | 2 ++
 2 files changed, 3 insertions(+), 4 deletions(-)

-- 
2.43.0


