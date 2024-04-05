Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8324CD11C2
	for <webhook@archiver.kernel.org>; Fri,  5 Apr 2024 13:57:07 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web10.12540.1712325417820521782
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Apr 2024 06:56:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=dXz24v0L;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.172, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-78a60d10eeeso124572485a.2
        for <poky@lists.yoctoproject.org>; Fri, 05 Apr 2024 06:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1712325417; x=1712930217; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=B01iQfG6GrAcuVxW1eyRMwx5MRUAZUj8nsVzbi4X7iQ=;
        b=dXz24v0L5BtkjtlvUkHW9m9evX4I1Ne30IFTJwp4nVxER8dJi3R9iIEpSrPsy+O6ay
         VzAniA0V5mS7v9l6DsdRCExhnEdVjj7AsnS6xyVnzifZ08KAQrGvDWbZ6pZ4UDxCP+Os
         CUhcmNzLOmzgkdy8YJMuqam+4FmofZQW+qmgW3JYb8WoRG2OyqEk4XQVALLryoqlRUwB
         6A+1mKU5AkYQ4sIR0kAbGcTLRl44Vc0+fbqrrCRN/jRGXW2CCUefv955xxZMgY5gkgY8
         /86eTB14Im706b0fYDyzRiNUt7pWf8VwUtka0REzmOEZqtKUGc0vf4AzELWdxpOHVmw2
         RNhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712325417; x=1712930217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B01iQfG6GrAcuVxW1eyRMwx5MRUAZUj8nsVzbi4X7iQ=;
        b=GeMM8FV+Bpj+ijeL1MatCWzJHOmDteVoB/1YULpvvYcEtcNXv+W5Q16N6qoq+1KT5m
         fM39//PVTb9bOaRmmcOPH5nCHKWRUJvAXFISeniYL+NNHTVet8scU/ZFR5nysLVnnE3r
         qkvpxMtwYPZePY3vHlgy2jkHcZN3MJG23elG9TLMySlFpUxY9BJtHWoXheEgRAYdJ7ZE
         GC+YQz53STtYEPf4aX+sHYTMfNVszpN3J0Rkrdhq2rI03qIJCehyYHNnZc8NqUDziUu6
         bW5q0zBYE4ty2iUSLqmt5vzdp0B54dmdD529E1ONq7Z695i/xmoTCWeEI3tNgRRrITEQ
         wFbQ==
X-Gm-Message-State: AOJu0YyPZ+UAGISyPkeIWmeFK+RCsPPu3d5aYUJEXTma83kHu7dJBQiF
	XuoKYe4Vk23TL42eI3thaqRqqZ3ie1C7UkH07StOHQc+nHu+Lg2/7Lzdcw+asoqh4aFF0WAQQ+c
	=
X-Google-Smtp-Source: AGHT+IF04IfloDPxXTl1g6LXcStpGQ/7eIsgiYdAhRTuE8SQZ1M/VYYPTnUvIndlXriOWSBXMIBsfw==
X-Received: by 2002:a05:620a:5a60:b0:78b:dbba:49ab with SMTP id wx32-20020a05620a5a6000b0078bdbba49abmr1561968qkn.17.1712325416602;
        Fri, 05 Apr 2024 06:56:56 -0700 (PDT)
Received: from localhost ([2605:a601:919e:c800:8ac9:b3ff:febf:a2f8])
        by smtp.gmail.com with ESMTPSA id wx39-20020a05620a5a6700b0078a0774d1basm652616qkn.15.2024.04.05.06.56.56
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 06:56:56 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
To: poky@lists.yoctoproject.org
Subject: [PATCH] yocto-bsp/linux-yocto-dev: add genericarm64
Date: Fri,  5 Apr 2024 09:56:49 -0400
Message-Id: <20240405135649.2128367-1-jdmason@kudzu.us>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 05 Apr 2024 13:57:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13318

For those crazy enough to want to use/test the latest development kernel
for genericarm64, enable it by adding the COMPATIBLE_MACHINE and
KMACHINE.

NOTE: not using the KBRANCH, as neither does the linux-yocto_%.bbappend.
It is taking the default one from the relevant recipe.

Signed-off-by: Jon Mason <jdmason@kudzu.us>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
index 4a62ac952c46..5b1b736b1cc0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -2,10 +2,12 @@ KBRANCH:genericx86  = "standard/base"
 KBRANCH:genericx86-64  = "standard/base"
 KBRANCH:beaglebone-yocto = "standard/beaglebone"
 
+KMACHINE:genericarm64 ?= "genericarm64"
 KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
+COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-- 
2.30.2


