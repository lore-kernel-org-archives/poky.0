Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC2C54FB3
	for <webhook@archiver.kernel.org>; Thu, 29 May 2025 16:28:27 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.25437.1748536105031693125
 for <poky@lists.yoctoproject.org>;
 Thu, 29 May 2025 09:28:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fbnQ+k7z;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-442f4a3a4d6so7324065e9.0
        for <poky@lists.yoctoproject.org>; Thu, 29 May 2025 09:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1748536103; x=1749140903; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=mDLNvordIUYbZXlNavvJ4dMuo7c1JtAqAUyXL5KeVIg=;
        b=fbnQ+k7zbYLdZY0MklAnUhqav2ENqIeNjfyXaDEZ4SrRayqnesHuQQ4BKu6jr6DP/A
         Wmj69IYU3G2mXHAc5kkwoigzuKJojmhm9rvDq1ppKVXZLdeRNOGvAkFPKxE+ITxRrWVs
         mXFIPh40PB+6w8LRW6+6O5k65GygKR8LS7Sv0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748536103; x=1749140903;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mDLNvordIUYbZXlNavvJ4dMuo7c1JtAqAUyXL5KeVIg=;
        b=qihevri43My80+AFlzuGDfMQablbUvrAjGw3dHCN0n5HpE6cx1MTthhMHVv8anbqDB
         ELVDmP9IMprrG2yzEZh3mDdchRx47KB2lA+wRcKSsauTeYOFWKHMSHW5ZmpFWXVDhqHl
         7Ms4CRxnvivrT5Zt9aiAN+klf5/IzrGC/2jcPTrCTFqNiy9XsYLeLG9oNCxtyHtw1egf
         jk592D0NHEhv0ZBkIrFB/oB0CiS1xkOLn0DTDwdBiWtB4kXbzwsnVkQNLoRO6sIZyaoE
         OSyAB2KJSmooxVFMSIkg3zBSPqOwCthhlmDHY9Nrlhi5bGDmEOCKDeeUdhhKpRNwD0DU
         75vA==
X-Gm-Message-State: AOJu0Yy2tb5pmG0Ejh4uyCu6Y2csBAmMr9sgjCZY6NAzs3ynTJj60F5w
	cz8oLTzhQrUKvlga/MujQ5fk1gQRBoKab5hSgycfu69V/YPwIdv4PS85EZZw+HNNE+Jo7JtJyGB
	Tpbx67gU=
X-Gm-Gg: ASbGncsLl2Jn0GKZGkPF6BboJSlZk/GpXJ8L1H99+OeUodNopnXWdmEnT8E2RCrC5kU
	lF6wMHWvWk9WefQdFusRP75uTe5Izzil5/rOcqJ0jaTcu3HXWhuG7EhzYSrfI3g3ZEd+a+ZAaBp
	5MMaTKNb2VGPce5naBIbgcwmiZ2CmpCQE83Kfj0+ynqexc6DoTn3TAgCpYr5LEeaQWbn/qu3hwH
	wQTGYEUCN8jgchi9C9zoRqpWWXn9aS2KL5qkazGCn0TpnuzN7Kcwl3QlDb6qHEUhlEPFv2a9MOU
	8NvPkvrYu3W5IrznBnZ5B09R2nCwJ63297o8yFxPElwpr/8To/eHYuC0N9LoZmLR32TmBRuEoAc
	lqg==
X-Google-Smtp-Source: AGHT+IHyul+CKLRzo3vrRYSHrUR7pdkw5QOyZQVnOV0cLbuYGm9WdTptJUONhDybpSk8qs09RxU6BA==
X-Received: by 2002:a05:600c:1d0a:b0:439:5f04:4f8d with SMTP id 5b1f17b1804b1-450ce86b12bmr38936495e9.12.1748536102390;
        Thu, 29 May 2025 09:28:22 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:1a5e:81:40ad:9da7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450cfc15ad7sm23654295e9.18.2025.05.29.09.28.21
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 09:28:21 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: Switch to new CDN
Date: Thu, 29 May 2025 17:28:20 +0100
Message-ID: <20250529162820.3115690-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 May 2025 16:28:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13624

The project is switching the way handle our CDN provision of sstate objects,
update the URL accordingly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/templates/default/local.conf.sample | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index 7dc44d91d68..ecc33c06f3f 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -240,10 +240,7 @@ BB_DISKMON_DIRS ??= "\
 # Using the CDN rather than the yoctoproject.org address is suggested/preferred.
 #
 #BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
-#SSTATE_MIRRORS ?= "file://.* http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"
-#
-###SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
-
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration

