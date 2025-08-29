Return-Path: <frederikbraendstrup@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3687CCA0FF9
	for <webhook@archiver.kernel.org>; Fri, 29 Aug 2025 11:48:21 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.11413.1756468097976053451
 for <poky@lists.yoctoproject.org>;
 Fri, 29 Aug 2025 04:48:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kH7aKK6O;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: frederikbraendstrup@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-afeba8e759eso299563366b.3
        for <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 04:48:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756468096; x=1757072896; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aOwh/JXKF6HFhLKBBdx2uC/N7mL4NuiMtlS+7HwJZWA=;
        b=kH7aKK6OcAQjvrJ45gkrmdBzftIed95+kAOVqhHh4rMli/x7sSsmtAjh8slx1ryGnK
         2W066aDGOc32Pt8x+URkXZrsmq4CCVU8zk1G4qRwwvoOQGyqYzTztMf/ciWc6mgAU0bZ
         85+ZS7oxrdiLCMksJ91s/maLfwLEdkmn5AJlgbUWVY5/QWzYJ4+zIH0Pnt4jxm1DPKSz
         1KQOJDc1KHOPejNpEclb6jfe+qjoeyWnieqi7DCv/s4yLA2gRlHk2rXLnbgeVdAR4WOY
         MhNbKgoQSpk7QdAlMCWiQ/TPDAj6+hKUiKV1Qrm/TBzx8XVmFgLMUwmSmjfsHH+W8PKv
         w6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756468096; x=1757072896;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aOwh/JXKF6HFhLKBBdx2uC/N7mL4NuiMtlS+7HwJZWA=;
        b=JujI1Io0EBKagDWcZ9wK+SyY+0t+jcLk0aFoK8+CLSTAV5YXxFwe3PybmOIFPjClQ1
         PE0iX9824nEUz4X2TUIBY7w40/S5omURCQgmKLuWBC9SeVz2z+2nYUh7c/P/yQKKBRzA
         DPdlFzWU/amC3/6srCg/PDVSwc0HKJHAuZS0hGgO/viMG52bZpEUduk+t+aqVrGXw0FZ
         rRxD4wLgyOM2IVnDzDB4mtHubgPceNC8hZwGIX0xi55jH52mowbzb3Sy7BPLykUA8E6b
         RqJ4v3ivm3qVLTso+Uy/66AceuZ9QJpXvxbB49YkBdTHLNT6jpOiizzmvEaX77rJtRx1
         +6eA==
X-Gm-Message-State: AOJu0Yxi2vMtl8zlhgfe0NX8MNDM390XaZOoTPWoVWvCV7LCIPVIt/mm
	mtdANdUCrAWiQDnJdtp+oFotVJjoIBnA+VK1uOMtMAyMy/xrYk1GH2kM2KyXQvqi
X-Gm-Gg: ASbGncvhNvc0tEmA117TunWGPNYP1VcuYEis3yTzvAqHW3wo5FNr0r+lFGeCsfZQo5B
	6YU252Xb4eHCQ+avjv+oTmQkljjVZ7GYCPugOjFGYXGUtRIwV7c8VH1YPpNiVnL6YLywtdCHFvn
	9heqbjvAt1jNrO/q7n05bj8LuOsOO6l/I8EFzoI95ByF4SH1RJiLSZ8NvRStZVqHE3e8YDf05tT
	jg/Q0mxORaLE2OxYmUYUvyUVdBT7XV352rHW/UWddim+J4uU6M7gg/l9NxkhpQdkdfJg3U/1cbC
	KCSZujEXsKaMTsqWsD6sF6Rn8+cL2iZpSl5LHCqMzWzrmbSNfzOwHp943Cqm/ePCO68VyKuedqA
	p2dB6IqIw1lypkVcncUTMYqpMLKE9Il99lEzmrgmovfguDZmkn6HIy3gCUw3b7RXqEp8KTUA=
X-Google-Smtp-Source: AGHT+IGUOkJaCr/N4CqyNTlWr/O7beNvz5UBeUqrqIw41IqMcLwLMT/inXpuTY8teoKl/Ic4GPrS3w==
X-Received: by 2002:a17:907:7241:b0:afe:f567:ec26 with SMTP id a640c23a62f3a-afef567f226mr402701666b.42.1756468095973;
        Fri, 29 Aug 2025 04:48:15 -0700 (PDT)
Received: from archlinux (77.241.136.27.bredband.3.dk. [77.241.136.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afefcbd86ccsm178907666b.58.2025.08.29.04.48.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 04:48:14 -0700 (PDT)
From: Frede Braendstrup <frederikbraendstrup@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Frede Braendstrup <frederikbraendstrup@gmail.com>
Subject: [PATCH] fix: use pkgconf instead of pkg-config
Date: Fri, 29 Aug 2025 13:47:06 +0200
Message-ID: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 11:48:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13736

As a preface, I know this is probably a bit of an aggressive move. But
pkg-config doesn't build on newer GCC and Clang compilers due to a lot
of hardening. The old K&R style C code is deprecated and cannot compile
in the gcc default mode.

pkgconf is a modern and compatible (although not necessarily bug
compatible) alternative that is maintained, and has more features
that are not available in the old pkg-config. I've been using this patch
for a while now, and it has worked flawlessly.

Signed-off-by: Frede Braendstrup <frederikbraendstrup@gmail.com>
---
 meta/classes-recipe/pkgconfig.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes-recipe/pkgconfig.bbclass b/meta/classes-recipe/pkgconfig.bbclass
index 1e1f3824dd..55847fb705 100644
--- a/meta/classes-recipe/pkgconfig.bbclass
+++ b/meta/classes-recipe/pkgconfig.bbclass
@@ -4,5 +4,5 @@
 # SPDX-License-Identifier: MIT
 #
 
-DEPENDS:prepend = "pkgconfig-native "
+DEPENDS:prepend = "pkgconf-native "
 
-- 
2.50.1


