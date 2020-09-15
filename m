Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.14400.1600179298050589574
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 07:14:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=vF/ISzbX;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.171, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f171.google.com with SMTP id s65so2087150pgb.0
        for <poky@lists.yoctoproject.org>; Tue, 15 Sep 2020 07:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gJ34nnrlC4Y6DqE15qP1J4X4vQQimwu6JBmgCxo4Ovg=;
        b=vF/ISzbXxwBb0inJGCgA1EhRmQxZBgUUKB5XAxSZKyyifX2DuAPKn4jLPeCDY5p6js
         Tnv2p4YCIee9lUzPZULfxUj1msxTHrjr031DsjcF4Psl1uq2NyIxzrftSWJcsCjz2IRD
         TqJcKH1KxfvZIS7Mjv2EYttOD95cWVGu/iDrOYYBsQQpgjryvNZ+W1Ezt5c+hSQqCXiI
         gwPLP3PnE+8BBMHO8g8GMHCsm1u7UwkQfYW/GY/hbEpMtCC4gaTn9TfEZDTIGGdHCwe8
         1Vgj2fXS81/4kcQugami0YgFJqH5fuhqQ3HDWK8/iZs9asAm53oWtnFL0xVwX3RTalic
         AUIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=gJ34nnrlC4Y6DqE15qP1J4X4vQQimwu6JBmgCxo4Ovg=;
        b=KK/BgLC0Xy38Luyp9f8PCtf/sGRXyQhK6Z/effwO+ZiieYwWVXMs1wCJ6mR9Nj07ua
         /SGD9FrAE8+sCcuXuuSU72vwgBuPog0gaMe7kTgUL6DJxirkKlOH+we5jHDxWXLto2P7
         4jLyERzeHTkFeS5/Da6eYUIceCDaxRZuWs8foUn6C0JrdaH4Sev7NdxygYmpvNXlpTfF
         weZzjcgQJmrsIMpG5Gp3nTCffXOK5MbtSvcDE9BpuK7ft8Lzp3v1eWvv8XooqXn0Ww7P
         D/PdVH0nxPJaq0T+/dDyk95sGQ+LcYKe7+b4tagiKRnGViv5uX2nWeHh14h6+Tza/Hmb
         EgDg==
X-Gm-Message-State: AOAM530dp9X97PihIgtgDdSQL37NDdUD7Bf5E9gy/HQuP71Rn9P3z8H3
	UeulTg8l68327ESYCIzWdE8Xucl7iXxNW4Bzqps=
X-Google-Smtp-Source: ABdhPJwBQFZvV6KDCuvXbOm0c0AlRB8virjmIShhkll6l3HZNUgochA4j7bqB9hK2n9h7Zsx42/aSg==
X-Received: by 2002:a62:3802:0:b029:142:2501:397e with SMTP id f2-20020a6238020000b02901422501397emr2023710pfa.67.1600179296914;
        Tue, 15 Sep 2020 07:14:56 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id hk17sm11157064pjb.14.2020.09.15.07.14.55
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:14:56 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/4] yocto-bsps: update reference BSPs to 5.4.54
Date: Tue, 15 Sep 2020 04:14:38 -1000
Message-Id: <4780bd63af07fe694a071640cf9942ba3bfc3824.1600179148.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1600179148.git.steve@sakoman.com>
References: <cover.1600179148.git.steve@sakoman.com>

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit cc10c1589b4a4c9471bd5c847ef2f8ccc4e8a58f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 6267485..2c73eb2 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
-SRCREV_machine_genericx86-64 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
-SRCREV_machine_edgerouter ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
-SRCREV_machine_beaglebone-yocto ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_genericx86 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_genericx86-64 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_edgerouter ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_beaglebone-yocto ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.49"
-LINUX_VERSION_genericx86-64 = "5.4.49"
-LINUX_VERSION_edgerouter = "5.4.49"
-LINUX_VERSION_beaglebone-yocto = "5.4.49"
+LINUX_VERSION_genericx86 = "5.4.54"
+LINUX_VERSION_genericx86-64 = "5.4.54"
+LINUX_VERSION_edgerouter = "5.4.54"
+LINUX_VERSION_beaglebone-yocto = "5.4.54"
-- 
2.17.1

