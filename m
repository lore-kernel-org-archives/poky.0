Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web12.8675.1646749784890766549
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 06:29:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=S6ggAH40;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.52, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f52.google.com with SMTP id p3-20020a17090a680300b001bbfb9d760eso2373156pjj.2
        for <poky@lists.yoctoproject.org>; Tue, 08 Mar 2022 06:29:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=z1TgmGJlw7hQU9x3Nf/k7HOrS5ySKNzbIrYCbqSYK9k=;
        b=S6ggAH40w1P7DCgcmO8kL9cCkAJjwrlYRQmsBlJBQQ1/PDnvlFHOn/36Tnt/7B4q6X
         RCSiz3BoXijszq9UEx84ogy3D3/wCE31/XiG909s4WRK4cglTH8X9y3veyVptlcY8NtC
         bEg75AVvnB/7DoL+D8+qTuJzVblAelemsdwqrOog8eI1zhbOwKwx3lw3AKF42zEdEQaE
         tNFwr++/E0RYP+TnjSnZpJEf5OY57qp7PPoBWeXzWivcBgeaR8z8+RZzRT9u0a1W8Gld
         haTzFaYzwkkJ+vwGkXL0qoPdihgllFixeMDUy3Ei7T6kGaQKh5ptIqfastgMxUNyMmLl
         SI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z1TgmGJlw7hQU9x3Nf/k7HOrS5ySKNzbIrYCbqSYK9k=;
        b=KdfSdAGSOsUV3cBd2HzrYHLxbwXdaYlrAxKF308v4XhJJqbnq/Z9PSB3xCFDhzPTeW
         safA/XkBMxH6ZLzk8ZGjDAokcl/aRKS56AGsHv0FXdyeJLpPec4pGp2iTUgKfrDsFvLU
         mNFKHPuN2GGyVd5kurS9ai83qzI0GuqNQ1yB+G5AMP146dGiJcj/NijZcVnblXbntnSw
         HCrKR7ALZBUz0kEYo1jywi+Xjvv7f07FnC03dkX35b1KrW2M+ZUWYurTdl2pdxuy5Ooh
         RtvvTPj26LriM4nILYppe+q8GW6weTy/BQuLAjn/TyFr1Xa740tL2Uf/7AORd4rNctsx
         1S/w==
X-Gm-Message-State: AOAM532YCGepEEykJRcetgNpe7NlrCWJSfS4BhWZT3PAl1aovOEMLvZn
	DevxYdnI11Hz49Kbu03FxTE7f4pVIqjSFmF9aMU=
X-Google-Smtp-Source: ABdhPJzWs3jG6pVoDukI5XpoMqArkq94y/nksfPURKklHOQ1oCpO0tb/DhWxR6dpy3LKQfApPJX8PQ==
X-Received: by 2002:a17:90a:5995:b0:1bc:be7f:f5a1 with SMTP id l21-20020a17090a599500b001bcbe7ff5a1mr5049382pji.84.1646749783934;
        Tue, 08 Mar 2022 06:29:43 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id x190-20020a6286c7000000b004f6bf60b958sm15286829pfd.125.2022.03.08.06.29.42
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 06:29:43 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/3] linux-yocto: update genericx86* to v5.4.178
Date: Tue,  8 Mar 2022 04:29:25 -1000
Message-Id: <e6cb7cf8a4a3221aea9abc2ab7a7e11586d32a68.1646749124.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1646749124.git.steve@sakoman.com>
References: <cover.1646749124.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index cd059c0..b2824cb 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
-SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
+SRCREV_machine_genericx86-64 ?= "e2020dbe2ccaef50d7e8f37a5bf08c68a006a064"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.158"
-LINUX_VERSION_genericx86-64 = "5.4.158"
+LINUX_VERSION_genericx86 = "5.4.178"
+LINUX_VERSION_genericx86-64 = "5.4.178"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.25.1

