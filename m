Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web12.17294.1609781888178617781
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 09:38:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hLW7QE+b;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id 186so24132553qkj.3
        for <poky@lists.yoctoproject.org>; Mon, 04 Jan 2021 09:38:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=In6ZdzG81xMrIx6vwm5iS9K8Wh/vSwY+D0L3oEoGFV8=;
        b=hLW7QE+bPV5WBZQNFYyhuQQ3KY4Dn8zSXgj7gQrHtwF1HnTimTWI4Bjvw1o7PR2QVg
         uYcyFnmSC0z+fU78dCCXzs9sxXOhy1PIKOigpij5nDgwuZAuf584XxrJSbPAuBcT9BUo
         Ps3rg+Fzx5djXzhX2/uQatIGOkuc6T5+fDjJt8avyXA9iUKxTkPEaIfQ4At38armfrd2
         6dVlEqxXvSBijGyKs6bT/YHXQL0aubLIQiz3HHrPeMs4RfFj1NFoV7PHXV0GPQfD8VJL
         9oK8t7NGkKDfyk4lq7dYwZc6pXljKS96T32bYjA+/jh7rnjxhKh63IstcTETtICZEEUj
         UqFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=In6ZdzG81xMrIx6vwm5iS9K8Wh/vSwY+D0L3oEoGFV8=;
        b=CP8XmohzhNWUwtIzTBZd4/PKdOUV/B9zL21Kxspie+vvW2xuRaInVzqb2krk7eYZc+
         e3o0t5wdEaAlFfUjevISZmizcEj3Rwq6I5EV9RD1MsWTyr6ZU3EVrMnfZhlKwqSxf8Y3
         CHM2i9dHfS/yBFeKhlHyZWwBzLVU+gfjukjwTH33niz802OV2bXIKgfa2yh0M30Wb7I8
         UB/FuZxwpAvqH3Fw6Ld8EK3DHgIdEU+ng6ErSSkn9fO0Bfl5AYah8w814NYr3IFXG2Fr
         zJM+zGLuQlQnENpzVNM31vzkl/IImcaOouHc4l88TTI4QUUeuJYAGBYdv4YOnCkVqTTu
         QHCA==
X-Gm-Message-State: AOAM533XLCYHYlAFF9bbuuplNJJyheScWEZrS4Gj3h0fVQ2wiDlK2gWC
	5EQyawHXKUcYuOr3BgOKhkLzpTUFHp8=
X-Google-Smtp-Source: ABdhPJxBcEmVlLe+Eg3gZQxJPDEG+Ob9m/bBkUKpA7iqQev65K6HhpUWC4wtLMppAGKoZB+flBCyCA==
X-Received: by 2002:a37:4285:: with SMTP id p127mr54612832qka.501.1609781886860;
        Mon, 04 Jan 2021 09:38:06 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id y67sm27851337qka.68.2021.01.04.09.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Jan 2021 09:38:06 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [PATCH 3/5] meta-yocto-bsp: use provided variables
Date: Mon,  4 Jan 2021 12:37:39 -0500
Message-Id: <20210104173741.1070515-3-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We already have the following variables defined above IMAGE_BOOT_FILES:

SPL_BINARY = MLO
KERNEL_IMAGETYPE = zImage
KERNEL_DEVICETREE = am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb

So use them instead of repeating their values.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 5b481434bd..dcec4dcf96 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -38,7 +38,7 @@ UBOOT_LOADADDRESS = "0x80008000"
 
 MACHINE_FEATURES = "usbgadget usbhost vfat alsa"
 
-IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} MLO zImage am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
+IMAGE_BOOT_FILES ?= "u-boot.${UBOOT_SUFFIX} ${SPL_BINARY} ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
 
 # support runqemu
 EXTRA_IMAGEDEPENDS += "qemu-native qemu-helper-native"
-- 
2.30.0

