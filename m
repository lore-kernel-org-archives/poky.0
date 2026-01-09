Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA718D26D66
	for <webhook@archiver.kernel.org>; Fri,  9 Jan 2026 15:08:49 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11955.1767971325999761660
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Jan 2026 07:08:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fB5Gk2zC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47d59da3d81so15201575e9.0
        for <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 07:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1767971324; x=1768576124; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KD/DF0jyxhWhj/Bq6Mr9X7qhX3sf0S1jod8kA3Zjn8w=;
        b=fB5Gk2zC4tVVMM2X2q/idMQ2rAJIPJnALG0w1Gc1cXilXSvzvUBqomWiHZ/OpbhYQS
         hmttDitNT8RdJlubxEjJA5E92JDoScZGCwbMg1GCMqZPGijMs0gU7Dtd3LGjvh8TQbc4
         4xw9nTk4po6PjNDAjQHdI4l5zYvlSU8/2eM4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767971324; x=1768576124;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KD/DF0jyxhWhj/Bq6Mr9X7qhX3sf0S1jod8kA3Zjn8w=;
        b=ENIDraMJYP8EC2nZGarAGIt8zVmPygGW+FR5aeurFR58ITWubuSTxJCYM4p0gNBWFQ
         eV7ciykpuizNZsyME72YVjOJA7G70YCUtXWpNjVvpB215fzcOwtQVngvU7Yf+FlqZMsL
         tPQipzrpuWgEpBD/b9IOtpZ9sqzJHP2TX3HhQpYZR3aJTiK1lnfG0m3B+bp85/qGhs+m
         hWzuO2+QmkFZXsNwcUz5h8dg673L6cBK3DwjSR6IpRcFrPaEg1W7h7rzjMLu51H6ONa6
         Eoe/a7AHtw9EyZqNu+2Ha5PDC6wXX2YTzZSGrnUA0a0s9HJhDETMRPaIvc+q3FRoRhvi
         7IHA==
X-Gm-Message-State: AOJu0YwYWIS4tlSoGXarUwwdajOEVd9P2ZQRw91dZnUHYf4CvJ+tSrnq
	YqYPZ1+KidnPyyDMjiWJAdJBFbth5zFqhr3Qm8HUhD0HHC3dDATe5XJg1MqHJRqGwCjP+1EJv7s
	E/JYlKoQ=
X-Gm-Gg: AY/fxX497KC+OUi71U9Aw2JoH1Bylh8x+Y2EdTTi8YQ26o/3bo4lNjm2UDN18lB5IG1
	QhPUrQx57VdLMdk7cCWDwST68eK7dcRacGUsADWHjgWvx4A0lUIlbFyWBFWCAEWvnUx6s3TJlwC
	1xO70gU3ORgIvGW5AHlrb76NdMm5RR9uwEvlVZlcHRc1u72KtUL1Lh2OUHlKa5Fzu3k+zvFvZK5
	SaPDlpQwC11mcV9DkTC5F4RnxhFFPSyRzawQIP9+kgzgwoekBMK9V6uHDoHzJqFImQi1PTnKtpN
	K+y2grmnkfZyUfudPXitSpqOIqLH4gK7iMQfh833ca5cdSNq7Qx51mZXZpYnmITduex5CICAsD+
	glp9SogWt6nLASWK6/fQCE9yp2UwdTXYm3vGz2+Yxv3nbHq+JmOehgSeoxGtwYb7TJGX5jPA1E8
	F3QfDAvWJm2zTnxxv40Wx8Zegpg8WVDTV8796YrBI=
X-Google-Smtp-Source: AGHT+IF5MUtFqOWYGYikB812gPr5cZGTG6a6WaqFnaZk+tXi2scuOpNpwRqb+XiCJbp4VCpM7QUTwQ==
X-Received: by 2002:a05:600c:5646:b0:471:793:e795 with SMTP id 5b1f17b1804b1-47d7f398fffmr113166425e9.0.1767971323664;
        Fri, 09 Jan 2026 07:08:43 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e3e2:7d7f:925c:f556])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f668e03sm222994795e9.14.2026.01.09.07.08.42
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 07:08:43 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Post release version bump so we're after whinlatter
Date: Fri,  9 Jan 2026 15:08:42 +0000
Message-ID: <20260109150842.406708-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 15:08:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13822

Move master to be a version after whinlatter.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc39e531480..68e7ca768fd 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "5.2.99+snapshot-${METADATA_REVISION}"
+DISTRO_VERSION = "5.3.99+snapshot-${METADATA_REVISION}"
 DISTRO_CODENAME = "whinlatter"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"

