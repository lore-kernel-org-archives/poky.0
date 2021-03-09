Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web11.12988.1615312050437602187
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 09:47:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gf2m4sPz;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id 2so10912256qtw.1
        for <poky@lists.yoctoproject.org>; Tue, 09 Mar 2021 09:47:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mKSW0bWMtQChBJk7Q/rSk3O7XUULJSkpzgXPmVQz+yg=;
        b=gf2m4sPzbQWoLm3pPw5VJxzulT9UpsFvWV5j4dLPDo2+w2FeGcxvqKem7h4YHo2jHa
         Ud1jZKhDzBp4RGrs1X+81rakT15vOSDnCm3pTZSJgG1smh6fXEYKzPBhQypaRanME6mv
         lQJD1QALAS7FFOiecKGp/rzUlfHL3hmobXQwvX9rmgSrgVL1TbjVA+JpKSUupf4GaUec
         Kt10oHBriY2r5wlYZ5uganE6CkhC6xmxbsKDxoc/8PrnU+ncIs9n0BuXwFcDgx0OE2zN
         XZBN6btbPb1h9ZK8q2UTgtGDML1EdgmIg50fL8N+vawKgzEfHhErLTVSiAyyjaEUUok0
         LmJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mKSW0bWMtQChBJk7Q/rSk3O7XUULJSkpzgXPmVQz+yg=;
        b=nHQlRXZzwWgtSF2aNElBnon/s9cor7YkXqvujE2e0d9D9PiMzNWr3570yKjit0V/Me
         t7Nal0NkZVXiVnZV8SteCpEpUCSeLab+oOnvoLNvKDUikHM2ZZKTQaScwDAu0A6TIpWM
         atij5eKC8QBnptLXD6ldbquJU94JI0105TtGgCUq6kxqP5EUMUSsOXfzDXCWsPtmv+vP
         a1ObGsy/iRxk2/2LtZWvh9fZEIJP1Bnd/UE+znjl5x0EMv2BcBqPB/mTCNw25Dac/31B
         gminQCyQndwRhhCKQVNGDlzoYlyxl0L0N70r4ZYojBjjyubbxPv/1ZUf39+DW7BIsH5R
         7DBQ==
X-Gm-Message-State: AOAM532gsL4ZKgq3lXmKxu6OuZ7XwbsQJH/Vrw9bkL2WUoQCjNb2OKdc
	bfGH4/Bx8EWoAt36bwu5TOv8vTLTKuM=
X-Google-Smtp-Source: ABdhPJxcW1GZEWWTTvZJdPYkwaM72cdGRjkd9TCsLr2HTkyUMWBveDsvCRC9bgXdyLEeFr0IAQYfwA==
X-Received: by 2002:ac8:5987:: with SMTP id e7mr25757399qte.168.1615312049365;
        Tue, 09 Mar 2021 09:47:29 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id n136sm10655626qke.123.2021.03.09.09.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 09:47:29 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Vivien Didelot <vdidelot@pbsc.com>,
	Denys Dmytriyenko <denis@denix.org>
Subject: [meta-yocto][PATCH 3/3] beaglebone-yocto: allow other virtual/bootloader
Date: Tue,  9 Mar 2021 12:47:15 -0500
Message-Id: <20210309174715.26432-3-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210309174715.26432-1-vivien.didelot@gmail.com>
References: <20210309174715.26432-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vdidelot@pbsc.com>

The beaglebone-yocto machine currently hardcodes "u-boot" as a
dependency for the image and the wic format, and this prevents one
from choosing a different bootloader via:

    PREFERRED_PROVIDER_virtual/bootloader = "non-u-boot-bootloader"

Depending on "virtual/bootloader" instead of "u-boot" fixes this.

Cc: Denys Dmytriyenko <denis@denix.org>
Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index f8368eb..04cbd3b 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -9,7 +9,7 @@ XSERVER ?= "xserver-xorg \
 
 MACHINE_EXTRA_RRECOMMENDS = "kernel-modules kernel-devicetree"
 
-EXTRA_IMAGEDEPENDS += "u-boot"
+EXTRA_IMAGEDEPENDS += "virtual/bootloader"
 
 DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/tune-cortexa8.inc
@@ -18,7 +18,7 @@ IMAGE_FSTYPES += "tar.bz2 jffs2 wic wic.bmap"
 EXTRA_IMAGECMD_jffs2 = "-lnp "
 WKS_FILE ?= "beaglebone-yocto.wks"
 IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
-do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot u-boot:do_deploy"
+do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot virtual/bootloader:do_deploy"
 
 SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
-- 
2.30.1

