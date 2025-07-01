Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ABA2C7EE30
	for <webhook@archiver.kernel.org>; Tue,  1 Jul 2025 07:35:11 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.4667.1751355290199655174
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Jul 2025 00:34:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=c0CCk2/I;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-553ba7f11cbso6240009e87.1
        for <poky@lists.yoctoproject.org>; Tue, 01 Jul 2025 00:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751355288; x=1751960088; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CU0Lo3AnxyPPQVGnkO3H1wUDTR89ba2Nud8RN2C4dos=;
        b=c0CCk2/IgZ/gq/H/irCcHcJAYRZECi+KN6yDDjEvtMPUNu3S+HbSDfRttwF8+WnQNB
         z+wARpbCMkwg8CL0ztbxxGTRGBq48FDTMd/zrdgqEusM06l/iJsqg/LmKqO8jT/Gs6u9
         5Pqi3AyIxfh/Dd5Cd0Y5WnO4l2PIMrNMnyBKXkEexutQxJnPtQ++IpkP3wkEVUJP+Ucx
         VeklGLuRXNA3sZX8X+7rD1u6FHwMrvsiNPVgLi3rYaEEZosG+VNaHapmRtVnNsGKF5zB
         52uVi9LmFAs1rrLNtswJH2gbCgwjamyrm+dBM4gm8dwfZI3lgczrOexm3cRwIktzWDSS
         mj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751355288; x=1751960088;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CU0Lo3AnxyPPQVGnkO3H1wUDTR89ba2Nud8RN2C4dos=;
        b=d29DpN339iAeJ7FYAfiwMpeD+FWqyuyuKErmqfqeULVjaiRgYe3u5PAGPX0SbDHGDx
         jkRGhYnmEvxrfdQ072pNrpsUgm9LbZosRIZwV/uCGkx6oHS7RtQTb9QbVhaSjkrDtOGe
         pWT4CUsi1knZNaScmklint3En60yoGIDyrjLCujgCCcSVL602jLZQ9wNnlsOR1H6Fqz6
         6sieqZ1c2xUxAlksVmDtDPJNTALq8iPhns+BrFe61JP6NPC+blfakL+WM806hBuR1DuX
         5ev7aER43PldeQsP1LU+jmG2txSKfvMA9YhLZLawMvNiFML9WqRpy+kTphJVJRxnfmkJ
         i3zQ==
X-Gm-Message-State: AOJu0Yz6ZEeRom+D4C+rGhQFqzMXZKAqh6WqyDVO87a3DVra6T+votIL
	qvL14Zw2hkrNS6poTExgZONGaiO0K+nN3g+ntzosvwcNVPIvJBii4wPighsLjF4UbzbWlpCPz6E
	bzk3LUxU=
X-Gm-Gg: ASbGncuoYpLNyNnjPHKwRZqn58ls73JnDenn33YKTAyIddmUR2h+uVNDIQJZUETtVA3
	kzO4OnwczWJinJ1JYWgEsW54bD20e8N3B4lsfxE+8yd0/jzNG9xoSBE4ie9xWNo8K7YiyPthIR8
	gSYwV7pQ9xtW2CY99TbITEv+Wh2Y3eNrT+NAzRBE1R7aFidRpDP3Mi+9Xy9cP/MbOy09WXULFFQ
	47lbn00gkxmo21ycVU0D+kVUrMUGCxlgY80pu5qAoip168QR4os+U0uiQtqfo+0S/amphPxtH7e
	kbaDePaCaFb7raWOh0h1/cADUMuENkEcffHLEB2SQ7lLMcVwIXqH51r2imFOw/uDjBxWM9DCYP9
	CPoVEMAMk4kTArOxhKbsNDTVXB422Gbj1ji2zd/I=
X-Google-Smtp-Source: AGHT+IHron4AryTPrdYgpbuCjP8Gag7tW4DrSMYKKMuYlYIdV3wfsftt8gQTEGKXa/831T1HGSv0lg==
X-Received: by 2002:a05:6512:3c9c:b0:554:f74b:789e with SMTP id 2adb3069b0e04-5550b8ab21emr5356926e87.43.1751355288045;
        Tue, 01 Jul 2025 00:34:48 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2ce338sm1707482e87.169.2025.07.01.00.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 00:34:47 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 6/6] oeqa parselogs: add parselogs-ignores-genericarm64.txt
Date: Tue,  1 Jul 2025 10:34:40 +0300
Message-ID: <20250701073440.979462-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 01 Jul 2025 07:35:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13689

With safe to ignore pinctl and initrd warnings from
AMD kv260 boot.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt

diff --git a/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
new file mode 100644
index 000000000000..1e8b1f4b7d1b
--- /dev/null
+++ b/meta-yocto-bsp/lib/oeqa/runtime/cases/parselogs-ignores-genericarm64.txt
@@ -0,0 +1,4 @@
+# safe to ignore minor firmware issue
+zynqmp-pinctrl firmware:zynqmp-firmware:pinctrl: failed to set: pin
+# safe to ignore initrd warning
+Can't lookup blockdev
-- 
2.43.0


