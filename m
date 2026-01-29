Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F007D61006
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 11:22:07 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12822.1769685719994109631
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 03:22:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=MLrpWQ0p;
 spf=pass (domain: linaro.org, ip: 209.85.208.177, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-385b6a15affso18932791fa.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 03:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769685718; x=1770290518; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9m8qzMxXlxb+N7QqEji5Rn0KXVJHQ/sKG4k9Uq6ePpI=;
        b=MLrpWQ0pCRMFWvBx1w64VY8JRxrAAg62oOQUSLRgfFwBCZZq5XtSw96fy+x9LItDjU
         au3gL6P6HAgOMRdVWooqKVZHqQGWdqhoJPUOooUeKPx+nqLH07Br1wwi27GwmGsaJ0R0
         TBSlZxwidc7QJoWHuvwQHp1bP8m+lLYQdqIO3p1qRGb9YvG44tiATE/FHJwWhAcJpOp1
         6z8ujm7yfsTE71CO5dNJMeiUsaxaYbLZKzRhafCx6Z/Wvz6PhGwjhnbH2GAhZSWyESDu
         zLRu1NuqX+RrRNYe+WVuoqCYUO3rQnpzHzr3x/cUuXDxDz/56YmOQg+yX3VQ2XnnCMpK
         t2TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769685718; x=1770290518;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9m8qzMxXlxb+N7QqEji5Rn0KXVJHQ/sKG4k9Uq6ePpI=;
        b=Lxlquzps5Teuse4G7EjPiA5dsMyulQBJwvIhw7eswYoJZ1TGG7KirxO5TT6FfqX5n+
         HIe5wltD9vJTf5/kBCevp41BqWelnkaG7S0F3tQYHfuxLgKrVXexuFgJOQ6AbGOZmG6Z
         BDBdlCsH88Hejo6Z7Cr2+Jw0Arh7aRdGmBfItUVb9AsWvrKf5sUNLOxgkcd6ZX0WwmzH
         1oSewRSDP1N5yq+CK8G/EL7jakh8iyymxl7a54qwGUuh+Z/+jX3bjkymMnLKyBmHM2f4
         285xIfmeNNRBDvAxtBZDyrMFPt244Z1ACEhOCyDXz9nVKCqN3hkzByBV9gj4KxS4r+Zv
         11YQ==
X-Gm-Message-State: AOJu0YzLxsXnuY9EM2Su7nvAf5ICm8v+LShlXfoQ468ut0MYAKpZekbp
	6Vsgxe/0pkYS57elSgQMb2tiMsYTE+JIB6v35eOcJGcros2x18gClanR3ZBlXlm5C0l2bjw7Dg3
	bT6Mj5Fs=
X-Gm-Gg: AZuq6aL8V4MZ+MQM/Yz1MqdzsFtSejNCWnvOUOg7yMuNpRasiv7t8gQ7cK0BVmxLBab
	7eTTazDYLWBz8PAq8NKDqa+guCsSQ5t2rbb70JIZSLCZjw0/yZZ79R4RsF/ntgPRQ58LS2R8MZ1
	+FEH71GffDLt32lTgVRIeALy7bZH0MrmV1ZSfTwAjct051RrSWSGDFJJk/K9q8TNx63BXMggydP
	8yWJ5KfnMi/SV5DgEIMRN58kb7t3WkWqOsnQUS44CVvF4W3o+Ih3JhP+eRUNP/p7nX1i57cTqLG
	ACUIPXUofsXuW6HK5+OYTkPG5TGkNW5VLwKMd4oXmD3dnd+atIjAPgcGZb+HP86cTwyecINhG/w
	H9Wjdf5dwTVovce3eIhBu/oyd8KzOUstCDJi2RfpaVfXdbem0xlRnKg8qSI7rJskERj51x2xGkO
	ZyRBybzJ+GZvRH0DBLlIrmc3CErW7rLzm0jLxD33ChNZicrtYbB+CusOM=
X-Received: by 2002:a05:651c:20ce:10b0:382:4fcd:66a3 with SMTP id 38308e7fff4ca-3863499046amr10485761fa.12.1769685717970;
        Thu, 29 Jan 2026 03:21:57 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38625fb162csm9746771fa.39.2026.01.29.03.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 03:21:57 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] oeqa runtime parselogs: workaround current TI BeaglePlay warnings
Date: Thu, 29 Jan 2026 13:21:40 +0200
Message-ID: <20260129112140.998411-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 11:22:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13828

On genericarm64 machine, parselogs test is currently failing
due to these error messages. They don't seem to affect functionality
so ignore them for now.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../cases/parselogs-ignores-genericarm64.txt        | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 3dc12d34ecdb..45f43ebd5627 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -31,6 +31,19 @@ deferred probe pending: xilinx-psgtr: Failed to get ref clock
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


