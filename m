Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CECBCCD185
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:07 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.9272.1760104381032957779
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=F8P9m5Iv;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-57bd482dfd2so2183420e87.2
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104379; x=1760709179; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ptd0yGzngCEMairoxd1S2j3gqxxQcT7CtJQVsXvTDKE=;
        b=F8P9m5IvG4vqxzuUU/Ad7PZqzo3VrH49j1zOj3gJe8JivHi2Eb+LnBvZXShWyHUwtw
         P5l3JMWcVDj7ERLOHJhdcUjnp3W7oEW4nY3IyZK9D7tJLw1OE2dvhLu3yJtGt7LixfE4
         pQNpH4Z/NYqnEt83xZjk1iE7qG4O5akpl+7EbWTOqdrfP5PzPBWiNJKua0LXeoagHCoL
         8s6HJSn9ObgFXnU3w+AVdav7NmNwUio8fDJ1d6nDeSVr0UvQdc3xGNJ+MGyVEWXq+fkg
         c0BrLPAbCBe6kUMaypa/l9plOwk2w36mmgRmkCeMJG/Ut9zTWFeBL+BDHNhZgNvK7jk5
         xRKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104379; x=1760709179;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ptd0yGzngCEMairoxd1S2j3gqxxQcT7CtJQVsXvTDKE=;
        b=UsKGgBphig1K6Nfxud/UUxiboCbfi/4xBBJ36EZR3fvKWt2oVNtkySP3SmTNKNW65I
         svhGdzJw8UdSLfrBFf682XECmhrFAti2xIVGK8KwbbIH0qCVn8zSewZ43nfK7LklQcBh
         Gz6MOl2Gpe4wN77jMc8CcmofF1jVgvv+Ch8GZHjGj5lE8SumHoLiEjL1/PAswYvXkCg8
         FL5W3iYzCnf7bBJaUpnZM0YbuercdenbQotMDxbiGs2bhsClUU1vt24gZ5+z+R2CCjzb
         juKQ0nkMnT6XSAUm0FoNmVFwO2WqfVKtX8JQetTVeoFo81/8DWG/y3+CShYvSdlX/iG9
         tIew==
X-Gm-Message-State: AOJu0YxqO/fjT3RBhkFU1tMywNyoPT86orYQmaS7+s/Lj+7lqEh5VJH2
	GjfgpW/B3Owe4bE0Olt64lXR7ES0f/nV8z/XNSX2nnqhvdIUzQ+t/U1ztBiLkC/uV4tuTdUEyI+
	bYeCqGPY=
X-Gm-Gg: ASbGnctj2oZ1StvrXNbGoLpTNkIpBvcJkJ3tYyDbdNEa28MdA+vj84OXc4c/+Yh5UW9
	2D4AO4y2PFib8JayvMT/tSmIE/wcYFDn8AjQ+TcRSQPvong4vm/4C52YAGqCXoscFpu7leDW27y
	wW/K4Ro5UwlzE5838vjtbzz7Jtk0J+nTwElWz2ULRo2EwQHdUFfbUSDSl+qAcyhRJmghzkeAOVi
	o2zdgoue7Gu2WZmQyYFsqfQgg6Cvfsyl47kqnmNNU/GtFvyFQKyYJNZkW6Ams1IU457FfYFGbTB
	p8xKFvuSK0gmdy8QlKhPkodX6LMUva78sww6APpvXyqm1GfJAhPmONwoc7D/DY3lu8Bx6SeUecD
	B52HT35TDIT0yCve7NzZccQlIQDG5MWPB7bM4FAS2eQMW4SvoW6++d3AbeXOchTuj0tIcbgvUSW
	wyOAI=
X-Google-Smtp-Source: AGHT+IFser2/d+ehadijCX1TPdzcztNm9VJIHDhI3XqFymk6ifQVbdbIz1qacw5F29zVGsj5YJXhuw==
X-Received: by 2002:a05:6512:b85:b0:576:dc00:37cc with SMTP id 2adb3069b0e04-5906d8e65ccmr3018427e87.34.1760104379165;
        Fri, 10 Oct 2025 06:52:59 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.52.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:52:58 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 4/9] parselogs-ignores-genericarm64.txt: add workarounds for NXP imx8mp
Date: Fri, 10 Oct 2025 16:52:33 +0300
Message-ID: <20251010135238.1182991-4-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13768

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
index 2c96ac0651..594c94d495 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -30,3 +30,15 @@ deferred probe pending: xilinx-psgtr: Failed to get ref clock
 # TI k3 am62p5-sk with u-boot 2024.04-ti
 # small issue in devicetree
 OPP table can't be empty
+
+# NXP imx8mp verdin with u-boot 2025.10rc2
+# RTC detection issue
+oscillator failed, set time!
+# uart issue
+serial: failed to get ipg clk
+# GPIO driver/dt issue
+failed writing register: -6
+# Audio codec issue
+nau8822 3-001a: Failed to issue reset
+# Audio devicetree issue
+platform sound: deferred probe pending: asoc-simple-card: parse error
-- 
2.34.1


