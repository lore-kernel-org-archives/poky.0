Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2FEEB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 14:09:44 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.8441.1687183776917245283
 for <poky@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 07:09:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=TtMhhGca;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3094910b150so3492832f8f.0
        for <poky@lists.yoctoproject.org>; Mon, 19 Jun 2023 07:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1687183775; x=1689775775;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=M5xUQMLXATmrQm4JHsQruSy/jHQHqgoMkMkyjiy6ysk=;
        b=TtMhhGcaoJEC5lusB3eDvSmk1cWoYrpT4Ze+RY51eqDsZ+ehdczYIEV/awfDTXy59i
         WLM76tRiXWx8rTwS1iO11YqFS9x93/K7Fjy9tXJKLPTQqksN8ryLaoRjb9jpB7kG3BZL
         onqd5IF5pHq0n/RSawCpBMNwglwRo2cAk8UiE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687183775; x=1689775775;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M5xUQMLXATmrQm4JHsQruSy/jHQHqgoMkMkyjiy6ysk=;
        b=Aai6BQ9eKJp1YSoW51aJE4hSQX9Yxz4NnyGyjYzWVk9hG8PciEKa7HaMoPzh1LIRQi
         rxX0cGtGegYcF20q9iJWKs9SKrZYH/QWMsUIt4E3O3GfLryg+O/dOK++gBjTeux4+mYY
         BBnIsB76v4mXXfy/EMRAbpsm7USXmXY/SBjgJ92bJEoeqzdky+9BN4N95tNxS/mnJEAW
         RngIfuSlAOlIs052NX/ln+rCx9+xViKjEgEJLULIWsHi0LrmC94YQFQVfRUsBEREGsrn
         oy2n6+ljnzWWZN55zBqlsvdJTWgDBCv9AwyTTTYhS6oiJBHzPFpgZQQZi+XtQhwkEa/2
         R6ZQ==
X-Gm-Message-State: AC+VfDy3uwjcMhwTq75xaSdP9efaeMopLm1MMO4sb+XIOfq/gTIg/W43
	g338UXpJEFH47F4FvIbT84vW5/058YITqKViGrc=
X-Google-Smtp-Source: ACHHUZ7b46iKdAyWK38CSfpUCIB+W9DNGJj8iCUOuABZhF8I/baSPHaUE2JK/Y06zkuD6OkzsCRAeA==
X-Received: by 2002:adf:fe48:0:b0:311:10c0:85f0 with SMTP id m8-20020adffe48000000b0031110c085f0mr7977003wrs.14.1687183774836;
        Mon, 19 Jun 2023 07:09:34 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:f105:ba55:87cc:dc34])
        by smtp.gmail.com with ESMTPSA id m6-20020adfdc46000000b0030e5bd253aasm31685691wrj.39.2023.06.19.07.09.34
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 07:09:34 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericx86: Drop gma500-gfx-check
Date: Mon, 19 Jun 2023 15:09:33 +0100
Message-Id: <20230619140933.2669732-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 19 Jun 2023 14:09:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13088

Drop the gma500-gfx-check script. This hardware is ancient and times have moved
on, stop carrying around this old compatibility script.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/conf/machine/genericx86.conf    |  1 -
 .../gma500-gfx-check/gma500-gfx-check.conf     |  2 --
 .../gma500-gfx-check/gma500-gfx-check.sh       | 15 ---------------
 .../gma500-gfx-check/gma500-gfx-check_1.0.bb   | 18 ------------------
 4 files changed, 36 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf
 delete mode 100644 meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh
 delete mode 100644 meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb

diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index ed4fc8a3de8..34e1448a8c7 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -6,6 +6,5 @@ DEFAULTTUNE ?= "core2-32"
 require conf/machine/include/x86/tune-core2.inc
 require conf/machine/include/genericx86-common.inc
 
-MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "gma500-gfx-check"
 #For runqemu
 QB_SYSTEM_NAME = "qemu-system-i386"
diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf
deleted file mode 100644
index 74d33c871fb..00000000000
--- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.conf
+++ /dev/null
@@ -1,2 +0,0 @@
-# Mimic modprobe's install funcitonality with busybox's modprobe
-install gma500_gfx dmesg | grep gma500_gfx_checked || { /etc/modprobe.d/gma500-gfx-check.sh || modprobe gma500_gfx; }
diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh
deleted file mode 100644
index 75cda99f547..00000000000
--- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check/gma500-gfx-check.sh
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-# Check for devices we wish to avoid gma500_gfx for
-DEVICES="0x8119 0x4108"
-
-# Checked flag to avoid infinite modprobe
-echo "gma500_gfx_checked" >> /dev/kmsg;
-
-for DEVICE in $DEVICES; do
-    if udevadm trigger --subsystem-match=pci --verbose --attr-match=device=$DEVICE | grep "pci" >> /dev/null ; then
-        echo "Found $DEVICE, avoiding gma500_gfx module" >> /dev/kmsg;
-        exit 0
-    fi
-done
-exit 1
diff --git a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb b/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
deleted file mode 100644
index 6726f683199..00000000000
--- a/meta-yocto-bsp/recipes-bsp/gma500-gfx-check/gma500-gfx-check_1.0.bb
+++ /dev/null
@@ -1,18 +0,0 @@
-SUMMARY = "Intel gma500_gfx fix for certain hardware"
-DESCRIPTION = "Avoid inserting gma500_gfx module for certain hardware devices."
-LICENSE = "GPL-2.0-only"
-LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
-
-SRC_URI = "file://gma500-gfx-check.conf \
-	file://gma500-gfx-check.sh "
-
-do_install(){
-    install -d ${D}${sysconfdir}/modprobe.d/
-    install -m 755 ${WORKDIR}/gma500-gfx-check.sh ${D}${sysconfdir}/modprobe.d/gma500-gfx-check.sh
-    install -m 644 ${WORKDIR}/gma500-gfx-check.conf ${D}${sysconfdir}/modprobe.d/gma500-gfx-check.conf
-}
-
-FILES:${PN}="${sysconfdir}/modprobe.d/gma500-gfx-check.conf \
-             ${sysconfdir}/modprobe.d/gma500-gfx-check.sh"
-
-COMPATIBLE_MACHINE = "genericx86"
-- 
2.39.2


