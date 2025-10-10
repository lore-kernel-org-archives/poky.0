Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F6E1CCA476
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:17 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.9276.1760104387791764234
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=FOrT/yvV;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-58d29830058so2601351e87.0
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104386; x=1760709186; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WDs1YHPcKaa+Y8Qnrmm8mPm9SyRPwGhM1Ms+Lxt1W9I=;
        b=FOrT/yvVtzI+NuSuTHQtrsyeFkBoiDHRnMXPnsU2Bm1UI4WQXEweMOmGyX6XGXc0BM
         xnShBqxU5k0x4vC4wxs4IAVtu+jeSzy6BoXDnihu+4X6YsoPDPshVRHYAqBjC3cyUa2W
         vLvNoZITRNfglpu7CNa1dtIXRgQDmzZOKmupjziK5uXA68Wxh+MXv1TuIec6mkWA0bxj
         FqRdHIBLDEt3VAv4SgDoN7/AQo41uBRicUa828OI12YbyNnajaNKieS1fXjfkBvzZugP
         WnzHgCN5lPsaB/rIlsoRFAGhJKKbNBDAVYNRbcEevJZ8kyMzyYWlDtOSnxJINnpj9Ic4
         7oEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104386; x=1760709186;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WDs1YHPcKaa+Y8Qnrmm8mPm9SyRPwGhM1Ms+Lxt1W9I=;
        b=N4iVt+JkJkx4N96BPmPFNF28Ez63i2H6QceWWMW2ifskUAB19cQDXOXbDVcK0VQ/cI
         Hm4XTwKpxSZBvYMqRnLS5u62GALMgKL61R4hjlsN80sHZ13WXxk6OVh7BPA7xBrLQBYX
         mjlIwGM+JHbfyGPvsROWWVI3nUh1djPbtkv0uEPWK3EjuO9t3gonqF+JOB6yj9p40Zl3
         ocy9E3fiRolco/Tf4iDPsjtcjDc64uYDwiQDwIptwmVl10iSSzAP4HGyDcqaOiGPlhqZ
         SwYue1tsM/0oKVPZ2qqK7BwzwMzmUuePHJqkAg5IwaatvFDD9HKtooi+5x8xYRnp+Byt
         Rd7w==
X-Gm-Message-State: AOJu0Yz5kCWBiz5bBMK88Bsh3DYNpx1YnUm92bP0QAnHqg+N+outyrvr
	Ifg44ZGcSy6w7YAHBshzKyIOWNkSbVUpQ6qy6StkWQF5/+PzQo3j5kqvk4DhE2B3xj0dg9NF0oJ
	2Oj9+Sq4=
X-Gm-Gg: ASbGncsUz1+8Z72zE8PbadEkmYyK0qG+XSAnlxnj2g2sjbqNYci44piihpnWSYykDBH
	LMmfTv9tid9O6Q72vLxB5jXzVV0Sv/CF9J/bKUPpONuxsONaCRmINJO1KuusJPPWHGqNrMTh+6P
	iJEXvexdTRq8J2OybZspn79VM+gJkeBf9rQTTZ6xtVv4taj06A36A78EsDseOGJAvV/mhWOoxjL
	AuIam3x9mk5gK4yF3t2+TBJOMw1i9jv4SJzajKO7YJjvEtrjXDcFocWi5IKKgQPOQ9PcRcPMHfy
	Kwnk2ww8wGESljEQ1Xn8ytIU/PvQvqhQsv4GJSw99HUrWEY6g5QisSzICpUxrrCfn0MqDVzhevq
	Abh+1/FwoF9QU4/jOMplsnzr1aQRJgpVT7h2EMbSgxbbA4BoWGspz3EWRYB3JI5y2zuwpRPbbrq
	SRdVgN5pznbbZCHQ==
X-Google-Smtp-Source: AGHT+IE2r1NgLCQK8j/Hp/w6gFvN26irHJRpODm/5UGdugj63AZy3BtF6kEpItn+rkHi7wwdj9VeAw==
X-Received: by 2002:a05:6512:2395:b0:57e:4703:3b0a with SMTP id 2adb3069b0e04-5906d8e5e8dmr3475001e87.31.1760104385841;
        Fri, 10 Oct 2025 06:53:05 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:53:05 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 8/9] genericarm64.conf: increase initramfs size
Date: Fri, 10 Oct 2025 16:52:37 +0300
Message-ID: <20251010135238.1182991-8-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13772

With firmware files and more kernel modules the size
limit is hit again. Increase by 60Mb.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 22477b09ac..ff0c29d7f3 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -29,7 +29,7 @@ MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-qcom-vpu \
 "
 # increase default size since we install a lot of kernel drivers and firmware by default
-INITRAMFS_MAXSIZE = "200000"
+INITRAMFS_MAXSIZE = "260000"
 
 # Use an initramfs and populate it with the kernel modules and key firmware
 INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
-- 
2.34.1


