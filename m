Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5AFCA0FE9
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 08:17:34 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.59682.1756196245259689836
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Aug 2025 01:17:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=CFZnt3mB;
 spf=pass (domain: linaro.org, ip: 209.85.167.50, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-55f3ec52a42so3018358e87.1
        for <poky@lists.yoctoproject.org>; Tue, 26 Aug 2025 01:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756196243; x=1756801043; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=65eURQkqAVGllnbdSVp3sRYACsS9mtT81geBtseJcf4=;
        b=CFZnt3mBoxhBCABAGC0ZQf9RLXujUJwkyYp6K18ldjPgfCqDMt8PdgKGXEC4asbGM3
         ZbqcwFBhNwWThKWv9RdMwRwcsbaD+YqfEXjHiBhjJdzmPF0qhhsX0c0TCyMTSO8kwO0B
         9jRUnsJlSIEDnLCzGa9tlJYQMUo7JZaKEi0RCUDVMzykWH8rz4Fr+9uhqoFDOgmHmDDY
         sujkHtW6G/N8sKsZJ7V9WwW2K7baAhIXT8TlnMC8m/5u/ZYCKbdK9gDiSEDyb0cpHfWl
         8Xb0QeWZdj2QlbjIV27XN7yUAL47UeIICVi6vDwHSrVIhXgaQoOPZWGVewfZa4xVSrOD
         BkaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756196243; x=1756801043;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=65eURQkqAVGllnbdSVp3sRYACsS9mtT81geBtseJcf4=;
        b=VzmBBAs9HEa5LfEGmQK3TgSya7dt8Qj0nJzosvpPVzjmOf3bKNRDuxxD0WdetO8hY9
         MGdt0KP1kgp/k5tamsthCunm7Ng8HmEeXswwlEYdIawCNJOL7CAW4ggRd7/xU3duci97
         Y+ZNGb0EddSTpQh0QJyUJxMYJvhSJMtKQ0NnPLvCeGZugXldXLYUHBLNX3nzIQyjDwEZ
         9E9PQpMO2MO9OHV2faqHuPvH6ZxTfd5i5lzuB16rJz0jJ9snF2H0rMwf9+n/r6NUL36t
         G2wx34NrAMF+sxcLzfXpXD3B73pj5aypC2MdwGBUJjPMOSoLwyvzY3PdgFMo3YI2aVZT
         eXHQ==
X-Gm-Message-State: AOJu0Yx48jgH8pBrZi+L7NzczDhkOWqnuaA7O7UtPMzbNLC8MZBzfZlL
	uUINNHHp4HrGe0qtLVg0YeN5leijU6YDpeO+yeCkSRq98L+udti1DmZ3gL9KujNE45v/pSIYaNc
	sOU5erw0=
X-Gm-Gg: ASbGncubhuyvLZNXGt/k+jRtX0Vs9SWpsxGQJJkKyaW2H2tiBEmPy8/k6jgsU7+jvQJ
	uyB8tOp345lnOqSAyI6yi6ZzHkO0pLwDi459/eFtu8ApO+IuBxMzPwIyORWWGMUk1u8VBU30s/e
	sL6ZnJbQKoajtSWwu4w5girqcGGH/ZiXybHKc2mB/XAcHTx082UHYGbXeYAzUDLRmkHx4fMeBKg
	nbCILTbuhPHyeQB7CGNHYgoHigT4VIPRbFAHkOdLLZH5sGZmk1ZoYkgAwPKmbSUyHm20f3IOh3q
	5Bdx4EjJqrU87T7rBPou1bfcJIJe80V6HWMDnjYZqBu7VzSaPL3UdE4u7BWWhl6VJhmdUxmGMCd
	BJU7xeBN3VkHFeCvB/pIuDdBs53Lr+p8Kci/PaRhJ+PY99LYWfYsSt/Q=
X-Google-Smtp-Source: AGHT+IGDOm3lVd5MqwHOEpDG9zdmURDY00qcLaBBL0rUAWm4TWqcEeO0xCK0nwUSj3Io4RkhKJ/8Tg==
X-Received: by 2002:a05:6512:63d9:b0:55f:3ce4:585e with SMTP id 2adb3069b0e04-55f3ce45c5amr2447437e87.31.1756196242980;
        Tue, 26 Aug 2025 01:17:22 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f4148230csm1478744e87.115.2025.08.26.01.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 01:17:22 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] parselogs-ignores-genericarm64.txt: ignore more KV260 warnings
Date: Tue, 26 Aug 2025 11:16:49 +0300
Message-ID: <20250826081650.1940369-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 26 Aug 2025 08:17:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13729

AMD KV260 shows more non-fatal error messages with sato image.
Power management, pin control and X11 errors can be ignored in
testing.

https://ledge.validation.linaro.org/scheduler/job/118932

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../oeqa/runtime/cases/parselogs-ignores-genericarm64.txt  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
index 1e8b1f4b7d1b..3e96a172da6d 100644
--- a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -1,4 +1,11 @@
 # safe to ignore minor firmware issue
 zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
+zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: set mux failed for pin
+request failed for node
+error -EACCES: failed to add to PM domain domain
+probe with driver sdhci-arasan failed with error
+Error applying setting, reverse things back
 # safe to ignore initrd warning
 Can't lookup blockdev
+# X11 fails to start without connected display
+modeset(0): failed to set mode: Invalid argument
-- 
2.43.0


