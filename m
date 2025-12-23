Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78F35E6F06F
	for <webhook@archiver.kernel.org>; Tue, 23 Dec 2025 08:25:22 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.97316.1766478314884384908
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Dec 2025 00:25:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=E9FoPSmW;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59b25acdffbso457057e87.2
        for <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 00:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766478313; x=1767083113; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m+yibgPTEu2w/G/Hi7Dwp5tLS+y6EMc1Muj9A9JfKiU=;
        b=E9FoPSmWmUilgmL2ZH08N59KojGlNIsM41/h6j6tSOXI5MP4+twm0rh7fJsWlkbbfx
         2MjKhgb8PCPzBVh9pGgQ/MqYs973+3J9B4qj4PVRPeFGAotEyevb1UZDn5gQKZ/wddWV
         C60LR/Hutn2gYypdHk+2Mag2b4unzGtq135lVbo4CrKzznxEjeexX95O2x8QUWYeHOvX
         6dLGRW5NzeIUbhqjTA0kWdZFerKvHpEJbb1qpQZ8aAww5dheWvgVLj8O6dOo2GnpDqIg
         Mv/bigWhibCPP93UgAy60qTR8Y6QPu3kI9JCoxILrtsBqhnD5YzrCwi8hF6dPHrR6iOH
         Q/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766478313; x=1767083113;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m+yibgPTEu2w/G/Hi7Dwp5tLS+y6EMc1Muj9A9JfKiU=;
        b=sD6s43+7K4v3v+nBChPjLoN2mO6HKWHD9aiLDKEQPwtFn/hggilWhfjuh7x+XAM+Qr
         PbacAKeMFNkuBO01AKMB8iz4fKN+3yue8n8aaIbZHFY52ZbIzfSPdj5DJoMIU15bTrbT
         NLNDMberONtjWac+TCjVqaRde9mfWdoNJPKU2uh1r8lRoGPNOalsTSnChBdrg3+5a5bz
         /Ds+UhKiA/klxY+SQ27YIwiYfIVyGK//MWRzh1K2DntV4FjRDR4hZVIY2Ts5OEawLEAK
         6oLs9PG/lrsmzPNSNOrvKTRt3ciebNcnCsQ4ie8jdkG0yKJ1xF1xAs7rJbtPxNW/nKi9
         UdqQ==
X-Gm-Message-State: AOJu0YyrBqp5z1tDsqBXp3rlLp2s2VHfJLlyXK4lxdov5GEqI/utOjpo
	eciuENzfCP5qSeAHHX7qI9DIlf6acLw/g82pPHs+pi0AXPGZvAQzYxjS/wUNKy0wToYMi/l4GYS
	dhC59QxY=
X-Gm-Gg: AY/fxX5RR+XyvzSXe0w8nkYEAHl6rE+Zt8Q9ZH3y9YZF2bj8TzC787onA5o7wqp6ttO
	vAO9ZE03NcKC/dWPGQyRBOOYHIvjmcOYu1eKlYLwS51Mppz0NgISoTbiAkx3vKDgO5wY/0LsLZD
	r0pj8NS/KMg5CQp6K8Jkj7xcrBSt89KXNQQWj/D5zeTjy2CD2SsTrgqdfgylT+RcceUb/JYtIZ9
	PffKC38ikDfTveupwRrFFVZJ58wiXuOevQcBacUMA87di2gmIx4LrWv/IIR1k6VACB5tfG2z/bq
	wL+3UqAdXeYFlglGpScJuI54+QNRC4BNnfTg31KUMcIZFY45FvX/vLO8QlfE57sjhptVI32XZ7g
	ZFIF59NMpZGA06EyIXY+On/yV0aw6V6Ly5t3f6/anzhJj1z1xd9fzeEw9ao4Ycx+9l1vZPhznc9
	zP8yyal1dzhClUq3Qm05czJMHG/5l0CkDKIHKmgcI1vaqn
X-Google-Smtp-Source: AGHT+IGLK+oAvKK25K3TFirFPZLmfyQ+CWhPKG3+9xJTSpaeDTLCmlLHERS2N1RKDaZNq2PADe2E1g==
X-Received: by 2002:a05:6512:3d07:b0:55f:4633:7b2 with SMTP id 2adb3069b0e04-59a17d5d835mr4324708e87.46.1766478312663;
        Tue, 23 Dec 2025 00:25:12 -0800 (PST)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d7asm3924228e87.63.2025.12.23.00.25.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 00:25:12 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] genericarm64.conf: set runqemu memory config to 512 Mb
Date: Tue, 23 Dec 2025 10:24:57 +0200
Message-ID: <20251223082457.3465827-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 08:25:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13809

The genericarm64 initramfs is larger than 256 Mb which is
the default runqemu memory config and thus boot fails when
extracted initramfs does not fit.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 5d1010e..ce22b17 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -57,6 +57,7 @@ QB_MACHINE ?= "-machine virt"
 QB_CPU ?= "-cpu cortex-a76"
 QB_CPU_KVM ?= "-cpu host -machine gic-version=3"
 QB_SMP ?= "-smp 4"
+QB_MEM ?= "-m 512"
 # Boot into U-Boot and let that scan the disk for the next step, don't pass any kernel or filesystem hints
 QB_DEFAULT_BIOS ?= "u-boot.bin"
 QB_DEFAULT_KERNEL ?= "none"
-- 
2.34.1


