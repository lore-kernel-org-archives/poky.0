Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020BC87FCB
	for <webhook@archiver.kernel.org>; Mon,  4 Aug 2025 13:52:25 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.18304.1754315537949364167
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Aug 2025 06:52:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=faSORqNM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3b78bca0890so2780814f8f.3
        for <poky@lists.yoctoproject.org>; Mon, 04 Aug 2025 06:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1754315536; x=1754920336; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=QtZIudArzUQrsWjkHodvVFmJ5Q5VoEcCtVrCx91rtso=;
        b=faSORqNMgXJ50JGmIh9HhjcP77B33Pl9tAOFvs0iE3vWV0u68JDFKQPlDcwhWPdQR1
         VVhVMwbY1bYAD9QGeuuM/8JJEg7AcDvhLxfkvMeJi7MlhALNKDF7fvVgrrsDStuyIImS
         EXXB1UId1uADRSCwETS0FyjJfqTmbVm38R5IY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754315536; x=1754920336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QtZIudArzUQrsWjkHodvVFmJ5Q5VoEcCtVrCx91rtso=;
        b=iZUjIq6vPnf9HbBzMlNK1Ci9Gvwq/H51QKdOuIC5SkQjZ0gK99VOxtrumqXFhxSoYJ
         eGrvIRCwZmVIGIPQOiCsarFS3RtaRXNnloA1Zy5A8vPpB+7sMqPSCDOCxfeu/vSRfNHr
         XHNGVVQvf2xVchtQ7W3vlonc9cuMQtLHjRnH+kpJOm8iIGSLCN9y6NcIbrh5FvBbfl4B
         NUebPPUzHoCJ8SipmK8LNu2Plo4OI7GcNule1E6HfKxMTXIZVyFhriBNIK1fUNDwR75h
         F/hM0W6yRALEXSgylP3V8NGBdaUNHB8ntsdIXuYbAqf+EaNjDFmH5eWI1asXiI7UQECO
         Gjmg==
X-Gm-Message-State: AOJu0YzFXeWRdqAFekDsE+49CvyyKWpFXBLK63lNFHcPTte1oqzJ2Idy
	4sJbaNjVX1T8MYx5vmIKPX+3xbrHodROXaimhRriv78WFaFykFwbCA5jRn04pYaJ2voQZeMFyKP
	azuZn
X-Gm-Gg: ASbGncuReDZ0xtMl77rpD4x/Eqysi5Fv50PtqFi449vjI8bfo1crP6jSvLpF0gCXgLX
	YIMPJVMhXXNxCxpRayO1mqls8BuxZJROuhIePdkiuz4rmu7mJkbZ4mPiOOxMWukX8cMLMfjh0R7
	EmrCIKVTESaikzFdMJpKdYU3e+8TBm1dRhop6eGAhZTEsRGcS528aCzxXtWRm44xOUAptyj5pZ1
	DSNh8LbPKie418+rm0+vVzuonmVXnw8IGzhQoMivSxMmT0/zkvKjeDyfpA6rtL9dcH6fTpokF0R
	S5U6tL9/174HX8m95QSm+KC1Sk6hddiY7T3F7H9p150Jx1/b8t7qAtE4bt9Jbg+gYE/XZ/9i8UL
	4W3Bo9XdzuBcQ89lEX++SNQIuw+4C4n2nkSHgDRp2k8Vyyf+o91g=
X-Google-Smtp-Source: AGHT+IEOOhLX6XdxR4lV8JmXZO1z/TB3/0UQbEb2l1veciFu81d+LQN0oLv9CYFUNyGwpaWCmtstEQ==
X-Received: by 2002:a5d:5d0c:0:b0:3b7:8735:9469 with SMTP id ffacd0b85a97d-3b8d9469fcfmr6528652f8f.10.1754315535657;
        Mon, 04 Aug 2025 06:52:15 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:2c76:58bb:66fc:3164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b8e054036bsm5823098f8f.31.2025.08.04.06.52.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 06:52:15 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericarm64/genericx86-64/heabglebone-yocto: Default to zstd compressed image output
Date: Mon,  4 Aug 2025 14:52:14 +0100
Message-ID: <20250804135214.1416031-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 04 Aug 2025 13:52:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13706

We want to release compressed images since these are much easier for
users to download. Change the default generated output to match this
and build the output we want to release directly.

One test needs tweaking to since it uses an uncompressed image.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf         | 2 +-
 meta-yocto-bsp/conf/machine/genericarm64.conf             | 2 +-
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 +-
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py    | 1 +
 4 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index db9cfec497a..63d7f942144 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -11,7 +11,7 @@ EXTRA_IMAGEDEPENDS += "virtual/bootloader"
 DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/arm/armv7a/tune-cortexa8.inc
 
-IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
+IMAGE_FSTYPES += "tar.zst jffs2.zst wic.zst wic.bmap"
 EXTRA_IMAGECMD:jffs2 = "-lnp "
 WKS_FILE ?= "beaglebone-yocto.wks"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 722bc7d4a66..094af0eb9cb 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -24,7 +24,7 @@ INITRAMFS_MAXSIZE = "200000"
 INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
 PACKAGE_INSTALL:append:pn-core-image-initramfs-boot = " ${MACHINE_EXTRA_RRECOMMENDS}"
 
-IMAGE_FSTYPES ?= "wic"
+IMAGE_FSTYPES ?= "wic.zst"
 WKS_FILE ?= "genericarm64.wks.in"
 
 EFI_PROVIDER ?= "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd-boot", "grub-efi", d)}"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 943604c01cc..76a742b3916 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -16,7 +16,7 @@ XSERVER ?= "${XSERVER_X86_BASE} \
 
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules linux-firmware"
 
-IMAGE_FSTYPES += "wic wic.bmap"
+IMAGE_FSTYPES += "wic.zst wic.bmap"
 WKS_FILE ?= "genericx86.wks.in"
 EFI_PROVIDER ??= "grub-efi"
 do_image_wic[depends] += "gptfdisk-native:do_populate_sysroot"
diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index 6fc6925f694..781763d1f15 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -19,6 +19,7 @@ class Systemdboot(OESelftestTestCase):
         # Set EFI_PROVIDER = "systemdboot" and MACHINE = "genericx86-64" in conf/local.conf
         features = 'EFI_PROVIDER = "systemd-boot"\n'
         features += 'MACHINE = "genericx86-64"\n'
+        features += 'IMAGE_FSTYPES += "wic"\n'
         features += 'COMPATIBLE_MACHINE:pn-ssh-pregen-hostkeys:genericx86-64 = "genericx86-64"\n'
         self.append_config(features)
 

