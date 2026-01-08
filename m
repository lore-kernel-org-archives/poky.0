Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B76D1D46A
	for <webhook@archiver.kernel.org>; Thu,  8 Jan 2026 14:57:02 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8161.1767884219182886306
 for <poky@lists.yoctoproject.org>;
 Thu, 08 Jan 2026 06:56:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=JTYfkM+S;
 spf=pass (domain: linaro.org, ip: 209.85.208.169, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-382fa66fa9dso18935561fa.0
        for <poky@lists.yoctoproject.org>; Thu, 08 Jan 2026 06:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767884217; x=1768489017; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sTEftUj1hLGS+BuVkQiwtUWm/IDRDh0OU3bM1ySl6oY=;
        b=JTYfkM+S7I7RB4cZ9ucqX34yQOKMWxdVkDqLI+94mVWTx01C1AWa8KLpFvenHBMgNY
         cRT9tHs6mSXbTosebjDghVZR0bRDWjOWNTBToQtEsh17lF9ZVeUiZbHop5CTmyr0FcAe
         TE1AEMo0uc+Xwe4yx0TTpC22pn4qSRGBhU/F8cWYGTXepAZjqN749zwX6csaAD71SihQ
         bChhAGRVJDfBaYwEv2gKE9ndf1qYeKgdOx1t7mj+pUKTHjqEu8iXq+xqPX1yE2CvW88C
         +dv161yWyIbwh9xUc70moc3ARwR+FIVEHecDySlUWfLClVRC/RuI4hCoOKFc9Z9Ex43i
         wHww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767884217; x=1768489017;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sTEftUj1hLGS+BuVkQiwtUWm/IDRDh0OU3bM1ySl6oY=;
        b=Nns8PuvzE9FZxrn0s1HJIBNcZS+gJdv2NbwiXsIN8Xt9NEYJoFh99MT781nB8+4lRN
         VDYq4Mf94KG4c8WUPBK7IGE1EP27XIdSoaJZ7sJhMKwuRxNddiLc3YgkGfWibLbpIc8E
         AEsOqy+c7xKZ+e83DlpPgxThbPL50KSmfBLvZUygxmUxPbGQw1UvQj4pLBJlfZYf67zh
         O5qujbkBTgLOr7Ea/ACVs7JBsg7p0Vky2Y7lGzNhio2aDwGsZoEW46aXEtlxX3Po2tVa
         wPFFIrJdMCseKJflNXFff4k1ZwPEwVIKKgxKTR1f9DYW92us2o9n4Pe4m0W+MHKA1gSk
         pCTg==
X-Gm-Message-State: AOJu0Yz3YrK9zxBRPI7vUwTH+y7JHFiJ1O67p2U695lB5tO3xHJNfrof
	Aaw+TzReVaojIsl9UKNHtWlv6Unu3vxose0Iuv99lWV1CD6sO7ERoHlhkOyThIH81zVNQtIEu7S
	MvB0WToA=
X-Gm-Gg: AY/fxX7rY1YwDhviVgfLUk8XVnT9CDhhzBARtJSsXlyMfaOVjGU6o/z3r6mFAdfr6we
	lyX4LcUlchPSrOKRHT5SwXJRSRug62JEX6EJAv4KvZh3PWa0AKXufbkkNESESjGn1NYChOdXHM6
	+Gki9D7G4R48Rh6mwtYTIdbbSmhpCGZzt6Yjq037mFL1sYGGMQ69p75HqGWu8rad9rFZjMBkALr
	SXUpyt8vsikk1UqvFzeTeBo3TAgIO+hpj/lNWuck7ag+yzpXhFNXez9ZTVD8NahKw+sfyT4Vh/j
	NPlM1Uamrl+L5nN+/RkZAKA58vFeWTSZDytwgFRr25zp48jE4eJzHALpRpxhfDFFKi5IJOLOJ6M
	FO0vq8/fVy8EjboBTznabG7QWEuuEO2M7ur8qSI2dehtezV0THGgbZ2RUmnZMNUX3sfHCLEnWsl
	HTe66TY95zJSdd2VBw3wgvyZhF90G5OMhx1CRnbRgJzPTO
X-Google-Smtp-Source: AGHT+IG2yfoa/F9kxKuqxH2NCxlM0xeOQR+66jvtygCiYl+cH0uJiuHSTV6UJz13hjCLP/Lw20txVg==
X-Received: by 2002:a05:6512:3a83:b0:599:fe3:78a with SMTP id 2adb3069b0e04-59b6ef05755mr2187012e87.6.1767884216897;
        Thu, 08 Jan 2026 06:56:56 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b702599b1sm1290797e87.32.2026.01.08.06.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 06:56:56 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] parselogs: ignore panfrost fan error message on genericarm64
Date: Thu,  8 Jan 2026 16:56:45 +0200
Message-ID: <20260108145645.637369-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 08 Jan 2026 14:57:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13816

Some devices don't have active cooling so this is not
an error:

https://ledge.validation.linaro.org/scheduler/job/125155

panfrost ff9a0000.gpu: [drm:panfrost_devfreq_init [panfrost]] Failed to register cooling device

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 3dc12d34ecdb..039c4ad8923f 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -18,6 +18,8 @@ platform hdmi-sound: deferred probe pending: asoc-simple-card: parse error
 deferred probe pending: rockchip-spi: Failed to request optional TX DMA channel
 platform sound: deferred probe pending: asoc-audio-graph-card: parse error
 platform sound-dit: deferred probe pending: asoc-audio-graph-card: parse error
+# no GPU fan
+Failed to register cooling device
 
 # AMD zcu102 with u-boot 2025.10rc2 based firmware
 # optee not available on all devices
-- 
2.34.1


