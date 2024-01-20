Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ECBC47258
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 13:43:16 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.22432.1705758191809556966
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 05:43:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d+FflnCU;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: haokexin@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1d7164aeac1so10195285ad.1
        for <poky@lists.yoctoproject.org>; Sat, 20 Jan 2024 05:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705758191; x=1706362991; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKci/vIR7MCUy3xZfEe1SOcd3bVtSyAjBEI3e1k2HG8=;
        b=d+FflnCUaCl4FBQphWVDNne1NDWfb+my86IsetNrsGN6uEhMeCwiRodWHb9w+agGia
         DacM5H7k/Mfbl5rNtYsPaptQQJ4AybuBNwCw5Bka6YqpBEwIaw0b1qDZ2Y4QaL+PqYTa
         Pb4gKRRnMkPBd1gH40+ECNbhTL5+VxxepL8XmZwNB5RMKlfGDV1TwDwHRd+/hR/Fz7uU
         lHHWOZ2lmp+dCx88LWvt//ZjqP4wDTlVcPq1bJehjXKi3Qu/XKEn6w513sHC7sJIUzdt
         ohU2bJPA24Fpg81qyS9BPbgaAqa612zswc5OiMaWLM0bt7iB4B0lmUEqFH9Q2lC5i1l9
         JacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705758191; x=1706362991;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MKci/vIR7MCUy3xZfEe1SOcd3bVtSyAjBEI3e1k2HG8=;
        b=nkxlPgxniOKmeWQU4ALkYG5zN8TXGY596pCfGH9cjSv12/+fITgA3saVtDLt1//L6H
         dMAIgYritwJEnZlrHaMMwAxD3BjUK7dbkiOGpZpX39VBf6BjMNQ8TnCuk+G8pHM8yTYu
         NmO+/RtW114c63e1gMCglU8xThkv7cAQbMbjYc3A1iDa2U+Wfn/FX03Yq68H7fkpdlID
         wdHpHj4mFRT4eGxlcZhDatBPWdMi0nnnFs2p6gy5I6+UR7gEGhuexifGhoOyWasty8K8
         INBFMI5/9eGF8pd01wPvnO18/z9yfXh6U3FLhW6E5xfkAWiqz1dFtQ4cjEQImOypMF35
         mY8w==
X-Gm-Message-State: AOJu0YxNgw26vVfiTJd4ZI9b4CU/B2AwB5f0g91rtYASngLtrcHTq2+v
	xu7ZrA30mjSnYv3GMCs0UQY38dWGjqhBy+tET28FEKOsUshNAj2o
X-Google-Smtp-Source: AGHT+IEmG3pp9NjIb4lmY8iAQ3nzUOm4+KV/j1A+L32u5tUks67BZ2gwc3Tu5cC0/3wHIiT58ARW/Q==
X-Received: by 2002:a17:902:ab8a:b0:1d5:6f76:95bf with SMTP id f10-20020a170902ab8a00b001d56f7695bfmr658064plr.112.1705758191080;
        Sat, 20 Jan 2024 05:43:11 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id jy5-20020a17090342c500b001d6e9d127e3sm4592723plb.90.2024.01.20.05.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 05:43:10 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>,
	<poky@lists.yoctoproject.org>
Subject: [PATCH 1/2] yocto-bsp: Bump the default kernel to v6.6
Date: Sat, 20 Jan 2024 21:42:53 +0800
Message-Id: <20240120134254.3235808-2-haokexin@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240120134254.3235808-1-haokexin@gmail.com>
References: <20240120134254.3235808-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 20 Jan 2024 13:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13244

From: Kevin Hao <kexin.hao@windriver.com>

Create the bbappend for v6.6 and bump the default kernel to v6.6 for
all the machines.

In the v6.6 kernel the dtb files for beaglebone have been moved to a
vendor specific directory, so we also need to adjust the corresponding
variables for its DTB generation.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../conf/machine/beaglebone-yocto.conf        |  7 ++++---
 .../machine/include/genericx86-common.inc     |  2 +-
 .../linux/linux-yocto_6.6.bbappend            | 19 +++++++++++++++++++
 3 files changed, 24 insertions(+), 4 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 06a49f45f76a..459c83f5c28c 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -20,10 +20,11 @@ do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "6.1%"
+PREFERRED_VERSION_linux-yocto ?= "6.6%"
 
 KERNEL_IMAGETYPE = "zImage"
-KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
+DTB_FILES = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
+KERNEL_DEVICETREE = '${@' '.join('ti/omap/%s' % d for d in '${DTB_FILES}'.split())}'
 
 PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
 
@@ -33,7 +34,7 @@ UBOOT_MACHINE = "am335x_evm_defconfig"
 
 MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
 
-IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
+IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${DTB_FILES}"
 
 # support runqemu
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 24d427a36065..50a233dd8f2c 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -2,7 +2,7 @@ include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
 MACHINE_FEATURES += "wifi efi pcbios"
 
-PREFERRED_VERSION_linux-yocto ?= "6.1%"
+PREFERRED_VERSION_linux-yocto ?= "6.6%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
 XSERVER ?= "${XSERVER_X86_BASE} \
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
new file mode 100644
index 000000000000..49eed162d928
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.6.bbappend
@@ -0,0 +1,19 @@
+KBRANCH:genericx86  = "v6.6/standard/base"
+KBRANCH:genericx86-64  = "v6.6/standard/base"
+KBRANCH:beaglebone-yocto = "v6.6/standard/beaglebone"
+
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+
+SRCREV_machine:genericx86 ?= "195b2994f955071be3dd16ff61127dbc6b2e0069"
+SRCREV_machine:genericx86-64 ?= "195b2994f955071be3dd16ff61127dbc6b2e0069"
+SRCREV_machine:beaglebone-yocto ?= "195b2994f955071be3dd16ff61127dbc6b2e0069"
+
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+
+LINUX_VERSION:genericx86 = "6.6.12"
+LINUX_VERSION:genericx86-64 = "6.6.12"
+LINUX_VERSION:beaglebone-yocto = "6.6.12"
-- 
2.39.2


