Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web08.17076.1609781880158323316
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 09:38:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sPK0sCW8;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id 2so19007600qtt.10
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 09:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t1YI/TwpKhDZEnC5YLQzqzTU85yCZVHvwWVO3MtccQs=;
        b=sPK0sCW8TKM0f2CvGCJJdulK8NLnmE+eo0cqtHZlAfXI9+Q1B9kPEwgRe3RXpd9pZf
         L4nUHlb2q75ci6dxFgUy28fXtNyKAQOr0kaJuVnToL9hwN1U9j2q9A/hM4VF7Eu2Ac4O
         wyIPFW2965fAfcWgjfO6wSwwjp8wziNtB0QQZtHklzDIC84A6j3vBgqmplufwHX6A5l6
         URdXCRbjsCdUKpvXmoIVyVlgPugkSgZda1RNqpg0N9Ga9lNH+6W3u5wL9FrpehK5RJcs
         /ereCii8OsRNnEnxny4giH7rO+7q5u0p6xNp1WlKlKFekS7J6f5lZnA0YoIk8lhFnA2y
         YYDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=t1YI/TwpKhDZEnC5YLQzqzTU85yCZVHvwWVO3MtccQs=;
        b=tuj6HlXwdDiVd0qmYBl0B26zHbpxKaHXSf21Zf/LNQZWaAhlDG9AmioNPsAIlXNNLe
         nGhkQXzeC+JTOs/oLUUUFF7aHBWeneFiOGlCBLwy4VGzCGyj4naZ7T0gg2nbdl0FjzWP
         kn+nnH2DMaQjSBMgYS0MNk8d+Aj4WqaMxYcB0P1au6P/kZTNM/toARAbHTPbkrUXbI2m
         WFp8DYGtw/0biOAAnGA/xBOehK5u2ALHH4S/K0enzQFhmth80ioR8HMglAA1swMmLHCR
         R/M1nnDhObNKMRxUaQEzJgsgiRCwu4vIhEv9pTWvsL23BGuZu5kWghCzzDZBstK7CzZm
         93jw==
X-Gm-Message-State: AOAM531H+glYdMKPRCRy3QPA2AIVOe8f+tOSVwq28vLnVQoyfbQHMjBE
	RAJCUGR17qAlxQwfi96vd0T0ZEKelQA=
X-Google-Smtp-Source: ABdhPJzXZfivn6+l7wrqCf/6hUdHWsqRzPBcFwKu2H4wsqu5CYxrGM6faalifZhTLRG8ChAfLLNhXw==
X-Received: by 2002:aed:3868:: with SMTP id j95mr71438731qte.23.1609781878817;
        Mon, 04 Jan 2021 09:37:58 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id n7sm33607673qkg.19.2021.01.04.09.37.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 09:37:57 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [PATCH 1/5] README.hardware: prettify headline
Date: Mon,  4 Jan 2021 12:37:37 -0500
Message-Id: <20210104173741.1070515-1-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Match the length of the headline with the above title.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/README.hardware | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/README.hardware b/meta-yocto-bsp/README.hardware
index 5996be764c..92b1a9a554 100644
--- a/meta-yocto-bsp/README.hardware
+++ b/meta-yocto-bsp/README.hardware
@@ -120,7 +120,7 @@ USB Device:
 
 
 Texas Instruments Beaglebone (beaglebone-yocto)
-=========================================
+===============================================
 
 The Beaglebone is an ARM Cortex-A8 development board with USB, Ethernet, 2D/3D
 accelerated graphics, audio, serial, JTAG, and SD/MMC. The Black adds a faster
-- 
2.30.0

