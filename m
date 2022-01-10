Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web12.38718.1641851850605859359
 for <poky@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 13:57:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ul2SeArT;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id t7so4789364qvj.0
        for <poky@lists.yoctoproject.org>; Mon, 10 Jan 2022 13:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z3SvCN7eHETo4g0qzx4LRCFcRlvkf0hV5KUOeqsKkUE=;
        b=Ul2SeArT64n6Cuub7xHrChQOinMXHD0sYZngd6vxZya5HD2IxV/DgjYLWoAhkMW65d
         Kz9NAK7KOpJbVwIMG+sDpmSR+uCyfWnmFPqUvlpF32z817FHnHh2OXC1gW3wr+dHsqr3
         E+pxYHhIbyS7eaz6SNihl8HjauOTs9UxHu7Fz2+mPpvlbhJM8Q0JvM71JpxLfSbu8V0O
         Up4oC5sFPp15H+/+Paq2kL3VcIKdQdam8xuxfT1eIo5Gr4fYL4PNtW42Vz/+q9qBvI1b
         PpI/QCWvJVcPxJecrNCTkkawnruP10gYPK0tPoDxtoX/yI0SBSm/yGk4jhkyPm/wDd4+
         ebcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z3SvCN7eHETo4g0qzx4LRCFcRlvkf0hV5KUOeqsKkUE=;
        b=KE+z0WbRlXdDEu74MR9hPtoRbZrcIo6bYIM8Ip8Y8PqrJjEDM16wNKfcaLaTgqos+R
         wyqRYUh/phgd2HfcSPcrOB2sYAw75Z8ffaPqB2Wu/bczBC/arPYyFz0IZrQqcJG12fNc
         D868C6vMBRR9/86MoAAdGGCXXCL2gZBv/GDvjLpqCzGASDOIv6+iZfdJgaAFN7esTbwY
         2ZQyP/udDc5VSti7zSUIXLHf/zaiCZPZ5/5f/qK5o1AknPyFcmPI7SQrhLkTFS7NYzjq
         3FtknLRayfBuEJ36uWIRYT3wrZi0hUT5Y9y8XaKl8WOrJAbqJDJV4qcNOMeUc1FY7mSc
         VPVw==
X-Gm-Message-State: AOAM5332IzVRs85HPVU2NRb+ZUmAMv9zp3JxWkmS5lLk4oKC6Ii6uGdH
	Umgvexa0jffrKZ6r9zsyvS3XCaOHN0g=
X-Google-Smtp-Source: ABdhPJxA3Dy34MkXtYAinDJOr9HnXiRlYgRvVyF+CJg7T6WAfdT1WqAf3rcYLN8LnYURAkzlrZlP2A==
X-Received: by 2002:a05:6214:f65:: with SMTP id iy5mr1446307qvb.40.1641851849637;
        Mon, 10 Jan 2022 13:57:29 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (bras-base-mtrlpq2848w-grc-41-70-53-240-211.dsl.bell.ca. [70.53.240.211])
        by smtp.gmail.com with ESMTPSA id m13sm4278448qkk.122.2022.01.10.13.57.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jan 2022 13:57:29 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
X-Google-Original-From: Vivien Didelot <vdidelot@pbsc.com>
To: poky@lists.yoctoproject.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Subject: [meta-yocto][PATCH 2/2] beaglebone-yocto: move kernel and dtb to packagegroup-core-boot
Date: Mon, 10 Jan 2022 11:56:40 -0500
Message-Id: <20220110165640.2015039-2-vdidelot@pbsc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220110165640.2015039-1-vdidelot@pbsc.com>
References: <20220110165640.2015039-1-vdidelot@pbsc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Appending IMAGE_INSTALL with the kernel and device tree is a bad idea
because it will bring these packages to every images, like a container
image or sysroot image to pivot to, where the kernel artifacts are
not wanted.

Instead use the MACHINE_ESSENTIAL_EXTRA_RDEPENDS which results
in having the kernel artifacts where they should be, part of
packagegroup-core-boot.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index fa3beb7..fdfe08b 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -17,7 +17,7 @@ include conf/machine/include/arm/armv7a/tune-cortexa8.inc
 IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
 EXTRA_IMAGECMD:jffs2 = "-lnp "
 WKS_FILE ?= "beaglebone-yocto.wks"
-IMAGE_INSTALL:append = " kernel-devicetree kernel-image-zimage"
+MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"
 do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot virtual/bootloader:do_deploy"
 
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
-- 
2.34.1

