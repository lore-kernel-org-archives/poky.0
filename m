Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60773C47258
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 12:38:57 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.12837.1706704731863200640
 for <poky@lists.yoctoproject.org>;
 Wed, 31 Jan 2024 04:38:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EXFStCr3;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40ef64d8955so28732325e9.3
        for <poky@lists.yoctoproject.org>; Wed, 31 Jan 2024 04:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706704730; x=1707309530; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/lfXEXp4ZFgiD4/jQEE0KOLtS/rhckpc8G4WXEKuyyc=;
        b=EXFStCr3Q7qTEuOSUgbqB1Kbn76+Yruxya55u3GcxPthn2TvIon8+SX5oB+fO2HfTd
         R+omGrR33h+O/+P6KTSjmXcQJTCQuKIGYnjIbFGTtL7+33bMOqkHW6do97yOPNgdHNpa
         OKSxIM3TB2WE2lJiUOpv6q7WcZOxTyCDceBnxAVZxoaxXDW0VVks8AUiV3Wq7MooydiJ
         QzpTJ4CgofBoF+WL6OKmu0/Z4o6pCilhWP/M3oX2KpPMJ8jBNUJOEPZDSVMAK0x3rueJ
         o4+ya6s6WNdKXZ+wW4LjY0tqDp624MEsH/5MNNG/iK8p66063Ov+BkYhgBt3Ea9uiXTG
         dytA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706704730; x=1707309530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/lfXEXp4ZFgiD4/jQEE0KOLtS/rhckpc8G4WXEKuyyc=;
        b=g/7Q+ascpJQa8qPTLxxD7KqTcXdkmWygDg9fLIvzUaxpEtEcfhlNeAMdRtD/i7t2ux
         jQ+/K2V/RsbtdJ+ASoUvKQQvRnf1DDE+dMWNN0CUCvcMC7PEyTGUlwYAC6jOTZkeBOdj
         uT3OQF9udhLnvUhu2Wd65u2MjKhDLEXFnrGpt9DbXYKzlPHMHIWGOEph4RUarB1U1EVJ
         mcekQY7coeU/jh/baHKTzVE28Nap8mWMuiJogBsFqYj2qx7BtasvJMB2bWBmvshYHb0h
         Jwmydv/7mNK1Hoy+c251ISsFo6T8VjpN72oEAncfxJFQf12oaJBM7k/J0KqHawy1DyP7
         LHfw==
X-Gm-Message-State: AOJu0Yw6kHeUJ12M4GSk3Vu9+DKTuTMaFFyDT+dYKtqcB7qHeqI5jioi
	q+gQpHyk4I6bztfe3KOTCwtYz8ckmK8IpZXddKkaHHFJIwv0y5aCziBSQgcV
X-Google-Smtp-Source: AGHT+IHWiRK9GBDmkaiDM8pEAvdRMbKkvREp8+LnqCYjQXGCfAYQPPdz/zhVIhjpsN/IPa0+lwDkfQ==
X-Received: by 2002:a05:600c:558a:b0:40f:5c3a:bbb0 with SMTP id jp10-20020a05600c558a00b0040f5c3abbb0mr1131818wmb.23.1706704730058;
        Wed, 31 Jan 2024 04:38:50 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id f6-20020a05600c154600b0040fa661ee82sm1497229wmg.44.2024.01.31.04.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 04:38:49 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/2] meta/conf/templates/default/conf-notes.txt: remove
Date: Wed, 31 Jan 2024 13:37:55 +0100
Message-Id: <20240131123756.1098481-1-alex@linutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 31 Jan 2024 12:38:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13247

This is present in the poky repository, even though it should
not be:
https://git.yoctoproject.org/poky/tree/meta/conf/templates/default?id=ddf3b3ecd4b1680dc0dedfd4eaebcf3441b14ca7

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/conf/templates/default/conf-notes.txt | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta/conf/templates/default/conf-notes.txt

diff --git a/meta/conf/templates/default/conf-notes.txt b/meta/conf/templates/default/conf-notes.txt
deleted file mode 100644
index cfd1f1977bf..00000000000
--- a/meta/conf/templates/default/conf-notes.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-
-### Shell environment set up for builds. ###
-
-You can now run 'bitbake <target>'
-
-Common targets are:
-    core-image-minimal
-    core-image-full-cmdline
-    core-image-sato
-    core-image-weston
-    meta-toolchain
-    meta-ide-support
-
-You can also run generated qemu images with a command like 'runqemu qemux86-64'.
-
-Other commonly useful commands are:
- - 'devtool' and 'recipetool' handle common recipe tasks
- - 'bitbake-layers' handles common layer tasks
- - 'oe-pkgdata-util' handles common target package tasks
-- 
2.39.2


