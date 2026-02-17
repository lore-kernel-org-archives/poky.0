Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B020CE68143
	for <webhook@archiver.kernel.org>; Tue, 17 Feb 2026 08:10:14 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.7729.1771315809713665428
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Feb 2026 00:10:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=r7/AL1nt;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59e62834439so4546912e87.1
        for <poky@lists.yoctoproject.org>; Tue, 17 Feb 2026 00:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771315808; x=1771920608; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wcJoDiSdZtYyieUNTUEgqRM1jffdrJFTVQr7EqPMR50=;
        b=r7/AL1ntqivoMofQmtct8Yygjqt9UeetTO3GeUjtN2b6GecmaG9/OGhnKacZJYFL6D
         PNs+bT5YqvxbWLBqlgsyzvpM976QfOwR22IcJ9sfnQKgTZsCwTRX9R1MyypJBcOYK+eO
         itoQCKU8XLuVO5/1u2gc9bbH0CCGtIWvUzd6EF2iCiJ3uymFVpSIwWbZAKP4VPS5uyxf
         hzPsWk+6s6LRkWNrLCrPd2CaO7fQY9Un3is/YorZKyzebuED0CYLoVKsqhXcuLX2E91s
         N+bczxGHzvIBe0avDvgCKcq7zNZB7Eo/7Ke+NOaTwkUTp7gN8z0zmHGf69Fmrvb7wEiq
         qURw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315808; x=1771920608;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wcJoDiSdZtYyieUNTUEgqRM1jffdrJFTVQr7EqPMR50=;
        b=IJUV45CcozJUNcxpUOmsXrlKMYAD9bgD4cQ4O6gFHAKDVBE8IimxWnoSEItplP4PjK
         uYuBnjMRRDr1OEG9e10xIRsY0LJ3rQyyAYviKUnsWVu1v7452jhgb/ReTif2tTu5l+nT
         6qVhYOwwj1OqJ7Eg6CspEHQXw9SoNNa1bSsieCKj5CnexqCA/4jvcOKeCPi8+HcRTmhd
         OT5WdXLKr44aW+t1pggGzOES1jhKrGmcSkRzZViezrnWKEgSFnq7Ygho9zXDzKN4AkWL
         ad/tH+Bq+4JiI3S3ALZygoKqVQgor4M0IYe9LtiijIg6njQ+hrU6/wGGGzgCcp9IgNzv
         odtw==
X-Gm-Message-State: AOJu0YxLIcgyv5nbQUUq6/HNsn+Ml0HoUvrxlJ8IDIfHOxSfY4Qv+qv/
	YGRYFyx0hX80u9Casj+fySrtK7RWs2vvABMYgn3UYYhOVcIR4DlEk0iSFvxRCTbOL/oevOS4f7V
	wuLcnETs=
X-Gm-Gg: AZuq6aJxSTplYWRlfzpPkaRQcky3ECm+QoMbXip677afuncJxqHCjfhdVPMjwYiKY56
	cJn2h6CpZyLXx31+vLlUmFWXo3uCSK2BjUCiVpC5vkT0FvB2lCALzGkoha1VO3BPoOerYb/aaoq
	ZgvGeSjDejUTPwKYY08nQxb68vX+nUhwOX6tYrWlOFHw1chC5yosoSf0mDY0gsqzjSvQojvdBkq
	+QoLpkpVmQhtw+uV+T+qnexeWGKquscjIsE8oqqmYv/SK9PXqXJjvTS41CMKsqqbXofAqUXcw+Q
	G57EUETHYEz4y31yEWHU0pSRMyI0lQjgvnsr8EWTPDt8si7AVJfSG/k2INv7Vhi85K1e48X8w7F
	eX0xb9z0oMAazGTWsaGzTybmHwCghoYF60bhV/ds0wGqrEqt9wD4t7jWEOJ4+/OWC8ISj0MOD7J
	PdH/kOUrMtmVNSua47p05Lqemd8zc5q6vV1ux+FNACOe9XHeHIFy9oI7te
X-Received: by 2002:a05:6512:2242:b0:59d:eab0:c836 with SMTP id 2adb3069b0e04-59f69c2909fmr3892514e87.6.1771315807469;
        Tue, 17 Feb 2026 00:10:07 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f5abfd7sm3633438e87.62.2026.02.17.00.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 00:10:07 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] oeqa runtime parselogs: ignore KV260 USB error on genericarm64
Date: Tue, 17 Feb 2026 10:09:50 +0200
Message-ID: <20260217080950.2131886-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Feb 2026 08:10:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13836

On AMD KV260 the USB 1-1 driver sometimes throws this new warning at boot but
continues and USB stack works so ignore the error:

usb 1-1: device descriptor read/64, error -71
hub 1-1:1.0: USB hub found
hub 1-1:1.0: 5 ports detected
usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
hub 2-1:1.0: USB hub found
hub 2-1:1.0: 4 ports detected

https://lists.yoctoproject.org/g/automated-testing/message/1525

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt   | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 039c4ad8923f..88fb087fb96c 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -10,6 +10,8 @@ Error applying setting, reverse things back
 Can't lookup blockdev
 # X11 fails to start without connected display
 modeset(0): failed to set mode: Invalid argument
+# minor USB setup issue
+device descriptor read/64, error
 
 # Rockpi4b with u-boot 2025.10rc2 based firmware
 memory-controller: probe with driver rk3399-dmc-freq failed with error
-- 
2.34.1


