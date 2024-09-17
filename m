Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5808DC35FEC
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 07:18:47 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.15612.1726557517158353148
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Sep 2024 00:18:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GqXU9Bs2;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-374b25263a3so2715472f8f.0
        for <poky@lists.yoctoproject.org>; Tue, 17 Sep 2024 00:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1726557515; x=1727162315; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hwfC7Cq1Kk2uqo7/ExsO8jPTwdRdhTjPtihrSNnI0Lo=;
        b=GqXU9Bs2WcIku+bVkGQ+e3v1ihRdHoWd36Z/fF3E4Lo9JDqk8a1HBqZNEO12OsmoHd
         nANBLiumK+NvSFx14cU6oqdINNTs8BR2wmUUJiCQsr3+5/2h3soeoQ25HCcNI5kBiO55
         8PIAVHcRmLp26Bcf3XgtaSF14AVug0eRqU6M4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726557515; x=1727162315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hwfC7Cq1Kk2uqo7/ExsO8jPTwdRdhTjPtihrSNnI0Lo=;
        b=cyzK03VVAQjg07ap1ylzVvbCp9uHROfzMvvwKfQWtbeBdAk8rvaVKjGy0+6VRi9HrV
         ugxg/gnVJ6tL1MVLA7YPYy00SxtD2ODpOgpG6l1mhCCgmamWmeSBwDxUk3PBJPBEeVPZ
         vKJchcMqDq1jETSDjRqzyPXXJJ6E0X/ti09Al+rKGzuNpxFU1hCDxKE95ho2/2KtK84f
         l11FW4K+zWxJYa13xScGU71WixmquUBph8Q5BofXQ7QwvhG7g9rPjUSOIjc8veOFVAJD
         ARsk4hxHEj4fpEVDGPhmwKZMwRM4U8mQ1wj4MXNMKNRKdE4VFLO0KrqJ+itNy4NvGVzd
         xb8A==
X-Gm-Message-State: AOJu0YylejyHS9KfUWpJSRcXljZ9n7/rj/KUsgFFDBzbbWo77H6SbrJI
	wp1Fum5q0XoR6mJg5tzdZYsqZteCvJilzdJxzMj86rMKtoZM7P4aJx8bet39mIB7mJd7Jxcbya0
	l
X-Google-Smtp-Source: AGHT+IHoi3GVi0FHQZkqm/v2FnFyXVqTvSglbtKz082TLO4CRt0rvpsJ6oHPG4osgN1PQLriZ4V6ew==
X-Received: by 2002:a05:6000:1292:b0:364:6c08:b9b2 with SMTP id ffacd0b85a97d-378d623badfmr7711998f8f.45.1726557514843;
        Tue, 17 Sep 2024 00:18:34 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:7c97:abb4:726a:74dd])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e73f9a17sm8752136f8f.64.2024.09.17.00.18.34
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 00:18:34 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-tiny: Drop TCLIBCAPPEND
Date: Tue, 17 Sep 2024 08:18:33 +0100
Message-ID: <20240917071833.3558105-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Sep 2024 07:18:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13442

This is no longer needed/supported. That solves the FIXME I guess!

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 29588e49130..fd17097b56d 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -51,9 +51,6 @@ PREFERRED_VERSION_linux-yocto-tiny ?= "6.10%"
 # Drop kernel-module-af-packet from RRECOMMENDS
 POKY_DEFAULT_EXTRA_RRECOMMENDS = ""
 
-# FIXME: what should we do with this?
-TCLIBCAPPEND = ""
-
 # Disable wide char support for ncurses as we don't include it in
 # in the LIBC features below.
 # Leave native enable to avoid build failures

