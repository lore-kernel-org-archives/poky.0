Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02BCBC10F1A
	for <webhook@archiver.kernel.org>; Thu,  9 May 2024 11:50:30 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.8365.1715255423926679121
 for <poky@lists.yoctoproject.org>;
 Thu, 09 May 2024 04:50:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hJIdqkE4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.171, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2e0b2ddc5d1so8973461fa.3
        for <poky@lists.yoctoproject.org>; Thu, 09 May 2024 04:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1715255422; x=1715860222; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=YKryYXZxjEYC8UkxKdlTNNsFRkZGL4U1bAqbzP06yjg=;
        b=hJIdqkE4YkOKt5DB9aA3PfZlDp9L49fAB8KYcKAHhz+EKhxWeJS2qbIZi43N+O2EQi
         +a30r9FNEXObVC3UA00FVzQ57vuAPGr0ZNQcqsQ+b0nHRKwdMcPqP81Km/l4sHw5ngT+
         8JEmiW5zjt+msvVJ6stOMONYDX0usj3Tvm+bw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715255422; x=1715860222;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YKryYXZxjEYC8UkxKdlTNNsFRkZGL4U1bAqbzP06yjg=;
        b=Yvb5zcyrecHqdTZZvHaM1kdDJQ+4mS9WFnWhMzc6IeiQoGIiWmi7IU5nJ6xuevCk4S
         xNC7jrXMyO3AOTASjcEDIo89W/8Ol/7MSZ3fuqUupgBL4Mdf+YqhRSTt7q9Gojcwkdz9
         HPXcuZdUehNhKBLDtmO7jeGE2XA7N35SnU1E3Zv46yXvqr7ogbaclBP0Dp2A1FrEGk9H
         3k4eG8GpZCTDr0x9OmhliRkDqLCZ2ssgkXEzJgqY/V8Th0uiTYZVTN49GqLm0hu9em21
         MweIwMDgBnwPpfuyDyEQZTQEorxM2N+A6jWAAT/QXr39nJHO8Lq8iHlwFNM40GcYjB7e
         e+dQ==
X-Gm-Message-State: AOJu0YybRFfLFFgiFD1NHJxIOgYWnVLSAlvKUYH/oEQIZbrDo09IoXhh
	6JQH1Q+QsIkgbjRkOsoUAtf2nETS330dTa3rUHLtEN45ILPnZWM4faY0dt7VfEuD7WLz2I3rG1e
	zq50=
X-Google-Smtp-Source: AGHT+IFu7L0zafOFxuvaTN3KyP2Uc5RUepDRnf/65S53AwyW4RrmNvzfxv85bRiaapc8upPOBwr4LA==
X-Received: by 2002:a2e:bc08:0:b0:2e1:f199:3853 with SMTP id 38308e7fff4ca-2e447ca20fcmr38689341fa.47.1715255421451;
        Thu, 09 May 2024 04:50:21 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:a95b:1bc1:5128:ffbc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502b79bc8esm1516405f8f.15.2024.05.09.04.50.20
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 04:50:21 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] oeqa/systemd_boot: Ensure ssh-pregen-hostkeys are available for the test
Date: Thu,  9 May 2024 12:50:20 +0100
Message-Id: <20240509115020.3922389-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 May 2024 11:50:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13348

Since ssh-pregen-hostkeys is now restricted to qemu machines, add in configuration
allowing it to become available for this test on genericx86-64.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index 6ce9a3b3f84..6fc6925f694 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -18,7 +18,8 @@ class Systemdboot(OESelftestTestCase):
 
         # Set EFI_PROVIDER = "systemdboot" and MACHINE = "genericx86-64" in conf/local.conf
         features = 'EFI_PROVIDER = "systemd-boot"\n'
-        features += 'MACHINE = "genericx86-64"'
+        features += 'MACHINE = "genericx86-64"\n'
+        features += 'COMPATIBLE_MACHINE:pn-ssh-pregen-hostkeys:genericx86-64 = "genericx86-64"\n'
         self.append_config(features)
 
         image = 'core-image-minimal'
-- 
2.40.1


