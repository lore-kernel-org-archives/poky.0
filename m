Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.356.1660080291088162595
 for <poky@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 14:25:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=DkLte/BF;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id bh13so12526077pgb.4
        for <poky@lists.yoctoproject.org>; Tue, 09 Aug 2022 14:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=hx7WbaMi+q44uMPPtydYVVC1z4MtpMX1C8uAXtSAHEI=;
        b=DkLte/BFRAoE6M/OZUOSZE4ixnzvIuhjvzT+m+sw9i++E9st6l3sbJi5VYtnduzSjM
         OeneV2C1GdvXSyosooq79VkwRY/L71cmxua5O3aM5bo4WhR2G6yLc6LGVrD0HvATySUi
         DW5RngvmSOwUk9vdQOYRE447D7KOwbHisuxLvtbzFjMywHXHK/yJC598P9JA960QUSBM
         8ju6nUtLGS29uiagTa6+Ku9lYLp3/KQUkV87x3B/grfJLRVuJ4mNvD5FleDlYMFtIAs/
         9SOaQcmdyCwpesMxtQS6lzL8RGOG8MNNR+M3Qz0ECKLm4Z2qKZEZvovKh5TW/Tv5EDnE
         37zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=hx7WbaMi+q44uMPPtydYVVC1z4MtpMX1C8uAXtSAHEI=;
        b=tL6DRHHfZjeQZ+zpAljkBXspfjSvs8kBPTNpSc7ZeffjSDcLH/RrR2YxTry4yIjUhL
         Kpapya8voLFpFBFex+m7rFijXRUSisIC92dB56uodcR/mEg3jTofYA28MMSqoTY19x3m
         b0j/K9sG1Uimb9pPRm/I/9Yb4Pg5xOsIyAvV3QTywEiQ4bnB8ofiQRpBAyFWpq2nIXoI
         ZF2dA/Um5hgR9Zeap/MbA6sMO5hyvJemFJyittqx1FyoI/jMVGSzSCdt8RnW+xHQm8hw
         YbTiCDbQWSM/dmRISmCnXRYjnRvBG7FpoFhg3OB+qPUaiAlHxTJqommVcUBDyV1h3PUb
         P9Wg==
X-Gm-Message-State: ACgBeo1as5d2EXsONPZ3HFRuIxDYNmeweqPlmFA3oOsRuimUshQDVNBw
	p839PfXHyuswJosas1Xhf13fFzteDLNp4AKK
X-Google-Smtp-Source: AA6agR7n/kIypIj4Yn2TJ/6R8sU8suaOnhF3gkmBjx4NPsQg8VkkudACVmi0pJwlQ474ar5YGJnXNQ==
X-Received: by 2002:a63:3cc:0:b0:41d:7ab5:ca2f with SMTP id 195-20020a6303cc000000b0041d7ab5ca2fmr9466514pgd.559.1660080299434;
        Tue, 09 Aug 2022 14:24:59 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id l12-20020a170903120c00b0017128185043sm1811214plh.191.2022.08.09.14.24.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 14:24:58 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 06/10] yocto-bsps/5.10: fix buildpaths issue with pnmtologo
Date: Tue,  9 Aug 2022 11:24:28 -1000
Message-Id: <242e78cb85fa78ec6dc7aab8dcb68d3f3b7bb5c6.1660080128.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1660080128.git.steve@sakoman.com>
References: <cover.1660080128.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Integrating the following commit(s) to linux-yocto/5.10:

    2883e69e202d pnmtologo: use relocatable file name

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 39ba1201ca46f0b1e8fcec29dd885cfabf4fc89a)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index bfb36e1..93466b7 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,10 +7,10 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 KMACHINE:beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine:genericx86 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
-SRCREV_machine:genericx86-64 ?= "80f5207b5abddf0dae8eeaa5e3bcfe0e23538e62"
-SRCREV_machine:edgerouter ?= "43a7a15cfe433584b6065c2492b2a7f9be7954c5"
-SRCREV_machine:beaglebone-yocto ?= "3651cd48f159c3b2a3a60d645baccc9d34baed54"
+SRCREV_machine:genericx86 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:genericx86-64 ?= "2883e69e202dc7948c99a7828e192b2b42c2d90a"
+SRCREV_machine:edgerouter ?= "7c9332d91089ee63581be6cd3e7197c9d3e9a883"
+SRCREV_machine:beaglebone-yocto ?= "3c44f12b9de336579d00ac0105852f4cbf7e8b7d"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
 COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-- 
2.25.1

