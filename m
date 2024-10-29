Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CB54D5B15D
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 08:06:10 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.14232.1730189160680594325
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 01:06:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=qUli1Qsg;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539fe76e802so6108740e87.1
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 01:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730189159; x=1730793959; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GV9azITqW+VhCdxZHWvPhp8K49eJQ8JWP3gWlrSA2TA=;
        b=qUli1Qsg9OXcdlHlPNhtcrVA9UwnUqrdcFDuTYIiDeJztjZmUWzDJFwGrmF6c+Np+o
         iSpDGT/dWrd35bCgwL2TeAyNNYYyz/pSHoiJFtW0VkVo5D46g6gFIXaArCidJZnDq+lu
         QOuALbtBBMZlFcMRPK6ZP+imM2EGt3osrs9pnEulIkC1nW2A2DPvWaN3KpMy0S5WWTRI
         wM126FEuzVHX0tAncXIlw301/BjvASqo1M3QzP5hLNSh/FBqO1PclSoYS5J3PN0EPriC
         /CPw1mFthKtojwFEmTRN2SxM9JPR8PGKNDP9PUII2JpFFZEawNxln8BqMxlBlQX0SRLx
         Q6kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730189159; x=1730793959;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GV9azITqW+VhCdxZHWvPhp8K49eJQ8JWP3gWlrSA2TA=;
        b=d6S672Y7wnYaA2XfR8QjKWtvtnE5LpiTdLx++APnYSgjCN+7B2yG2vSV8Hm+BeOCmq
         KeClikphZfifkq4DmuLZQbGlsiFA4tQvF11nHfoCBLkcTxCq8SyfBA7XQCAI0OlGZHHS
         r/i31/dxF5bbT7qTHC1HKzhhS1JYK4blxDztbfcW6UFBS/l4D5IRIULd0GLJmPqgiU6M
         n8QNjLpLvGQaGTl6lED93B44/GOEXTbtUK81i8UcncGJuAaQRMnSZXFZNlgvOvXFlg+d
         +yJTR3ym6PbcSc8or0qydsWeRPq0dCfDUfwkBYRDou4vF4fQO86gRntp7IYVQhPn0Lno
         YuOA==
X-Gm-Message-State: AOJu0Yz3ofOiifyGPLvYnsvBUQgsFdJUMoSAPGPiC1DwZbgwOoUww/nu
	F+c35wxRiHpXPAfLXObCHO0gNpfgZKXF9AePXaxBwPRnKRpExYaNxm9Gt2MuFCZpoSqomYaL4Ut
	Ha0w=
X-Google-Smtp-Source: AGHT+IGnpsi/fZpRVqIvkcYPphqlt7lxi6Oo2WW3ESfZivvrOqjmp+zOWhtxrH5uxmo69d1pGfbUxA==
X-Received: by 2002:a05:6512:31c6:b0:53a:1a:cb58 with SMTP id 2adb3069b0e04-53b3491deefmr4331063e87.44.1730189158612;
        Tue, 29 Oct 2024 01:05:58 -0700 (PDT)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a4b2sm1277274e87.52.2024.10.29.01.05.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 01:05:58 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 1/4] README.hardware.md: add genericarm64 maintainers
Date: Tue, 29 Oct 2024 10:05:41 +0200
Message-ID: <20241029080544.5486-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 08:06:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13460

Add maintainers section to genericarm64 machine documentation.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/README.hardware.md | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.hardware.md
index 6045c3d867..0c460ef669 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -145,6 +145,8 @@ building the image also build the `u-boot` recipe to build the required
 firmware (note that this firmware will _not_ boot on real hardware), then use
 `runqemu` as usual.
 
+Maintainers:
+* Ross Burton <Ross.Burton@arm.com>
 
 Texas Instruments Beaglebone (beaglebone-yocto)
 -----------------------------------------------
-- 
2.34.1


