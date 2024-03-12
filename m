Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D18EC54E66
	for <webhook@archiver.kernel.org>; Tue, 12 Mar 2024 08:05:47 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.3562.1710230736224795208
 for <poky@lists.yoctoproject.org>;
 Tue, 12 Mar 2024 01:05:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Hmy7jb6X;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-41330a62bf7so5831935e9.1
        for <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 01:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1710230734; x=1710835534; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGOhh6wmEf348JdugcN2rz1Qnfah1eUIS+vUHKyKv+A=;
        b=Hmy7jb6XMcw0HOCIOYZUOrV/zmZ97b7JNfjRNvFUdrtS7YMGH5+m6RZrt81ZvFQLEP
         ZOyYN21wY6+5QinBUZzS1ApYGOwncJ5cEoBnRsCCprb79YhEhLNF0Md6HJb8HzZRvJjI
         pMj4ybZfl8i8zDtmTuWUurPIzSd8lhz08Ri3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710230734; x=1710835534;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZGOhh6wmEf348JdugcN2rz1Qnfah1eUIS+vUHKyKv+A=;
        b=A2f+J+N5alPvmfwjCtCsYV5aHqqpnxyT8gpLefvIylz+vBrzZRYIGN7JR83VOM9Qks
         rD15XTINvb6x7RGzpmHpCrctBzy0LA9TPRPo0HJW4kgm0PfRh8EIlqT+WEp+Lr+4ph3f
         igiUZLw9kdgk5XpY9Tw0tM6Lk8Wb3hIdan1Z5qH4o4kp2BRZzl4HdwwGYAkbgxfciGZW
         tM6BJdG1PUk5d3xHPO8tulqCE0N1wm0Vi+umMPKJXle9jItvTXft0AAObPTjSLMFC0V6
         MmZhGrEhjUbtOX2EzNXvCks5rYQJ7HjsGobO8MesjP4GvgVhURVB6gG660qaGX4pHU0F
         zmGw==
X-Gm-Message-State: AOJu0YyVEoFTjFbYW5mXQZr1ZEaCLuS+Ij4zWOqtL9eARkpWN0Bx5UWf
	8FmsLI/3vvCwUkZTIh8buNKFWTAMdUexhf/Etksj5Ab1e6cRsh1wMy709ZfDb0kaNH4FWKfIYCR
	Z
X-Google-Smtp-Source: AGHT+IGYZKADmQOHW45d/LV86ys+51WZlX2q4gU9MVkNTn0ulU879Z6Cjl7vkoBXIGBZzM3S/N8O+A==
X-Received: by 2002:a5d:604f:0:b0:33e:798f:6d1e with SMTP id j15-20020a5d604f000000b0033e798f6d1emr5952259wrt.37.1710230734231;
        Tue, 12 Mar 2024 01:05:34 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:b9f3:63d3:8083:282b])
        by smtp.gmail.com with ESMTPSA id c13-20020adfe74d000000b0033cf4e47496sm8404339wrn.51.2024.03.12.01.05.33
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Mar 2024 01:05:33 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-altcfg: Default to ipk packaging
Date: Tue, 12 Mar 2024 08:05:33 +0000
Message-Id: <20240312080533.2844746-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 12 Mar 2024 08:05:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13304

poky itself defaults to rpm packaging. In support of the binary distro
testing, and for wider testing in general, default poky-altcfg to ipk.

Since we plan to have better "binary distro" testing on the autobuilder
and we plan to primarily use ipk for this, having ipk based images available
as part of our builds is desireable.

Since we want systemd based images with ipk, it makes sense to leave standard
poky using rpm images but switch poky-altcfg to use ipk.

Doing this now for scarthgap gives us a good platform to build off in
the long term too.

This matches https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?id=a9b4f83c05136dd83e07c0f68ae2ad13507ed36a

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-altcfg.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky-altcfg.conf b/meta-poky/conf/distro/poky-altcfg.conf
index b6dbcad4efc..3d64bdd1fea 100644
--- a/meta-poky/conf/distro/poky-altcfg.conf
+++ b/meta-poky/conf/distro/poky-altcfg.conf
@@ -2,6 +2,8 @@
 # An example of subclassing a distro, primarily used for testing alternate configuration
 # combinations on the Yocto Project autobuilder
 #
+
+PACKAGE_CLASSES ?= "package_ipk"
 require conf/distro/poky.conf
 
 DISTRO = "poky-altcfg"
-- 
2.40.1


