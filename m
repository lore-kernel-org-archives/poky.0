Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24A73CCD18E
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:07 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.9595.1760104382870003229
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=cuSRJoLo;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5906665139cso2691944e87.3
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104381; x=1760709181; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k9WJyznL/w/cNtcBLq/QtOKz8nrxD0miC5RPmi8fm8o=;
        b=cuSRJoLoRCIjOzYvMwtclf9e4uGTS4BbYqYJhPzXTrryT+e4B2brq8IFpUIX21RZS6
         Nf7RgdE+hEogivMzTPNorZIZOkJuYtAOgghFsVkrM7KXZ7yYHDahu6fGpxvlF2z7S7aU
         dLRLidCsLTdGMxeAbYLbZ9Aeid20eVcIfQD9P3uZSvULE3idvRI4yoayo2Xk69JD96tp
         QxU1wRHe3JHBadWmnWXWhw/vTJGbv582rDKhR5SoSK0IlLDqMHv55LF0kji3yCUj2+wf
         XppJvRVXiPQRCLieyWm1tQTfJXF80Onk9LEeFBdeQVa4v/INDXAelOC3QpVjQuHorwM3
         P5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104381; x=1760709181;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k9WJyznL/w/cNtcBLq/QtOKz8nrxD0miC5RPmi8fm8o=;
        b=chHXJGL1FzPE4q6XZEMCHFEPLxbg3ii/fTDLaT3vmD/ZkNb7m6flWR4APO1WoiDR7C
         aIONKc5zLE7MPKdjPkhuVr9VjBCvN4Q3nzimcRmuu/vNxFp0DzqxhsPYyDA/LpIi8T2g
         zLP7G/cZZ3o73KXcDqcMvCQKqX4nFmZjNasIhIPOV99YEu/0LTWQRBQN1SbWvUGqQsA6
         YguXD7CbegNA58hK+K5cKJ54QxZm4J6cWFjMMi/qwvAmUxH81r01G7UknJzPEwH2rznr
         DbiW+mYIrnSto9VIkpZ9z3OjEdPbkg3+2o5pszX9I81RQ04aHuyXeCEGA/TnkUZcX51H
         TITg==
X-Gm-Message-State: AOJu0YwmRBhhw2/dOomPqhPQqrj2oTQvznC5fuQ7XJYtDW6ao+7zuxOu
	3+kkMIBPppjeOtaHI+5xLmGR5HAMcPV+GXkU7ZjjfQtdOgPNJ++xHaGjgfA/BVEwYljIp2v+l1J
	uO/n85fk=
X-Gm-Gg: ASbGncuJHsWbcD5f1G29EiERD0mXEdSrZXYHomUS1c2hWDBcKthvQlUfyC3ORVou6Nm
	0DERZbfo693jT2fJ9wZIiWxHFLOsZLPtyjzXUKGL06wVpdhd/vEtNsa8b3PliK8UTHgfojEaASm
	rOOZQzhqflG8j8JZ6wDHUjRhZUla2Fp/lN7oHKLQ+6kztCv1ro6hGWq9UHP9g2PWOJ91Z3oNEDu
	WgSR8C7iyV0Og7BDZ8RqDmYcuyoFYHezLE0aDeKebqP1nvsaiMOLVGPEEo8GqnPCTWzq1ypp/Ru
	XvDcwhlRfk1rFLlGmX9tpYmbmwEQ7UlpQguJvPu5yQgzhb8iGs7sB1rname48cdu/sOe0yuaKqa
	mL6ZEZn1Bgfsks4eK/1Tm3t1aFhlr1K2tETbzd5hHU6T8mi5MVQueecy3b94jonWKmGBqTrjpui
	xZgEETjWJYQ7zpsg==
X-Google-Smtp-Source: AGHT+IFa5whqmEOBr3nEA48WQ1ojTXYIabHGAqxT9aS1AhNk7A2nNWajJtnuVHCN5vkiOk8Jh3zWdw==
X-Received: by 2002:a05:6512:3a92:b0:55f:3525:3e52 with SMTP id 2adb3069b0e04-5906dc0d3f1mr3376441e87.14.1760104380966;
        Fri, 10 Oct 2025 06:53:00 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.53.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:53:00 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 5/9] genericarm64.conf: install linux-firmware-bcm43455 to images
Date: Fri, 10 Oct 2025 16:52:34 +0300
Message-ID: <20251010135238.1182991-5-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13769

by default. Fixes parselogs oeqa runtime test failures:

https://ledge.validation.linaro.org/scheduler/job/121516

Central error: brcmfmac mmc1:0001:1: Direct firmware load for brcm/brcmfmac43455-sdio.raspberrypi,4-model-b.bin failed with error -2
...
Central error: brcmfmac mmc1:0001:1: Direct firmware load for brcm/brcmfmac43455-sdio.bin failed with error -2

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 0c78960199..7738e71c4f 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -16,7 +16,12 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 # Install all the kernel modules into the rootfs
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 # Install selected pieces of firmware
-MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-wl12xx linux-firmware-wl18xx linux-firmware-rtl-nic"
+MACHINE_EXTRA_RRECOMMENDS += "\
+    linux-firmware-bcm43455 \
+    linux-firmware-wl12xx \
+    linux-firmware-wl18xx \
+    linux-firmware-rtl-nic \
+"
 # increase default size since we install a lot of kernel drivers and firmware by default
 INITRAMFS_MAXSIZE = "200000"
 
-- 
2.34.1


