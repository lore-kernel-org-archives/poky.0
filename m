Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web11.39109.1641851849693990658
 for <poky@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 13:57:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OdUVqFs+;
 spf=pass (domain: gmail.com, ip: 209.85.160.176, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qt1-f176.google.com with SMTP id bp39so16453539qtb.6
        for <poky@lists.yoctoproject.org>; Mon, 10 Jan 2022 13:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cWISJbVz824DH+G1Csg+Zl32bDI/veRMdSxIJ3KIpU4=;
        b=OdUVqFs+pRMGsDKvXJXLOh2D5KK8UlKW8dA7lRyiA9myA1UhawtMYcXuSOet9Y438x
         bd9CQPfCDtVl7O4HU+FTngcqVX9FPtLIh2kaV77Tfh1jf1PHn6wK6PviBoAjliu4zKCf
         gp7Ldw6sLXObHdKqTtK8x8qkHwcpxUyaP8KAXqiIycvavwBHS8lF2K+JdetrLjJ+a8g8
         dEBAvXVIH9Tlb0k1xYcPDPH6DvNwPOdQbtsn7RjmcXaj+eJJb0eE8DUeQqceItXwyV6Z
         AV5SAyFnNN7y1Bk5BuYZKILPOTd/r22KvxK9hRepF76lmTu83WJkTgsqfOyaAyRYVzVy
         ElZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=cWISJbVz824DH+G1Csg+Zl32bDI/veRMdSxIJ3KIpU4=;
        b=HB9S+Gxg4nK4vN5WCCNFAj9pG8TObg34kqbGOPoUeyQohXKKfINlGqrgSSbhvQOTMJ
         sUxuN0Pkvq0FuLl8KIBf6jDsH/jsGHIfxmWOxqodrx00v5grzlkVLT0LuDUW3vJLYHwY
         vtG6jQoQVukbBmDa1U70ejkYtbM0BreJkjYy54p7axwCxHLvm8POV061RYNrEGq8uwN/
         LFsdbtWcU8smmXx46jPkFD06o/g1/NyUsD6nysI1M+GY7nbRolzC9cWLaTSlkx/zd6Z1
         2Lme5zs3jdkTXBh+miT2kPKIHFcvMvRqDXh7cHLzJSaDoQ41nCqqRa2D4JSSaoimszES
         /CIA==
X-Gm-Message-State: AOAM531V9eaGr0sMfH7+WRgB3kNhRdYrKUDY85Ah+d0AP3kLW/WjB5DW
	0dUNq4sz+6WtOgEGiYt5lg6ljc/jDXU=
X-Google-Smtp-Source: ABdhPJzuFV92IytAzW7fHAhx0dnzP54uC8fPC+fYOLGb5Pl8TfwbIQGFOl8PbnN/GmJQB3C/pLR2Pg==
X-Received: by 2002:a05:622a:1a22:: with SMTP id f34mr1446521qtb.177.1641851848793;
        Mon, 10 Jan 2022 13:57:28 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (bras-base-mtrlpq2848w-grc-41-70-53-240-211.dsl.bell.ca. [70.53.240.211])
        by smtp.gmail.com with ESMTPSA id z6sm3297104qta.92.2022.01.10.13.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jan 2022 13:57:28 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [meta-yocto][PATCH 1/2] beaglebone-yocto: prefer u-boot
Date: Mon, 10 Jan 2022 11:56:39 -0500
Message-Id: <20220110165640.2015039-1-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

If BBLAYERS contains a layer providing a package for
virtual/bootloader, building for the beaglebone-yocto machine will
fail. Setting u-boot as the preferred provider for virtual/bootloader
ensures u-boot is choosen and the build succeeds.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index b3d960a..fa3beb7 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -30,6 +30,8 @@ KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
 KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
+PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot"
+
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"
 UBOOT_MACHINE = "am335x_evm_defconfig"
-- 
2.34.1

