Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D52CFD2F6
	for <webhook@archiver.kernel.org>; Sat, 29 Nov 2025 13:39:36 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14745.1764423567171462361
 for <poky@lists.yoctoproject.org>;
 Sat, 29 Nov 2025 05:39:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=t2w+oaLI;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-37a56a475e8so35291381fa.3
        for <poky@lists.yoctoproject.org>; Sat, 29 Nov 2025 05:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764423565; x=1765028365; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d0x3yNhPNejt/xRd8kvYm62cr6rO8FXFxonrHnVf8yQ=;
        b=t2w+oaLIwC8gih8HXTUqxTEqnEJB2HEcSNgo8zyS1Q3sdy81z+0ODzi8GjtBvb8xUD
         FyV5SasuzjHVjufv4AONbns2BvD+VdTwCdGcKmCLNSixetwdO4Fg/REwJ0nxYfUV7Y3a
         l6aJR8eqz2C02ygXMoaMPeI8iGoKvBZ2MZ7VfaxpF0aIzl5MygX9a/LbUirIsyskdYIJ
         kVajxCvSumnamvx50ogYBk7F2OFYopOtEY7YdI+HHJjh1pfqMnraTqU+wYUHawUfEv0S
         Qyel26prOV46e5XegrmAKoxauoan8RNR2KfMFVGQr1kElpoEHPmC641mUnN+nMtZ0R9p
         na5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764423565; x=1765028365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d0x3yNhPNejt/xRd8kvYm62cr6rO8FXFxonrHnVf8yQ=;
        b=hZavFPgPx6YPUhp/w7zxt+qwuNBOTl7P4kwtIzMLRudgTe8O1fBNgw+ql/7ooofkn1
         PBzd3S4O1wguT5+YlC/Y1FTebgnj+PvnxOk0YDA41Q7Sgggwf4LLaFxBBg2ZSuNGwCEq
         oU2a8U+6NfuroTOF45iE/5Pn7wcAsFhjHgvU13S+lutOVNmho0b0fEhsMqexjj7ctP42
         l/j++F/91N3pHFZyvbyfAr+XTU7lCFe0I3aoI6GvVa+sUpFedHHtKqjgktWUBzLAvBSI
         Hgr//ZzJGuxJU0Sc0yiHuw1vISH4MQCLqc1YdLoHxNqvo8IQNmTZ4hEl9YtskkCJIwYC
         /i+w==
X-Gm-Message-State: AOJu0YzHh6WLXonJT4PU2S6U6MzXuRovdhvnTt6s4gIjKXiZlx0cXQ+m
	yl15CG5MTHKh9qEszrPoYLPc2lKJsk7IwzTcMRVQFuvLbXcTQO8b43KLQtc3XqsO+Sa+MFE6QXw
	+Za4kG64=
X-Gm-Gg: ASbGncsnadQOVc0Rytp/xxSCEOTnOZffFFOHlhx+FCa7P3VCQSE675Qa6857nscql8f
	wdu0mN0axvit0wh3KxcnKQX/v+veDekyvY53l7msVmDjlno9AzCuX1Am9ZG7R7TCvEsP9qFVVbb
	57ti+htA8kvk/9SyaDNFV54H/tb+Hmfr+45hJGmvwYAEar7ynqfUzcC+maU+PWF55F8Nh71OEZ3
	sHVxbm9uRd5thDeYdqUfkFHbL/Dz8hDMCTGG4ATurEgxY1cbj7s9Sg5za3QTvUPomZxD8AM5LZX
	nBT6l/waIV44LYsnLPlEq6lFmANRW955TgZh+gf6GKi5m9eu9KNMsvq/tvDJHtBt6eS/jzCFECT
	mJmD6ZtvVTdxU1FZSPxqmv/HXz/vOZL7W5hY2o0nT6K1drh+uWhlc6IRipN58NUTuQtC7xxhSdw
	eK0ZFELeexvt24bZapAJUt7GNbP03OExU3UUVBIP7aCj4=
X-Google-Smtp-Source: AGHT+IESKJcYL0Uk8JYUPcsN5EDeWASjIa0wBuCoorSK3LZZYp+8zAONAjH047a696sPDjqvvUCc/w==
X-Received: by 2002:a05:6512:1282:b0:594:4c90:8415 with SMTP id 2adb3069b0e04-596a3edab39mr11677085e87.27.1764423564700;
        Sat, 29 Nov 2025 05:39:24 -0800 (PST)
Received: from nuoska (ip-217-65-132-35.ptr.icomera.net. [217.65.132.35])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596c17ff7f1sm1584482e87.37.2025.11.29.05.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 05:39:24 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>,
	Ross Burton <ross.burton@arm.com>
Subject: [PATCH] genericarm64.conf: override poky-altcfg distro kernel version
Date: Sat, 29 Nov 2025 15:39:01 +0200
Message-ID: <20251129133901.1732829-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 29 Nov 2025 13:39:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13802

To use latest stable kernel from oe-core. It has much more genericarm64
support than the old version selected by poky-altcfg distro.

genericarm64 machine basically only works well with systemd init with
udev already in initramfs and thus with poky-altcfg distro, not plain
poky distro.

This setting makes default release binaries for poky-altcfg distro
useful for genericarm64 machine and the many HW devices we want to
support.

Cc: Ross Burton <ross.burton@arm.com>
Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index ff0c29d..d1763f3 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -12,6 +12,9 @@ MACHINE_FEATURES = "acpi alsa bluetooth efi keyboard pci qemu-usermode rtc scree
 
 KERNEL_IMAGETYPE = "Image"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
+# Update kernel to latest stable when using systemd based poky-altcfg distro
+PREFERRED_VERSION_linux-yocto:poky-altcfg = ""
+PREFERRED_VERSION_linux-yocto-rt:poky-altcfg = ""
 
 # Install all the kernel modules into the rootfs
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
-- 
2.34.1


