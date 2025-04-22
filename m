Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01AAEC369D8
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 14:46:17 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.41798.1745333172187717855
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 07:46:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=jGcQYthf;
 spf=pass (domain: linaro.org, ip: 209.85.167.41, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54b0d638e86so6203125e87.1
        for <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 07:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745333170; x=1745937970; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FEjtpU4iEaFjXnZjYRoaSWzmu4EfgZRGCccvVsZvGCk=;
        b=jGcQYthfED3iUnj5JxuKET3w67xBmzjJp7YfapDgWlk0lrQNzSOsgOzrej5WRd/fmE
         4yZu/UsjDLyM1iQ8X4PUEwPEgXAfrpjp590ji+CvXAr1opTgCbOca2Ir/JimW8+tzuCo
         PzCrlgi1JaRyqSt95PifzE9+s7LTt5xSrcYpfNPHUNmfCTwFK6HJVBbElAkJ0lPc90Sk
         0MnV32NUn9mjUhqbfadGxrb90NOZNhExKanGZpn6696L8PULFIkfyG1/7VSpJYIeduFI
         CjV50glCUk7kDSZqWJeXaaAN2rbnlVeeXpddJu1vE8hCNFQqcYoCstMamng1aa8gWk1x
         DeoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745333170; x=1745937970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FEjtpU4iEaFjXnZjYRoaSWzmu4EfgZRGCccvVsZvGCk=;
        b=vtwqU3lxKwrxd65Fi8uvL+zl1lnrvG0yS1UQEifsDrulDMFY95XnSaO9jPWcJlemSN
         4pkCaDAkVZjV+9MHtZ1xHjR3IkfgHFCMojPkQmNZgLJcIDSEPqkkh7eGEvvsf4sY/ESs
         Th6+4eZufPk1P7RLARAdX0klQ6AVMOygFIhL4xMmMhBE/icjgiHLKn4OvYZWko8EkoQL
         fyySNOf62321gohX1IUFm7Ijg4CeltpkQD2xppSuzvCyA0REKQKcfirRFa2/cuw/19sK
         Ou8uyu8iSCKljIrB7OykoZ/jj5beBRJsroJD5KuD8JD4vmweaMpvQs20dtksvAFs8L4Z
         wRTQ==
X-Gm-Message-State: AOJu0Ywb4FvSbrojVRLVSxaMqHCrwMc+yXe7Ewo9Kru9NlbT5a4eUNhc
	fATOdghyeGFO3axTGdfL1iNhLNs+9OPOuSQ3cJ7iTO6G91+U1QudbuBBr544IB0XFDp3c6GSjXV
	3Oxk=
X-Gm-Gg: ASbGncuwf1fKt6b7sipos448KCWW+Da4iylFLnzOVvXh5jyWpa5AFBTeCW8SRVP+3r5
	mRwoiYHApJ6Q+FdqK2VMUxedrXGTWjpV6pKTm6DFCToY7D1bAnbHgP0xfTUF9kSeDlICdgcCt8z
	FVNlESDhokqHIT16uQGVwv+GYzTN47jCADcjqSsyDZ7w9jEd/3AAarLr8gc5hald/C/3ZE83sYY
	fswOwwshrFq2wh1OFzGDHM0ilcn8JQe7XcDZQeAlZ8v0kr4YX9Y1KrqKsG9xH3PZXBQ5VOceGVO
	y8VNmyiLPcjdvMjYBy4H+0WK/kfovc43C6q3ewtuEN5jhn23q9koDzurB7oTU1dW6yoxUy+fnQB
	ht4f9rXdGX8kNYgof6alH2hMItT0r
X-Google-Smtp-Source: AGHT+IFmIe6XdsX4NrxLoazF/arluxUZtbDHrrRZa4Dl6C+fRwhyTm/80ZWpsuFcgkDtuo1DwnapVQ==
X-Received: by 2002:a05:6512:114b:b0:549:b0f3:43a2 with SMTP id 2adb3069b0e04-54d6e66515bmr4047041e87.40.1745333170336;
        Tue, 22 Apr 2025 07:46:10 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5f515bsm1244639e87.222.2025.04.22.07.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 07:46:10 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-yocto@lists.yoctoproject.org
Cc: poky@lists.yoctoproject.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 3/3] linux-yocto: build modular kernel on genericarm64
Date: Tue, 22 Apr 2025 17:45:47 +0300
Message-ID: <20250422144547.101765-3-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250422144547.101765-1-mikko.rapeli@linaro.org>
References: <20250422144547.101765-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 14:46:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13597

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


