Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F772CCD18A
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:17 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.9599.1760104389407174763
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=xhl1uaFs;
 spf=pass (domain: linaro.org, ip: 209.85.167.45, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-57dfd0b6cd7so2349336e87.0
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104387; x=1760709187; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/C1Fcg5gTnXHDh9evDqVrHG57g4F95AbVOApcryRvA8=;
        b=xhl1uaFsO9MBxcpMnB/O2BLwCnByVbbK5caRq0xaBJB5ek+yS2nZohSUouhY4w84wu
         i3Ko3xMoq6O7cjPOtMuUC0XuNVJ3TYHmfSR9J8azLHxzNkYFf+sDA5/hUhBqcOQz3e/d
         b7s7dJjfbHXQyrc0BgUfe8o3dN5qOM+DKb/C5L4eLEynDBHsoVlOFNJxaX0FLl24TsOw
         0b9jk+XXFHmA2q9FoX8AylgntV38cWDJ2buhkKJudT75vHdAvpoSt+5B+x1rexfZq6Of
         07IzWYQOq7cRH9BYyEjiOAWNCETlIPdkAoNWGnd1Rw07wp0zb4ObGZNLs6JPzY9z7Mhu
         Pnjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104387; x=1760709187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/C1Fcg5gTnXHDh9evDqVrHG57g4F95AbVOApcryRvA8=;
        b=tIj4jDt7OAPuMfOLRpyElHbd5+vHtzjQig4p98phd3hglhlwGSwBMkq1zBTW5VmPMu
         qGVgLcPO62V2HToeTjF1ghy/e9EGo0saO4iSE4ii5L0eZHanDUJGutbslKinW1Sc53ww
         MJVDn8YUpAhBQt1hVQsgLuy/dwxITJPuhgKRpthOCO/+6XlKlZTT9aZKW/4sjNbrt9eG
         blmL+InDbYFb400EJneobME1LVdYNzBEoxwB6dByDf5afDbFOdXAGc0zC1Ir1BOBk2gj
         0nNCNUdalPHu3WqWW0JuiWCfFwXaOEOStfMEyVYMic46mh5g6A91yoDyT93BfncbHKwV
         pX/w==
X-Gm-Message-State: AOJu0YyePZzxSM8dpsKGGU178mCScMtZe7lv/2GMDc/DMlETRv11QXla
	sqbieQVfZeWpIZK8Cv0qcId/HjA4pN7yKj38yhGE4V2moh/x9JrUKye9lWuaxp9P/P/K/qcGZqd
	BxP+A94Y=
X-Gm-Gg: ASbGnct/8PUdjfY+i33xvnTWeNIwXoTgnn7OXQE7TTaYLknDIN9jiu9x7PYimIhTjJ6
	URB6Wmz3RHnKrkCb3OKoeJc1VdUDB9JFME6ScwhGCgrLdfxpax1VcaVP2Ggi0+t3zqGyONELjwR
	fUqSWy4yoqfAWcr/50jRIc9trmzJ7n6f+VfTH1WccbJN5WnmctxjdrMTy2Ckc1nZHeY4onwbxf/
	azUblwoLIMLM0wcOzpooVactJoO8C9vxrZeyGHUs2om/AZbASKQToZttl0ukmkTJ+BdmZxxls6X
	QpQt8njohKlMvby2HZI5lD/KkiFEB+a/SJt72zbbHArVIpDJHZyt+GfoFOykBAwtpngIY+7giwb
	ocFWX+RIDkEP5pLR09y0Jqf8W9scP8RDiBZKJCuyPWXBwPBvp8fYQrBLBFLEWHM5a8y81LrqaqF
	eqVqc=
X-Google-Smtp-Source: AGHT+IGBN+gPpEuIZfQ3ZbKTPoIgvfRBSgYe1lOpV6vhjJDIKeTTm08DVYV4QuvEj4rrrptPAFmdHQ==
X-Received: by 2002:a05:6512:e81:b0:57a:7448:e2de with SMTP id 2adb3069b0e04-5906d8e5d75mr2759150e87.29.1760104387501;
        Fri, 10 Oct 2025 06:53:07 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.53.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:53:07 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 9/9] parselogs-ignores-genericarm64.txt: add Qualcomm rb3gen2 workarounds
Date: Fri, 10 Oct 2025 16:52:38 +0300
Message-ID: <20251010135238.1182991-9-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13773

u-boot 2025.10rc2 based firmware from meta-ts
https://gitlab.com/Linaro/trustedsubstrate/meta-ts
triggers some non-fatal errors from various drivers.
Ignore them for now since all other oeqa runtime tests pass
since in genericarm64 we don't build this firmware.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../runtime/cases/parselogs-ignores-genericarm64.txt | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 95a06a869b..3dc12d34ec 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -46,3 +46,15 @@ platform sound: deferred probe pending: asoc-simple-card: parse error
 # Broadcom Rpi4 with u-boot 2025.10rc2
 # wifi firmware issue
 Direct firmware load for brcm/brcmfmac43455-sdio.raspberrypi,4-model-b.bin failed
+
+# Qualcomm rb3gen2 with u-boot 2025.10rc2 based firmware
+# PMIC issue
+qcom_pmic_glink pmic-glink: Failed to create device link
+# i2c issue
+geni_i2c 980000.i2c: error -ENXIO: Invalid proto
+geni_i2c 984000.i2c: error -ENXIO: Invalid proto
+# wifi issues
+ath11k 17a10040.wifi: failed to get rproc:
+# drm issue
+auxiliary aux_bridge.aux_bridge.0: deferred probe pending: aux_bridge.aux_bridge: failed to acquire drm_bridge
+auxiliary pmic_glink.altmode.0: deferred probe pending: pmic_glink_altmode.pmic_glink_altmode: failed to acquire retimer-switch for port
-- 
2.34.1


