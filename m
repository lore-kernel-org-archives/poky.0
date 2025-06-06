Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04CABC5AD49
	for <webhook@archiver.kernel.org>; Fri,  6 Jun 2025 12:13:40 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.32112.1749212010227722631
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Jun 2025 05:13:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nTV3Nffk;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-450cf0025c0so13954895e9.3
        for <poky@lists.yoctoproject.org>; Fri, 06 Jun 2025 05:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749212008; x=1749816808; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vakpoIOUCCGwq0pJMs3zEVwL/SSDWhzMKz2VZ+KDDKU=;
        b=nTV3NffkJCJJmFDHEIujU2AGp6QUr5wNU2dmEsvd9SEUhkYGFfr+rpOAywBLTUSdWN
         JFp1cwpmiyhzZczJXOruSYMbShAgrySeSKy5T8HuAf8tR8Ir0BVsaYRTmxprU1+x2qlG
         ils6DwCpE/g4QUdnH6RyFQCY8KDJt41YxgkP7xu0OQDpK+jjzNjITkWDdlrUQL1jG1Dk
         t/CBDNH1tpMnw7x6mGHamTJmk/mZoDM1P/s+uvmymUzLuLh7Nu7G5Yh6W3NTHUcs11JN
         wSn1FA7apYCPt8t0ivxyDaWk3FyUoaGLIGylGf6WSJQKQfNy+6NSDH7C3hAXNh9QYbRx
         QojQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749212008; x=1749816808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vakpoIOUCCGwq0pJMs3zEVwL/SSDWhzMKz2VZ+KDDKU=;
        b=tKSL2D0XPI0I1Kc199ZWEmd29S7Xa/TlnhjVF49ldhlBlJIqf7BOtgr7Topfftbwf0
         6ouZdOWAIm7fjy6YQxfnuP2F5sv0Xv6L5sJq2NOsKpuWP6ot6+l18IlEun2oJ3fMW/09
         cxUxSDMoPMxesBZXrNmArqLBHn8K9lJHl+F9tXsrK3HXzdzAi2e54IufbstN9aI4gmDx
         kX54qTdpD+VexvX1OBh/HNf92EqMp1ZX3gJNUxTBiKmY4RpCVHtY7cQcTUPHa+EfD/DN
         9ZBV+mt4dI+HwlZKgJi4iGdSPvo41hmf+2jeqgD2yschViUXBMnDLjG5VyLONygSzk9L
         hRCg==
X-Gm-Message-State: AOJu0YxphLNduT7L2IAhP2qG8rVeEHlhlnNIiP9xdHLOME5cC+gyHO/I
	F6UUwTVZ4xMlQFiwZ8fNou7rR2vePsvPmIb/QVzAH5hcO/J5LFrXP0X/ypf5AQ==
X-Gm-Gg: ASbGncvxW3zscp9l+en0YmHKwyMdJMfovW47IwgFUNUPj+f8rShJ7s5Lx+2NGjRBOf9
	TMOdP6dHM/GNWsFKCyol0oS4W418S4TgLm6ohuIcgUnGhfS4wQw4Ecu1fYbkPI2MzJRafEx8/Bx
	IVrhSLp3SapaZ/ztclt5AA/SmBj0xC4LBEzMEDQPNoAutlVTpKDy7hoxXDHLjJThNU9d3ooo2dU
	muAAQARZHIxRH9qwmt9mKypVK8lF4X7g/cQFtv0jogNwoxQxZf4FIcxyrpE5RVGijahV3uFxl24
	6VfxViDtqzedPdq7xPLMzDF0naJuRpnF6LhJt05Rmqi4G9eOdHRchD12XMSS9YC39RM6/qFEiU0
	i3BRYv1aPvfZp
X-Google-Smtp-Source: AGHT+IEFiRStc9+I6TySJ6Bhwu2XlEFbCMjIc1Sblq6+cYU2u51oFj+OUHTnve8NsApb0QDMk525pA==
X-Received: by 2002:a5d:64e8:0:b0:3a4:dd16:b287 with SMTP id ffacd0b85a97d-3a531ab51e2mr2579744f8f.19.1749212008368;
        Fri, 06 Jun 2025 05:13:28 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a5323ab207sm1702510f8f.29.2025.06.06.05.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 05:13:27 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] templates/default: do not separately enable sdl in qemu-system-native
Date: Fri,  6 Jun 2025 14:13:26 +0200
Message-Id: <20250606121326.487607-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Jun 2025 12:13:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13647

From: Alexander Kanavin <alex@linutronix.de>

The recipe now does it directly.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/local.conf.sample | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index ecc33c06f3f..0a33288cf0d 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -245,9 +245,8 @@ BB_DISKMON_DIRS ??= "\
 #
 # Qemu configuration
 #
-# By default native qemu will build with a builtin VNC server where graphical output can be
-# seen. The line below enables the SDL UI frontend too.
-PACKAGECONFIG:append:pn-qemu-system-native = " sdl"
+# By default native qemu will build with a builtin VNC server and a SDL UI frontend
+# where graphical output can be seen.
 # By default libsdl2-native will be built, if you want to use your host's libSDL instead of 
 # the minimal libsdl built by libsdl2-native then uncomment the ASSUME_PROVIDED line below.
 #ASSUME_PROVIDED += "libsdl2-native"
-- 
2.39.5


