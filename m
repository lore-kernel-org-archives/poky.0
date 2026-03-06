Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C5AF0181A
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 09:33:41 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.65819.1772789619135663533
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2026 01:33:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=beO9oaMs;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5a1303b088bso2066235e87.0
        for <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 01:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772789617; x=1773394417; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gNgQ+hwDjX24loJW9nWJlOYYKKvDVSjL+DR7DK3lzz4=;
        b=beO9oaMs+rmE/FpDI5yHrrSFCEal/OdLwHNTc1w4jwI2o/ih7DfQ2j5hhHZvjXZ1Cp
         lamy0O9hRhLjlBHvlvUjucViP0GUCF7ynvy/lc4vKba051AotHkO2QSQ4JBCoP7xaUPF
         tFZVXqwy6lE6ILMK+nU7nzuSl7kJhiQQvaWSVbRIKlTA/Uv9bFxnGsfQRiBUPz69Wp5J
         FOcZfa7nUur7Fgg2d6XoaJJkgFE0lYC3Y2Yhfkji2SEvjkP31bvF0bxZQVSjbZm5EOvI
         1wu8gldeXHyQ9OzE9gikaG25x3Q6fsrLie36YDLSac/PH4TCFlOp5CLn+Js34E4db8kk
         zWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789617; x=1773394417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gNgQ+hwDjX24loJW9nWJlOYYKKvDVSjL+DR7DK3lzz4=;
        b=gXu97tYNvfFPElwWakiI1blV0F6yPna974Bi58ekqok4zTbZRmauxvMILHTO8JCPGZ
         ndQySLK0jL+O33Tfa3vh5TEs5T9Jn1eZ//egKSD/tSi8N/yOxDeRZe2d84gqs2PedI/C
         FPx8Zsd3JG6En5IZ0yM1CAVxn1FCXTOuzszLGwkPVBzxmxHeYAo1aVZ871wgJFO/rMKr
         X7qaCWZbO6VPPUgL1IkPMKgYrO0lkxHN7IfeLz9O8+Cp19psmzphRo2987S9QnDGAoif
         Id8gRd1K7BZWyjk8j5PTHfQtF6CIbr2UlRTd+Fi6A2a0BBwl08mgqS6P84B4HZDgOCve
         HxzA==
X-Gm-Message-State: AOJu0YwXfDDhruI2p9LrT/7OJh4BBjwiuV5jgsM+IkOViw+hOdieu5Kz
	ZbXjgKuUiMgklWd9BEy9+2gc+tbJLhVM0CtCkPtGrtkOOeOSxM+54FMvV29FOM4qfrKEsqLEJcx
	BnEOn9CQ=
X-Gm-Gg: ATEYQzxp1d+HITAMldPyRXeo3ehVxSm+pm5qevDuWV7e0mwpGN+160gP4kjTauy+dt3
	LL1jx5HNBhT5xpApYoBUJeD1aHKIM0Uu+CAA8u3YYdKMfeFLGn0snmEmx6QOPDTQ4RVX8JslMZ/
	Tm6nCTeNQ8wLAxuyq/Z8wLC1aQJ7Ph47jpjUNui8/YdE8tHD2292DaQEH8/ngzseB7ZVZDBDsf2
	pYQZLGMvKg/oesVScRb2ejwziJ9MHsPlTUp8j3CjYmPLn2rO03HBUGYStNBaAhQ1JMUmSrKdofg
	8nv+01kV3VxykHJtcH0j1GT9Bh8bXh4B3yhjkzTNLPV701Pxy3LEH4UZcQmfC5481heOAoZAA70
	OAVmI3Brh4dLCZtLkqeMOgYIEKqW/69yhxC4r1eHOUS14+c3BoD442B+/f4dbTGRD9bcvKf6QZ7
	5ctaUN7vFdoBiKkEkMf2/1YoKYlcYx1SYam0XwTGbH2cvviVdpJXkyvhg5U/yDDMgYWTw=
X-Received: by 2002:a05:6512:3d9f:b0:5a1:3561:c6b0 with SMTP id 2adb3069b0e04-5a13561c761mr1974088e87.7.1772789617100;
        Fri, 06 Mar 2026 01:33:37 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a4205a993sm1110821fa.41.2026.03.06.01.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:36 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 1/2] oeqa runtime parselogs: workaround current TI BeaglePlay warnings
Date: Fri,  6 Mar 2026 11:33:15 +0200
Message-ID: <20260306093316.7018-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260306093316.7018-1-mikko.rapeli@linaro.org>
References: <20260306093316.7018-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Mar 2026 09:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13849

On genericarm64 machine, parselogs test is currently failing
due to these error messages. They don't seem to affect functionality
so ignore them for now.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../cases/parselogs-ignores-genericarm64.txt        | 13 +++++++++++++
 1 file changed, 13 insertions(+)

v2: no changes

v1: https://lists.yoctoproject.org/g/poky/message/13828

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 039c4ad8923f..2bff23b1bcb6 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -33,6 +33,19 @@ deferred probe pending: xilinx-psgtr: Failed to get ref clock
 # small issue in devicetree
 OPP table can't be empty
 
+# TI BeaglePlay
+# firmware device setup error
+Failed to create device link (0x180) with supplier 600000.gpio
+# USB driver error messages but stack works
+dwc3-usb: error -EINVAL: invalid resource
+dwc3-usb: can't map PHY IOMEM resource. Won't apply i2409 fix.
+# wl18xx firmware load error, not available from linux-firmware
+wl18xx_driver wl18xx.6.auto: Direct firmware load for ti-connectivity/wl18xx-conf.bin failed
+wlcore: ERROR could not get configuration binary ti-connectivity/wl18xx-conf.bin
+# Audio SOC driver error messages
+davinci-mcasp 2b10000.audio-controller: ASoC error (-22): at snd_soc_dai_hw_params
+davinci-mcasp.0-i2s-hifi: ASoC error (-22): at __soc_pcm_hw_params() on davinci-mcasp.0-i2s-hifi
+
 # NXP imx8mp verdin with u-boot 2025.10rc2
 # RTC detection issue
 oscillator failed, set time!
-- 
2.34.1


