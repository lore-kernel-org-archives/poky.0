Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36C06D5B155
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 08:06:20 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.14236.1730189175450804659
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 01:06:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=QMTqayzn;
 spf=pass (domain: linaro.org, ip: 209.85.167.49, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539f84907caso5459412e87.3
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 01:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730189174; x=1730793974; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jjP8IqAxS29m78mtA/zeAoViLFNa+DKJ77woMACCx5w=;
        b=QMTqayznYBHdzoaoYbiifK+V/Yc5txXLLsdL63CLCEEGxhrpFfg1JNrTQWrzwkGH6N
         UzwiOrxPGHd26m32ccnpxxPC/GpfW8w+wXXyvkD/GZaoNhBKwFjrbIS7gEKVEpp3rux6
         kE06oDNyuhE8Yl49A++H6l9UDy3vnio/DqJaDtV7JD//ELY9ZvfvqDS/1PuWf/0BPfI0
         pws6/NkLBdJEFL3Ex9vYFdYkK2xtABXpzHEzuwMYCiz+wcjCuOdzAOrXEl1McOcVMFaJ
         Z6+/o2cfP2nLt00BPopdKB2aMahE207gDck0moYAiwtRA48117U485TFwJoAWvs5ES6a
         IwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730189174; x=1730793974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jjP8IqAxS29m78mtA/zeAoViLFNa+DKJ77woMACCx5w=;
        b=Uqqs/9Bhfoa/CzHSML8CnsYMxH9oWAd8u9ya/JA0hIMAAmVj5q1YkAM6gPnMH+FDAr
         /qqCaoAbhyHhi7VdZm3LaOqp29PE4uE0ZYk5XKPOTWILh8UU8NIXVG22g0aLqNLBDTwJ
         73S9ywYWiDxUedsqEM3dp2Ifv+vW1q7j4RZVDHEwFveiZ9KhtaU8bihAopobQhfF6jwh
         mOkKcFlRVOToNRvBO/NrLRJz1vAIFqEMXwxnoqkTPwVQF7XzHiUO+cRQ+rmyXGhAvDe4
         OFmqEcvNEsTi2FR52J9KhfnCaT7eGpbTLs7v3QbKB/37o5TTZeqK0tB1V/4a/O03Plva
         r2Cw==
X-Gm-Message-State: AOJu0YzdY+j3+POzbTZM6UC5ZoHrpCLD+gwZ0RKlN6Ymjo1iX5orl3yY
	x53PP8+53ZAPE7yAQqzDU5YV/djUcErWRCzGQBLUZN7jV2CZA9suzrGtV5sH8zGOzcJeN9v6efs
	UG2Y=
X-Google-Smtp-Source: AGHT+IEHTGUbTMQHXfQoI8eNnZsGAaNEHmj1LANbJBnbqlEPBufMjP1oX7TVY5xegdSG9b32rh387w==
X-Received: by 2002:a05:6512:39cd:b0:535:3ca5:daa with SMTP id 2adb3069b0e04-53b348ebf88mr4578991e87.7.1730189173517;
        Tue, 29 Oct 2024 01:06:13 -0700 (PDT)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a4b2sm1277274e87.52.2024.10.29.01.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 01:06:11 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>,
	Bill Mills <bill.mills@linaro.org>,
	Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: [PATCH 4/4] README.hardware.md: add myself to genericarm64 maintainers
Date: Tue, 29 Oct 2024 10:05:44 +0200
Message-ID: <20241029080544.5486-4-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029080544.5486-1-mikko.rapeli@linaro.org>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 08:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13463

I will be testing genericarm64 images on AMD Kria KV260 devices.

Cc: Bill Mills <bill.mills@linaro.org>
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/README.hardware.md | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.hardware.md
index 0c460ef669..d2cc05f909 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -136,6 +136,7 @@ compliant boards with preinstalled firmware.
 The genericarm64 MACHINE is currently tested on the following platforms:
 
   * Texas Instruments BeaglePlay
+  * AMD Kria KV260
 
 The images built are EFI bootable disk images and can be written directly to a
 SD card for booting, for example.
@@ -147,6 +148,7 @@ firmware (note that this firmware will _not_ boot on real hardware), then use
 
 Maintainers:
 * Ross Burton <Ross.Burton@arm.com>
+* Mikko Rapeli <mikko.rapeli@linaro.org>
 
 Texas Instruments Beaglebone (beaglebone-yocto)
 -----------------------------------------------
-- 
2.34.1


