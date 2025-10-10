Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32CF0CCD18F
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:07 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.9597.1760104384355949910
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=dqRmAvSP;
 spf=pass (domain: linaro.org, ip: 209.85.167.49, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5906665139cso2691976e87.3
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104382; x=1760709182; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xlWf0EFpNY8kUMUCMohz7SQUcb+ssKD6MK+UVL3bQ28=;
        b=dqRmAvSPhU7UZBXJFMvXdqVUaYolo8RALt2M1raQpmLWIdQa46gD1ELLGz8EZTwLw4
         dku3B1ry6+2yBF+Y0QFK8aGCXY5a7uuxwn6vWPMReaOKKRrgZcfMZ2kJrlB07IAomq7t
         Np21szr5Jg/+gCzxtTXXihuuMpG4cfBNBQWGJIOqmH4GvFOIyHI9qxSI6HUUSxspa2yq
         vDc0dzt+Q9ITOuW1Uq56N6LdCUo1Y+NjkCUICuzAFtRIAcnTUXnn4P4Z02v5OQWmy2pC
         Tb8hcDmhfCewqmHlr0bYE9zbL0v8Le3041w9LF3qv7nPkDT6WSj47CkNe/31jwRfc9n/
         5RLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104382; x=1760709182;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xlWf0EFpNY8kUMUCMohz7SQUcb+ssKD6MK+UVL3bQ28=;
        b=HueGWFkoO9iPJZEPtAgTcWx65jjAr5M2xqYbgIfkeL3p87boJUj1TWcag/vZjF1Hkn
         itAttfRu+1EoXDiTkVLDDf9pu4Sf9TCicNJJuZR8OiGWASRkkPbJoKVtZ60AGthBD64+
         8qgNvmMfs/WPl+l3LIbtJwPnSphfdumPIGFuJ3YJC2eYCkFkYMl+J6eLN2/a/2nrfV/h
         mE9E1/CNpz0G49cRt7Nw6Fv/cdVHmts6X4j5CI6zLkfNvpOQPrJgNboBLsgA2j4flyu1
         st1OtZWh2k+sTOoEUVNma3SxlpuKz9Fh12hAc/cpKsN4cqjfiDJkLxFIVdtytu1Ra2q+
         YycQ==
X-Gm-Message-State: AOJu0YzZuuRw935Wqi1Sktr+n9WhoaiQYzQnv1DkeHKmxHNN+sqOBCe1
	LshoabHOJ77VGg46wMEy6Zn50+YEuXpHEJAgFKDwBVqjgKqIVZd9LAQOHJ2hsxkYpQZKJY6n8pi
	wiGFmzn8=
X-Gm-Gg: ASbGncvMEd/a/TK0cEabYtw18HmqbAgh4/gqsBx1+nZ5PowYPWZlPeeZkI8AgY861cf
	7rKnkYFgvpuFfTfvBoTKgt0tBSke2Jq1w5ukYlpBbWfKTa5JzCBDVM9mnAtza3fVWSL2Zw+xOYW
	PwxPTywo6QZhXQnzCYO7R59J7Mo/+RTvZqVFrI2PY7jhx1IS/NEYR0Fnhin0/j+Huiv+cN7rMym
	4dETuRlBD++XXTVDGdViR9FTTV8Hhd2tlMQg9TAurxn1bHDpE3eO4KN4Ho8Rdp9fF36XRJrFVWb
	RImySz36Tixq/CI1uJkUCCu/jDw5f1bm/dr4XaT/MJc71JdGkG8vQxxTdY+yZ+62NZ6Prmynj/I
	eRHsZ8lSBDuu65X0YSpLpmf2z5BAJdb37B8TqSSDJlPn0E/DPEFQmzVlhJsx+xJmcWtLVEN4XZH
	rvCcNDGppBKV98GA==
X-Google-Smtp-Source: AGHT+IGFFKh3PeidWcAFzj2rswsA+3mz+c/ZhrLTSZEpvqm6Z3fKAufPXPQ8PzxznCx8JSo1At5PDQ==
X-Received: by 2002:a05:6512:31c2:b0:57c:2474:372b with SMTP id 2adb3069b0e04-5906dd7746dmr3516836e87.49.1760104382405;
        Fri, 10 Oct 2025 06:53:02 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:53:02 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 6/9] parselogs-ignores-genericarm64.txt: add Rpi4 wifi firmware workaround
Date: Fri, 10 Oct 2025 16:52:35 +0300
Message-ID: <20251010135238.1182991-6-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13770

The firmware file is not available from linux-firmware package
so it may be that another file name is used instead. Thus
this non-fatal error can be ignored for now.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 594c94d495..95a06a869b 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -42,3 +42,7 @@ failed writing register: -6
 nau8822 3-001a: Failed to issue reset
 # Audio devicetree issue
 platform sound: deferred probe pending: asoc-simple-card: parse error
+
+# Broadcom Rpi4 with u-boot 2025.10rc2
+# wifi firmware issue
+Direct firmware load for brcm/brcmfmac43455-sdio.raspberrypi,4-model-b.bin failed
-- 
2.34.1


