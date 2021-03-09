Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web08.12947.1615312048509223870
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 09:47:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YRps9ghI;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: vivien.didelot@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id r5so6808294qvv.9
        for <poky@lists.yoctoproject.org>; Tue, 09 Mar 2021 09:47:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BhWHSnPs9v1G2xyis2oyCdyaFhFjiic8FO+FA3L+8SY=;
        b=YRps9ghIqLH1s6olPnu8wcIXTjFCS9fuReVeyvR0To1nmu7V2VDt03gs0u3zJmIZo6
         I65ZpLVbSrU91YDP0Ep8+NDEg1DjS5T3B+J4CdIgGtDvQRLStVlF3j1DAmAS/gq3we4A
         eCoSQrb0ZbPwlqdbYGEwaXlogFlA05sQM/H4zW/NaeN7fyFkf1h2OCzktCWKhbEay3vi
         SNHw8x1lfXzehW5Y8f3jGE4rdKSL1kKywGUBuLF2tqlIqqc1cahcisqASx79Aj3fCxoW
         89F+h+co1H/gj+3akdklc05PcqHz7Rwz04d5PhbYy5eDzTjaEa0hpkSvM18Qdn6Zanx0
         laQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BhWHSnPs9v1G2xyis2oyCdyaFhFjiic8FO+FA3L+8SY=;
        b=crsfYCySVhsI2hxo4SnRpPmbIi/fojUtIgl0IaJGrNrS4mGLlpWS4neQ/CW1oLwQWv
         Xcp+PvZDCwam2+SIT9IttcEbbgnizpWBnufjL+ONGPRkm7Ai/ivIRizwMULjbt4q4SDE
         Hwq1I6z1HN5XONGq1XJKNAa+PpTnWPFUugYH5HWkniAD3GG0aSdTEGf9yX6btUUO7Ejn
         1JpR9ch4JQZKZCLokZaBoIsxBaOZQh6hXDVI8AZ1UBWO4NB83T0xS69hSXziEZj2b2dK
         /7cHG6RADnByuKi6qY5TCYFbpZ434wNDQc2QambufbhyEjmfW6h9FAc/v47IbFF3TEDr
         Ez0g==
X-Gm-Message-State: AOAM533MCCgSOYnOCu1M/dYDhfoZ91ivFdYP0/RlbWQEzpW+vZAC13a8
	4orm0PzMAJnK1nl8kJmBEwW6sphEpiE=
X-Google-Smtp-Source: ABdhPJyt8phUposHa0d2Rb+cw4o9t8rEIg7dTa7pxqThBYEX4rXZLPlcs2fDRz2xcZiaUaVQyGFMLg==
X-Received: by 2002:a05:6214:2b06:: with SMTP id jx6mr26470388qvb.48.1615312047465;
        Tue, 09 Mar 2021 09:47:27 -0800 (PST)
Return-Path: <vivien.didelot@gmail.com>
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca. [184.163.105.249])
        by smtp.gmail.com with ESMTPSA id e190sm10667979qkd.122.2021.03.09.09.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 09:47:27 -0800 (PST)
From: "Vivien Didelot" <vivien.didelot@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Vivien Didelot <vdidelot@pbsc.com>
Subject: [meta-yocto][PATCH 2/3] poky: don't use space with +=
Date: Tue,  9 Mar 2021 12:47:14 -0500
Message-Id: <20210309174715.26432-2-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210309174715.26432-1-vivien.didelot@gmail.com>
References: <20210309174715.26432-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vdidelot@pbsc.com>

Bitbake variables are usually appended with one of:

    FOO_append = " bar"
    FOO += "bar"

While the space is mandatory in the "_append" variant, it doesn't
hurt in the "+=" variant, but it can be misleading.

Remove the space to avoid confusion.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 623f39d..4e416c0 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -25,8 +25,8 @@ PREFERRED_VERSION_linux-yocto-rt ?= "5.10%"
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
-DISTRO_EXTRA_RDEPENDS += " ${POKY_DEFAULT_EXTRA_RDEPENDS}"
-DISTRO_EXTRA_RRECOMMENDS += " ${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
+DISTRO_EXTRA_RDEPENDS += "${POKY_DEFAULT_EXTRA_RDEPENDS}"
+DISTRO_EXTRA_RRECOMMENDS += "${POKY_DEFAULT_EXTRA_RRECOMMENDS}"
 
 TCLIBCAPPEND = ""
 
-- 
2.30.1

