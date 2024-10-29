Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35318D5B165
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 08:06:20 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.14235.1730189172053882713
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 01:06:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=MQGSU6b4;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-539fb49c64aso8541109e87.0
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 01:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730189170; x=1730793970; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3E/30AxwPKOfPREqJXbKUvZFmSUajSq6eeqCGuJLwtY=;
        b=MQGSU6b4YgLZ3ej61pBdCw7vXFObJuxoCW/3zcBoRySt/bq+BA05/afto7OIVhImqW
         jDRoQvmvSwI1X6kJj9WSfZAuAsEX1H41LkOz5TQX1wZ/cx1SuzfrwdYcU2xKLIbc8Yek
         Sjy+ryCLjoUuZyIEPJv8jK5Uef2HWzJI8tiFWjBBWztaERqSrMDrShJ80zR2kz4thTOr
         xvlmpP9zsvZpTj5yvNdK21aDQbqcH5r8n0aCbLNXYyp5SApEFUs4Y/FsuEt3V7LL58Xf
         V2SgkGAc9oO6oiJ6zR2jjMvq3MdX0ivmFKNH8/DnH4t1e1QDCz7wVlUZUYfcwnApX/8/
         TAbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730189170; x=1730793970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3E/30AxwPKOfPREqJXbKUvZFmSUajSq6eeqCGuJLwtY=;
        b=IsE41XUD04c6uto029LCyLLO1RMpEdOeNXVg04T2g+/Gd8a4rUcicNzPuvSWOBCsHQ
         4N1+Yo/3RY61AgeJTQH003czGCOfxpLlQ+xylRsVpKepC5cyLqg4wrJ/2nkoLfRlqjQO
         /25RQfEeIzRqc6MENS8cmkcmCm/mZX4qCjJ7GvykUcEHFGCqT7ob4qGsFg0gAXVDGcba
         t4dLckaFJlBnNeJsfBqGWoT/alixqBEK46wlVIVymlCs8qD5jgIYifPUP88uyu86coOv
         rVgOFxaH79mEVEYrwnByvVIsRrxyJfH+xrrbNMsqCFZwXKcTFOzToC7pU79jGZAXPz/z
         cNnA==
X-Gm-Message-State: AOJu0YxocOJpm1/nRUA3smvt6ANsYILkWMC+9580eYl1Jl+SsK0xluAX
	hTfm47/oZQLhpntpmJuYhqrFmKW+9TXBp1jcP1QG2Og7mSh9UHaSeAXhYD0ufeIlTMN6RfIuMca
	nk5Q=
X-Google-Smtp-Source: AGHT+IHPKVCcvpxYJjAdzfMr9NlyY9ZMJeg1dOeq52b1Y6IlwY3P1YIf3DofaqjxrHBzS1AbaBx7cA==
X-Received: by 2002:a05:6512:3d06:b0:52c:deb9:904b with SMTP id 2adb3069b0e04-53b3491e062mr8026883e87.38.1730189170177;
        Tue, 29 Oct 2024 01:06:10 -0700 (PDT)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a4b2sm1277274e87.52.2024.10.29.01.06.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 01:06:09 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 3/4] genericarm64.conf: add "testimage" and "testexport" to default IMAGE_CLASSES
Date: Tue, 29 Oct 2024 10:05:43 +0200
Message-ID: <20241029080544.5486-3-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029080544.5486-1-mikko.rapeli@linaro.org>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 08:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13462

They export oeqa runtime tests from build environment so that
they can be run in test environment with real HW. Once device has
been flashed and booted so that SSH is available and tmp/testimage
is available on the test worker, then tests can be run with:

$ ./oe-test runtime --target-type simpleremote \
  --target-ip 10.0.0.2

Sample test run log from AMD Kria KV260 board managed by Linaro Automated Validation
Architecture (LAVA, https://www.lavasoftware.org/ ) lab:

https://ledge.validation.linaro.org/scheduler/job/95628

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index a77ffb0431..a81e4e2689 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -35,6 +35,9 @@ SERIAL_CONSOLES ?= "115200;ttyPS0 115200;ttyPS1 115200;ttyAMA0 115200;hvc0 11520
 # of this machine is that real hardware comes with the firmware pre-loaded.
 UBOOT_MACHINE = "qemu_arm64_defconfig"
 
+# Run oeqa runtime tests outside of the build environment
+IMAGE_CLASSES += "testimage testexport"
+
 # runqemu configuration to run a genericarm64 image inside a qemu-system-aarch64. You will need
 # to build u-boot explicitly.
 IMAGE_CLASSES += "qemuboot"
-- 
2.34.1


