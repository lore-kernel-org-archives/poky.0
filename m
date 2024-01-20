Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEB1C47DB7
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 13:43:16 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.22430.1705758189159028066
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 05:43:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iIP/79j8;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: haokexin@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-5cf450eba00so1467092a12.0
        for <poky@lists.yoctoproject.org>; Sat, 20 Jan 2024 05:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705758188; x=1706362988; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VrRvh5SHvaNlc6DjSsv61cFp8PoZK961WikDDpbahss=;
        b=iIP/79j8BmxFuAWzjb6XAvsukATJljzRJBMPtnPGoN4KTRiAq1nq/pzkVw09UAxCf8
         QrI7dHpL1ABGrKI28MUu6Zti/hhBFOd5El3GUW+n/HSuChQ9qq9J3WD6Ytyszdn1PfRq
         O73TAtVXRAtf+/SELbl76fDQK+t9eiayim0A3kMBj547nZUSmp5q9MhBSTuI8KJF3yEZ
         rEFqRer6jpsggmaOPjGTL1NxXjLUj4FKp6hN30YFVifbSJLds4sTc/Oc9ISynWEIp6om
         D/gQ/Y2v8wAKkpwJ8tgN+evW3ibEt7stcpReo70+X49Va50J97BNDMXe5dAgGSMcdpQU
         e8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705758188; x=1706362988;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VrRvh5SHvaNlc6DjSsv61cFp8PoZK961WikDDpbahss=;
        b=karSt6E5dVlGkOZ0eiRUMfRZSx+342fYhipmA+3W0STCUcFpCZfae0JP47MksbCUFh
         NXjjotT7f0ke9dnfXuYYEnJxQwVTVWb4a+rFYVcctDA6B2hFKIkozLhKMJa5vbM3SjI8
         rbmFxzQLSboM83HThkLEbfynF/04pFPWnMcMqYh/qcTk+f1GHPBoIbuG7F2rsyuX2eS6
         4f9OFQBkLL4RmoGRO8TzAWWZSDq8QhKzNDBfTHjNM+DN/GAAeYcSYjgi2vaTnoGGXQOX
         pMtGb5sqBLj2cpSUyPzXcWF77PrT8sVgWqbdMfEaI96fyCNXfOlpG7t0aYlFbfRWPmpk
         9uPQ==
X-Gm-Message-State: AOJu0YzGpRus8h6wrdFa20+eW+KASSuLb8txpkPEFtdkXdH86KeqYaa2
	3JM7xeN7R+vpEOw23ELjcsQEEjMtZv2HOKgtgf70JVREkHIdDjOl
X-Google-Smtp-Source: AGHT+IHLCHQkNeT4RmY01Ng14zrjFIHFXlGhuSPG58+uBCB2Om4WPgwYdo08g8zkroPKA7a+53taRg==
X-Received: by 2002:a17:902:c948:b0:1d6:fb10:7430 with SMTP id i8-20020a170902c94800b001d6fb107430mr2042762pla.113.1705758188507;
        Sat, 20 Jan 2024 05:43:08 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id jy5-20020a17090342c500b001d6e9d127e3sm4592723plb.90.2024.01.20.05.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 05:43:08 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>,
	<poky@lists.yoctoproject.org>
Subject: [PATCH 0/2] yocto-bsp: Bump the default kernel to v6.6 for all the machines
Date: Sat, 20 Jan 2024 21:42:52 +0800
Message-Id: <20240120134254.3235808-1-haokexin@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 20 Jan 2024 13:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13243

From: Kevin Hao <kexin.hao@windriver.com>

Hi Richard,

This patch series bumps the default kernel to the v6.6 for all the
reference machines, and also drop the v6.1 bbappend at the same time.
There are some kernel config check warnings on the beaglebone on v6.6 kernel.
A fix [1] is under review. Build and boot test for all the machines.

[1] https://lists.yoctoproject.org/g/linux-yocto/message/13504

Kevin Hao (2):
  yocto-bsp: Bump the default kernel to v6.6
  yocto-bsp: Drop the support for v6.1 kernel

 .../conf/machine/beaglebone-yocto.conf        |  7 ++++---
 .../machine/include/genericx86-common.inc     |  2 +-
 .../linux/linux-yocto_6.1.bbappend            | 19 -------------------
 .../linux/linux-yocto_6.6.bbappend            | 19 +++++++++++++++++++
 4 files changed, 24 insertions(+), 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend

-- 
2.39.2


