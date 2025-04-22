Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF367C369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 06:59:42 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.34215.1745305171351967468
 for <poky@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 23:59:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=xIPKI0Kz;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-549963b5551so5115004e87.2
        for <poky@lists.yoctoproject.org>; Mon, 21 Apr 2025 23:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745305169; x=1745909969; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=R4QzTM6yZ0yHqbDWSuzmWl8a39TMzNcWQx6BtlF/eqQ=;
        b=xIPKI0KzbUfslRCciOfQPGy5mKY9b5ujIVvReAIKKayh9a3NGcYjF++egHR2o89eM3
         iq/kx4/s9gKOQ/a38R/67j1U5LEj2EgR0Za4/PxA9sKina07vSZie+jZ5Kpn14x5vms6
         LD3iWBTyPU6PaFke+MNGsTcVWTKeOneiGXhFxEvzUX0Sewtw88lqQPiAQnlecQQCtA7Z
         C3loiyx6wuw1s+qHqsusjp5gZpN+2sXow4nFYSWshEpMVmooTsYBliBX9lrXbL1n4Lzv
         N0sHBxQaLHk0GVCsHV0ECmsOXtW+J9tE0BRkfauhxxwmTHwDXkGcTlQ54bDnhk0kUMfm
         31KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745305169; x=1745909969;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R4QzTM6yZ0yHqbDWSuzmWl8a39TMzNcWQx6BtlF/eqQ=;
        b=gblcGkzBDkGQA8EjQ0dY9SikqcV4WID1U4jMjuD1652YX3O597MuytOwhYfGRxduzX
         X94cEnyMjbSyRzP8S9RTmhLaC+lyJ7xgp27hMDRFqpOVaSa9dg2vAChZSs2wnpEApAhD
         pfObXyX7lyPu27h1w0MdUNqDEu4iCIrwdcmd7D1UtIXkVVfyLI4faG83Z4eI7uObgVEa
         A1gVm+2aPzYbC4yLr/2egNB7gRx1DzWLsBYyPT/TqSBksP6BzZGdnjyPgBCY2RCQIxc6
         vroFCb/EUCXqJRaL+xjJEWf35erI3gwIqacCEVqyTYcbiH89q/hjlTpnqsYZm+GuagMo
         40mw==
X-Gm-Message-State: AOJu0YwQ9Jn9pVKWh82ndXA8bPB2OUDxUX/shFfNkiUujYtMhfhmCea9
	dwtS1CXIdnvx2sFV1GlDCvTKkerIvr6KoWvcrHC5gOZth5sqJlJ3D67enL0mQz51JtJ5SkUWs7K
	OXvo=
X-Gm-Gg: ASbGncsgMbXvmtacqLwJovzJlKj1u8Grapd32Nwb/5Os86ZjUuqdFYcO9En6gxh+4yo
	V8WNJwqey0wGZ8XWrJqn04+9b2ioASUjaOoO7TaRWV+t9ubXewSmnO6MCFNSj9iqEPSKFzhRiGh
	lCAH378BP5LbLVMGNflX42e+APWhmqesVVyjgMICD7pY+tudeeiKXoMOZ36LZkcupFYH05E/A+u
	vsMSlGd90Rb2+lUgfSkbaozE2Rs+x5CGsoau6Epiz4m36jGA55XkdQYVv/wk+DL6eMbaeBFELhm
	sr6IrwlGmd6Uk/TjF8S9Xva0mrCB4GqtFE6iVi6pd1i9+ldULxIa/xWVDx9GFB2GWueAgnvZEVC
	QqQdJynMh+wL674K26g==
X-Google-Smtp-Source: AGHT+IGvqW/fWVRdWMLt6MpSWB7rPrbFCACY+a+OrX1RvwM2S0e74tCkKVLbX24e1soH70LZrTvsWA==
X-Received: by 2002:a05:6512:684:b0:549:8ed4:fb4c with SMTP id 2adb3069b0e04-54d6e6302abmr4104949e87.24.1745305169279;
        Mon, 21 Apr 2025 23:59:29 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5f516bsm1127387e87.221.2025.04.21.23.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 23:59:29 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] genericarm64.conf: increase INITRAMFS_MAXSIZE
Date: Tue, 22 Apr 2025 09:59:07 +0300
Message-ID: <20250422065907.9855-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 06:59:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13594

Since pmem kernel drivers were enabled as modules, the initrd
size limit is hit. On genericarm64 all kernel modules and some
firmware files get installed to initrd by default which make
the thing large. I'm working on patches to reduce the kernel drivers
installed to initrd and to make the kernel in general more modular
(btrfs 5 Mb etc built into kernel by default). For now just increase
the size limit to unblock genericarm64 builds and testing.

Fixes: https://bugzilla.yoctoproject.org/show_bug.cgi?id=15833

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index f5000402e5..78f7cb5b79 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -17,6 +17,8 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 # Install selected pieces of firmware
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-wl12xx linux-firmware-wl18xx linux-firmware-rtl-nic"
+# increase default size since we install a lot of kernel drivers and firmware by default
+INITRAMFS_MAXSIZE = "200000"
 
 # Use an initramfs and populate it with the kernel modules and key firmware
 INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
-- 
2.43.0


