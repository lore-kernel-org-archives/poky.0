Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84CCCC55173
	for <webhook@archiver.kernel.org>; Fri, 31 Jul 2026 16:23:31 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.96.1785515002263338587
 for <poky@lists.yoctoproject.org>;
 Fri, 31 Jul 2026 09:23:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VPO3PBAj;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-47f3b39f2a1so527353f8f.2
        for <poky@lists.yoctoproject.org>; Fri, 31 Jul 2026 09:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1785515000; x=1786119800; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=MBuJ3amqMzznnmFDfN5ObB1hdqb6cS2uVZ5LPJ0WvsI=;
        b=VPO3PBAjc4zTZ09UrCH+xeVbnrLCBGRp0bM71X22JjVvjfuPaB3qDim0cK2fwHfjeR
         Lf3L6fFa0cOVegeva6YodfImXV6l8zeaR2USNmHzVwy0zrn3Vm6nR1zhQoIXTRZm6YZD
         +AQXw6J5l7PF5eQ7JwHZmYZk+HUbjf7QN6420=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785515000; x=1786119800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=MBuJ3amqMzznnmFDfN5ObB1hdqb6cS2uVZ5LPJ0WvsI=;
        b=pAK0cT6E//c8b901rOgxKBUuEV35pE3zCvxhwYlFWy8ZXaC2lAE98GXgGDRdkf0aRy
         j3NSh1uhRad5SUUhtaQe/eZa2iXTj/wMrrSRYt6Y+1QC0Z0ewHjYpa8d7MDA6uWDbnWw
         Dk0Ae3kIv6gHRHy+80QpxPDJoencBi7VPBlIYe/Y6kzuv+a8DTVHdsatsbiZa83kLgKr
         vR4xrHSg5DMNqT4VO9yf3wuCTNHWdeYju++/IUXJhnC6SuS2OYeZannDDoMGG0GY+V9o
         IZQ2PysuDDM6WEbGcsGxU5Iz+Tuz8Xy5iSoqYZ2rELyZdsGn0haofHbwvcTiwTjpnIll
         7C2g==
X-Gm-Message-State: AOJu0YwRHvIFDNr+d3V7C9GlvtGRanvH0ikymtcdyJXFvX4zSCFB6pJ9
	vBS6GCMTxP043xt+jgebRtWS8wai3bTLlan+78hf42QkCpMYwTycTCrLRu0mYDnq3NPKkioBMsf
	brBRcoCE=
X-Gm-Gg: AR+sD117RcpIOKfzAAHtRWbJ+P+iOR4YLZBnG9i+1AzX2V2QJ6AihVR61tbs1gmP4i9
	UNz2TyKsKohuQpmkhlAKyru89C19cS1uXWcqB2Sb/2z5peWG8i04dNNiPgQ7FDfXz8OmEcZ/YMV
	U9E1Loq9E45WimfNvamcJzfG/i6P4aCrU6LGemV7ATRZ1UWMBcIsw5iohRedeNMUkhsgkD57+X2
	Kh0gNDZmtybzM2EFkTE5Vgxax6/Lr5T6fMaX7zuEsl6X1ORtCB2e44OBaCfq0AKZVrZW1PsEo6/
	a5HgJ4Fb8/oyYFwdUmczdOI7nuUKKSGQOrne5bPu/Ex80grTD4qxpEsRwcCW4l83Jjx1ODM0vAq
	o4+HxYXW568mTZeBPi3nPz8xZv/Q4+LbRyoOSZTE6KGujkJHVWxkFnFfSeGyeX/QdSfsg1t1gtI
	8gbqSlQ8hvH6Rkky/Kx7x7rQ0H+M33Ktft+6fPm0yh7vRmEkaOGa7JxLVq2eKzpQ5M2wQ9bLFWW
	Pph9ze3OgxcVRh6AQ==
X-Received: by 2002:a5d:4741:0:b0:47f:9661:6766 with SMTP id ffacd0b85a97d-47fd7315b28mr374239f8f.61.1785515000142;
        Fri, 31 Jul 2026 09:23:20 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:7f7b:46f5:a0f7:875c])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd41d1756sm6286183f8f.4.2026.07.31.09.23.19
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2026 09:23:19 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: We now test on Rocky 10
Date: Fri, 31 Jul 2026 17:23:18 +0100
Message-ID: <20260731162318.1668930-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 31 Jul 2026 16:23:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13956

Add Rocky 10 as we now test there.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 2ba98f4ba24..ff1c9a97b77 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -51,6 +51,7 @@ SANITY_TESTED_DISTROS ?= " \
             almalinux-10.2 \n \
             rocky-8 \n \
             rocky-9 \n \
+            rocky-10 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"

