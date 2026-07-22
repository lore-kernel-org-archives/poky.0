Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 141C9C44539
	for <webhook@archiver.kernel.org>; Wed, 22 Jul 2026 08:44:23 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.43456.1784709854591167859
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jul 2026 01:44:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=VsYDJXNk;
 spf=pass (domain: linaro.org, ip: 209.85.208.171, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-39c7fd21b63so93781711fa.0
        for <poky@lists.yoctoproject.org>; Wed, 22 Jul 2026 01:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784709852; x=1785314652; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=NqghFyOX5urU5Cz8WhhdPIHmrQNGsqQmejOPnFUKLT4=;
        b=VsYDJXNkNmTEj2v6K1ODCikWshPU2k2pRV6W69IQS1zKTjX8uWQ1EL7uGJdR6g+d6r
         wnGPgl34HJVasNbpa0+eRX+y/mrROO5zOZxyc4ZO2GLr7vsfwrPpa5wWQmsIalg9/p0k
         2giLmtYAoBpWOKktcLzAncLk0I1D39xmNE92zbz2Qmp14mkTGWBY7aWdfRGeemlceRww
         bPYDjVhJwUQeZ60hnHjIPb9lDEynNeYHfdVC+4z2+vNjFE7GWPAmAlhPyIlEybu0GwcS
         y+9zrtvtTiuHkMu/WH5Bj5biwePDCTD3rhKdxPnRoekYrDJGSqHxJwa0xc4bxYdbjpjB
         OWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784709852; x=1785314652;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NqghFyOX5urU5Cz8WhhdPIHmrQNGsqQmejOPnFUKLT4=;
        b=YWUuGa6DSkDu6VNzwMEwrynE3QzW01MlJkZNEgktJv5ZQUb7gad8zhVBU52Yt4ykwP
         mNuMNkeukiwb7zNYBg6GXQf29CdXICID+W9W4jn8LxEGOTFKCvt1kj9SJ/ryXSiIZqfo
         V8+NhELzpocjP4/gynUwmDuO85xzw881Jhra3HEfS2ISqoehp6aB6vLt1WyjW/71qHDW
         LSGxOpWFKqW8Aa4ftpaC+/Vg9ZSWXKU/QpbyNooP+4Z2+4xpwAIcSgW/e7uGhaftXC8y
         jPHbJRxbP+5qwJb/dwDxt495LDQUW8sYPer/G4tyzswWSWGjZBIGYL0QVU4MYNHUbsPd
         eebg==
X-Gm-Message-State: AOJu0YyhImrXU0pp+MjSxKszTewgt7UxsmzbaVYX+o8EGSSK3guC/+3s
	Y5YJZ1oacCIkK9siQrGnuoV92Qg/uZCv2gdQuO4pFD+CZIKYrcM9g4Rm0/Vp3o33A13xOQwF3x1
	+cmUnEEo=
X-Gm-Gg: AR+sD13rAZ0SQ+oVu0P7Gcf8p1AFDJbmbKnni1IOzZrmNOGdYFZtlHZmGtps0YgXkgO
	8RyfFdYZeAoX+66cxxClVQYDs8JwmwCV6Wl7p2C0w8+EO9sZmEHAnEY9JFrB31b54jccKrT3yO7
	tD9eIS8XhOECKUrhdpFwotERvkog0hxiIU+nzLg7fDIW20gcuGqXdVl3XpFznIrXkbCNI+nfVuq
	KBhRTsb0//HRVSGJ2zqxRYotpPHOSX4WCAHke2M3Eh+wKbytL/8R629ypxi4COLoEIS027lIoMK
	6tyZpjUCEioPeB6QyFeriA5lMRcfBambtJ0TXXojMgHhLAmTzzB2HzKRnjc0BiqLPTRk3FLox22
	Qjpfco/GBtDRGlHSUXRePoTm3gchuslVDv3xaQ56K8NB1fyYK74BhSWKLpL33sUNlheGJZcKpWe
	oW91yABXlrXBw5gaKd4j1iPPsgsAJ2YA==
X-Received: by 2002:a05:6512:a345:b0:5b1:121e:56ae with SMTP id 2adb3069b0e04-5b28f8629cdmr3490509e87.11.1784709852325;
        Wed, 22 Jul 2026 01:44:12 -0700 (PDT)
Received: from nuoska (78-27-71-225.bb.dnainternet.fi. [78.27.71.225])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b2a9b8b9basm352892e87.8.2026.07.22.01.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 01:44:12 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] oeqa parselogs: workaround devicetree bug on AMD KV260
Date: Wed, 22 Jul 2026 11:44:04 +0300
Message-ID: <20260722084404.701983-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 22 Jul 2026 08:44:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13946

Kernel 7.0 and later have a new runtime check for some devicetree issues.
On AMD KV260 this issue has been reported and fix is making its way
to upstream kernel and will later be picked up by u-boot UEFI firmware.
The process takes a long time so workaround the error in
parselogs-ignores-genericarm64.txt for now.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 623af74b..f2d08800 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -12,6 +12,8 @@ Can't lookup blockdev
 modeset(0): failed to set mode: Invalid argument
 # minor USB setup issue
 device descriptor read/64, error
+# devicetree bug https://bugzilla.kernel.org/show_bug.cgi?id=221586
+conf-cd: cannot have multiple bias configurations
 
 # Rockpi4b with u-boot 2025.10rc2 based firmware
 memory-controller: probe with driver rk3399-dmc-freq failed with error
-- 
2.53.0


