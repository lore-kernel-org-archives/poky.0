Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20BB0C369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 08:03:35 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.3325.1745395404719497848
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 01:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=uCBxFwRl;
 spf=pass (domain: linaro.org, ip: 209.85.208.170, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30db3f3c907so54927991fa.1
        for <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 01:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745395403; x=1746000203; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FEjtpU4iEaFjXnZjYRoaSWzmu4EfgZRGCccvVsZvGCk=;
        b=uCBxFwRleg3EivndC3yngo+lQ5se600QdVeaG1kE2HP8+tgLomYrbxz0rIh0x00nwJ
         EXtyfK1IuxGTEWRXj/BDR33Kas3AvcWKPshsuak5fAmWGQDnNpk6hOTJ/0mOZT6onh3X
         TvTX7qTh314ghxyQnNjFIoq99P9v7Kc+jNvna2vAfWjghrUtaNI6hJcY4CkbdOZ7Bo3s
         gyzAbiNgsvacGvXYmEdRAWv+ynM2wCb8EYDxcSV8atpdZXFdI2ocG+FbqxwMo9T/lNwX
         FEiuYvT26OgqtQs4UwaODh1dgNKrZ/0yEqLk628aJSoCz1HfWXdIKCfRka0kbKnC2egc
         1ADg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745395403; x=1746000203;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FEjtpU4iEaFjXnZjYRoaSWzmu4EfgZRGCccvVsZvGCk=;
        b=jiHQChitJbWjv/dxyCcBnfpbCIR3b6DH9sG3kCJrHkbHz86wMXDOxBuZGahXZjlVvT
         r9DbVZI1owdiXXrB4667DwE7ttSes/tFKrDLXlMtQy5MwWwxm+UX7gCOjiRyc29TzWFx
         QS+6YTyuwvCrb2ift6xBLpOl2fKcqJDCDTqJ0UK6s/1wM9EC4XHPohqTQw5Op4VIO1Wt
         wPfSGL2SrGtmk3ToRWndy3CXfqmSj1UhhxTw7+27Job8T42uZZEvJAikbBMZOj8xobcr
         PXyZ6qUeTqnMt0gpM2uxffq/MNUEOAN36EYBPyJctMHGITml/TEYDSiPCFxUQ+DpBxB/
         kXoQ==
X-Gm-Message-State: AOJu0YyKSfKrQfbtWnYvAnGgNifn0uARJD7isKSTSfelAKHHyyUQWHzW
	h965dwk2cfUS3tqbHuaVwxudxLarvLjn6vUcOFbDD18QaFeMZtzqPo5I2DaBdjaDGbzOeyoT6mN
	SNAU=
X-Gm-Gg: ASbGncvFl9GOr6RpNjYb8cB3FBrH3qKwA3Xh9iUXihKJBcRfA+EcvNPKdW/+I1gGYxe
	NH/nb+G3tvojgaVzz/2y/xHAohaWRxeQY1yQMwAqygTpFjFoU3MxMl4nxzQLFYvpAuq1/uNJHJ3
	FQGjuxkEvSDTUzdopQTfgSRE/ICQjO5c4EYQCvmoZsOA5kw1wein8OLW5T5NTrY4gr7VOGdm0Mt
	RR0xSnSxqJAOyPboWfxuP4SKxf3XxcnpbPyyZKMqRsd9iB8q7/Casxj+ipdOjN1EdUxKRshAATM
	abNkbxfQ7uwjeCtjbxqzQNnp2gppp17kjkhqRA2wiulGB88U7UnEP+b20YtjUyUQ95Cn2Z0b+rG
	0OMrDZpFEvyA/FG4g0LkFBAWNGpHU
X-Google-Smtp-Source: AGHT+IETV3Oaa3H17PJsF3xhEnT5aa67g1+nqdyHKEA+2suXWyi/Ts4Sw261qMhwQNfSajecAXSL7A==
X-Received: by 2002:a2e:ad86:0:b0:30b:d44d:e76a with SMTP id 38308e7fff4ca-31090553ed6mr69344741fa.25.1745395402826;
        Wed, 23 Apr 2025 01:03:22 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3109075f2aesm16951581fa.23.2025.04.23.01.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 01:03:22 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: openembedded-core@lists.openembedded.org
Cc: poky@lists.yoctoproject.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 3/3] linux-yocto: build modular kernel on genericarm64
Date: Wed, 23 Apr 2025 11:02:46 +0300
Message-ID: <20250423080246.128723-3-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250423080246.128723-1-mikko.rapeli@linaro.org>
References: <20250423080246.128723-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 08:03:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13600

genericarm64 inteds to support many devices which are not even
know at compile time and uses initramfs by default. Thus many
drivers can be build as modules to reduce kernel binary size
and boot time.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
index 831cb556be..cda7fef449 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
@@ -9,3 +9,5 @@ KMACHINE:genericx86-64 ?= "common-pc-64"
 
 FILESEXTRAPATHS:prepend:genericarm64 := "${THISDIR}/files:"
 SRC_URI:append:genericarm64 = " file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch"
+
+MODULAR_KERNEL:genericarm64 = "true"
-- 
2.43.0


