Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67975CA1012
	for <webhook@archiver.kernel.org>; Thu,  4 Sep 2025 09:59:59 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.35471.1756979996263259365
 for <poky@lists.yoctoproject.org>;
 Thu, 04 Sep 2025 02:59:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=J/PLOBJc;
 spf=pass (domain: linaro.org, ip: 209.85.208.176, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-336c79c89daso7137571fa.2
        for <poky@lists.yoctoproject.org>; Thu, 04 Sep 2025 02:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756979994; x=1757584794; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u1BsJX66GFffiU5iPHkmZS0o9mtCLkvWDdc0BQtVQW0=;
        b=J/PLOBJcY71MI6FAXebqMXKmJMX/T7Y8YXUXWjLSQy+UW86rxvxhVoMO0XHoaysiZE
         MlDxr6PQ1liw1rxnHx5COMrg3Hk2Lyxc6QzqwJ9vbjPf2kkXwa39YhsC1gO0aevmHuIu
         SZ/W94LzN4WLlbYknXPa7HBxH7RXlMSNLZy8Ya09wacFAD5Py8mhKezQ9Ad5X4rG2080
         CUnMNonL4bqMjDQBRs65A0vfTUtPARcoUlrBKW07A/u0JPTk1MXMQVIOTgfhh7CEGtR+
         qqONZCkqn4QnQEVYW52yGrehlpFELmRjDVfBnQ4teMidaKVTvACatDOQ3W9OhYUne5wu
         jeWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756979994; x=1757584794;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u1BsJX66GFffiU5iPHkmZS0o9mtCLkvWDdc0BQtVQW0=;
        b=vopxhQ+bGc2voKKK3wjYa28H8qXNm0ShJNujSRDvIUFRwNYFzpObso15K++OhK/THz
         xvAYVPWtJtB7AseQwMkVslX7fPjFpSbwGL5Bc2clPQNPumBy7L5SRf5pQIlBw6CP8Rwm
         17TBuoS605ja2U30cbbkcvlVmyWn1WQXMUEOeahHSdi3qozVgZbQ9igunf32QegpL7M5
         EmWEsaDOcwMxssTnR/ohCmvrmpFqpTHCuSC7jX5YbhrGe0UDPWzBcddD2JHl3NV/rT1B
         UCMzbEMIla/tT4KovuPtUK0cLOyFYy9aY8Ep4Wtv9y67fJ6JfvNXwp1UnSUDXktIjr0v
         ZnYA==
X-Gm-Message-State: AOJu0Yw8eQdRX+gjsWIGGMojPvXHd0CNzYOckJiUvPIgwXUf2g/5hJU6
	RfpBRdKaZdDH2Hg1EIMnNMGwLUiSZy2Qf8A8OREaIB9g0stHZkFVkw7jUdilrymjrRj8zlmOT7U
	y3hZn
X-Gm-Gg: ASbGncusVBi5FkdlVBOsifEkBt9kGr5UkFYlk6jannE4DEq332/koM/fYWY16D4FVN7
	OmnIPA5qOn+nDQdRNjEIB8r9NRFaqinnu70MTx8Fr8qu762i1ToHJz+C/l71UQAhETOIHueWQkG
	DKQKXoYrC1br9Tofh0xKbNQIalQe2apU92CX7NAHvDk+dvZjXycprpPGRydT/OTCvFqJSsPbv0C
	DIt9HHurIAvHGxgyjd/JIVOJ+5eWlXZQ2nPhmVulwo5ucSTv0Y2lN2Ijv5m3b7f49wSGI7rwNkA
	8BSP1qJ15llM4Azu0vzCdcHLwfJ/gsUzgdGmsnFSDx/Nhhw0hXWb89/0uEDLPYDhHeA33iFv9DE
	U7HbWvAV+FcVlrKMPkXUIS1Xd+DbAhQVZHvXnI36u1LGFR3atBBDiNlc=
X-Google-Smtp-Source: AGHT+IFUiXIHmrkOqXL95mUwnsSN6DR7M4/9x4d8fWM+kjZJiIqb028GMbm+/7c9b7APVrJIrwzQRQ==
X-Received: by 2002:a2e:b88e:0:b0:336:be6a:5a72 with SMTP id 38308e7fff4ca-336cb12c0fdmr43198511fa.45.1756979994321;
        Thu, 04 Sep 2025 02:59:54 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f4c4fff8sm15061811fa.3.2025.09.04.02.59.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 02:59:53 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] poky-distro-alt-test-config.inc: don't override PREFERRED_VERSION_linux-yocto
Date: Thu,  4 Sep 2025 12:59:43 +0300
Message-ID: <20250904095943.2743917-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 Sep 2025 09:59:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13742

This overrides PREFERRED_VERSION_linux-yocto set in machine
config. Use ?= like in poky distro config so that machines
can override PREFERRED_VERSION_linux-yocto and for example
update to 6.16 kernel via machine config.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index da9199dcd4..5f86e36735 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -2,7 +2,7 @@
 DISTRO_FEATURES:append = " pam usrmerge"
 
 # Use our alternate kernel version
-PREFERRED_VERSION_linux-yocto = "6.12%"
+PREFERRED_VERSION_linux-yocto ?= "6.12%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
-- 
2.34.1


