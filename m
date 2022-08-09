Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.371.1660080284772463612
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:24:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=09drZtog;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id d65-20020a17090a6f4700b001f303a97b14so188403pjk.1
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=Crg2Cxr48oLMVZCIDFrDrHKManN3cvGZJiGXzqriQcY=;
        b=09drZtogvQb/ABPdDq34iCgOdIh78TruAuGAz6oTctABZv+SHLvkG4Uu9yJMubBYiL
         xFHz2lzEnlvpv6eAFwdTnvyvCfGgqjmCUdJGhaUv9bqOl7d7w9DWooK7Eb3p8VOAFWUD
         gMBp1XygxDlxyQeZ7IlkKRXB5WUtnyvtpcPwCJm8wyCE0rTfDrk9l5aCfnNTl/URrMQU
         ebQYn3Yr9HfH1MD3/xRVULb8iaCcrE/8dFOUwVKlGV/eRSiW7U0fGMXL6tf/krEyKqeD
         LWwkM0yH/RD3iHH8fJ3DVFx2P4Lh1JuSP9ydntP9Z1WIKpkGSvoqkmom+jFbuYUD4lN7
         ZGPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Crg2Cxr48oLMVZCIDFrDrHKManN3cvGZJiGXzqriQcY=;
        b=CA2vqs5NvPk1UEaT+lrKXXWJ76zFKCwSgLSgUhS6GQgx+QeDw8+Ugi1Pfxxf9hyYNY
         l6xtOficC4uoRKyo0nUBKcnMo3GrMc9Rd/M2NmpbRgJK9NvKW7gLh1Qvs7HbKRcHHXKs
         j0AHY1Pi89CNVO/oMtEVjqF4UXU4XAnJEd4H3XE06vZFRhej9lM0YhpzD2dIUC4cZM8S
         njSG4ODUi0IP4ISiYj5THRs1DZRsA3i/5R+0o03ennZXbuiXcVj32Zu0x1860ycDHJ5U
         Ps6KLeNFouNg6BKCAlGVl3ZJFAD6EFf7gmXRDv+BMa1V+GK/k6OkuPdqu2bd2aMF7Dp7
         fY9A==
X-Gm-Message-State: ACgBeo0J9tOtADRpUTqUbydomWyll8VX52v7Jn50B6vm/+V4L/tP8koi
	EQIN98eExy+LI0r51NIKP03WWSLPKAWI79UV
X-Google-Smtp-Source: AA6agR4k6j2cV2wFruh+jt0VvivftG24gd5L9a6jNHZBMudCgbm7rfDttIqqK4sWti5C4f9yJ8XkHQ==
X-Received: by 2002:a17:902:a982:b0:170:d646:5851 with SMTP id bh2-20020a170902a98200b00170d6465851mr6404870plb.134.1660080294214;
        Tue, 09 Aug 2022 14:24:54 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.24.52
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:24:53 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 04/10] yocto-bsps/5.10: fix buildpaths issue with gen-mach-types
Date: Tue,  9 Aug 2022 11:24:26 -1000
Message-Id: <bb4f4f47f4f95ada5edf55f657fdb215026e8ab5.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    80f5207b5abd tools: use basename to identify file in gen-mach-types

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit f4f6c7812f81ba35165f50ab9ac5f2a3b08ba483)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index 975d6c6..bfb36e1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:genericx86-64 ?= "4d201ec392f149ecce321186ea5494a6e25e28f4"
-SRCREV_machine:edgerouter ?= "58eb61187e8c78dc0241b2b85cb7d2c958f0e1fd"
-SRCREV_machine:beaglebone-yocto ?= "aab4d3436476d643c68ac2efccb887a4386a35bb"
+SRCREV_machine:genericx86 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:genericx86-64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
+SRCREV_machine:edgerouter ?= "43a7a15cfe433584b6065c2492b2a7f9be7954c5"
+SRCREV_machine:beaglebone-yocto ?= "3651cd48f159c3b2a3a60d645baccc9d34baed54"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.25.1

