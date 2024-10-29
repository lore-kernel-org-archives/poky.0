Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31875D5B164
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 08:06:20 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.14115.1730189169806904202
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 01:06:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=jlbjiy31;
 spf=pass (domain: linaro.org, ip: 209.85.167.45, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53a0c160b94so5698515e87.2
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 01:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730189168; x=1730793968; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=asH290j0ypKIOxir/B/9wYxLAY5jEgjHEVhdmBo8vv8=;
        b=jlbjiy31SBYivp+oUlqmlWsHL1wIHhN7GXis478ND5nW+jrfWL5JL97p6xhvtf52bc
         yI/ovXZwzx7hjfPrnIdzBQRr4TTBn+S3+WI3SUEGJV6mNPqtciwgClnjtxn5PvRHUZt2
         bAO2cRJyt0RSsRIkv3uq10BzPTxrzN+XCl6zCYwHB15FtUwh0dlMi4YPIH+PhqosVSO+
         xwPeC8Qn17goSdnCi44SQCEnpVspsGlR8H9C7H7gotT3mfHiMKAbfk4wAoK8NrdgbPfd
         7JX/ocdGRU4T6SwceI4dxkXYJR1EsuORFHsvwmrt8VBcg1YPQo51tb7TT47orB2RzH3C
         JMLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730189168; x=1730793968;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=asH290j0ypKIOxir/B/9wYxLAY5jEgjHEVhdmBo8vv8=;
        b=juU7k8P/PN/cpznzf5GyHSqS2wkdfxoNkps+hS88wpXH6qPO26ov5WRr5aBPgK+rbA
         3DtP5gOL97gX5ZTCHdGSyyAYPY8IaHRTqYLZASIGQYhi7eWLzIKcSF9IQdhnxuBbQ/gM
         2ecF+ztWTKpMJxOQbrjv16FP5bem3SgtMB2RjwZU1o5RUiAKMgjspmQa0TfQnLj9y4cb
         q4Et+4NfuvxpGbb+tD7U0wS/g2+S2KSi+jpATgFuUJGxr48Yc5COjyd8i8c7+zK3oQc+
         JNg7UyM+Z+ZiYsWhJbNNtfeMO0VPPJ+S6Bd4tYW44wTFDqQiwiCd8zUe3xuo7aCaszKt
         UYbw==
X-Gm-Message-State: AOJu0Yx5Jk++Jb/6Mu/88hCCUw4QjwAKsY9PRjWsgQ4YgbWmmNVBvAWm
	iNoNMV07qSbUaZqY0qdg0s/OQQYHlcS+7Ylsa5j78sqAQBss+tRosREq4y6A3lACMhgqTiTpC3O
	ZB/A=
X-Google-Smtp-Source: AGHT+IFsDVu/GurTrMO6ILQ93SxqIM6Mb1w9ZUiCdxjM+m2cfWj83PnlCl/bIegbG/vw84C2DxTDig==
X-Received: by 2002:a05:6512:398d:b0:535:68ab:7fdd with SMTP id 2adb3069b0e04-53b348ceb33mr5157577e87.19.1730189166664;
        Tue, 29 Oct 2024 01:06:06 -0700 (PDT)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a4b2sm1277274e87.52.2024.10.29.01.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 01:06:04 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 2/4] genericarm64.conf: add AMD Kria KV260 serial consoles
Date: Tue, 29 Oct 2024 10:05:42 +0200
Message-ID: <20241029080544.5486-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029080544.5486-1-mikko.rapeli@linaro.org>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 08:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13461

Current practice is to add new device serial devices to
SERIAL_CONSOLES. Enables testing and test automation with
the board. Note that SERIAL_CONSOLES get added to /etc/inittab
and missing physical serial consoles causes respawn warnings
at runtime:

INIT: Id "S0" respawning too fast: disabled for 5 minutes
INIT: Id "S1" respawning too fast: disabled for 5 minutes

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index b6dfb8042d..a77ffb0431 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -28,7 +28,7 @@ WKS_FILE ?= "genericarm64.wks.in"
 EFI_PROVIDER ?= "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd-boot", "grub-efi", d)}"
 
 # Try to bring up a selection of physical or virtual serial consoles
-SERIAL_CONSOLES ?= "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;ttyS1 115200;ttyS2"
+SERIAL_CONSOLES ?= "115200;ttyPS0 115200;ttyPS1 115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;ttyS1 115200;ttyS2"
 
 # Allow u-boot to be built for use with qemu-system-aarch64.
 # This u-boot is _not_ suitable for use with real hardware, and the expectation
-- 
2.34.1


