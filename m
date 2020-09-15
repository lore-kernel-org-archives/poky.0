Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web10.14389.1600179304199306082
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 07:15:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ALn97Nom;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.172, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f172.google.com with SMTP id d19so1414273pld.0
        for <poky@lists.yoctoproject.org>; Tue, 15 Sep 2020 07:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=O9P4DTNL3y3SN4LYajikDK73bBqkQP8MFrlc3uQLIT8=;
        b=ALn97NomuRIED1xKVMCGhO+xmKhQ6rPpgCEQ8pFg+RTW1osgYvUlMl1AFK40bMQhKB
         771kg3b7kxFPlkmi0b3JiNAplY6iZoahTEmhzA3tOolZ2pumokYuoPzDNtOqz0bNTeqt
         7ukCLL5A9U/StY4elHymtjOCktiNNNxi49YCsUTCjc0aha//CjgrRwSRfELmrsB5kbOv
         46yxFzxQat/Xa37WGlnORzat8oaZAX+Fe0UG8RoxE4GLuMOYUBcEcvfcL56X9JchbBdk
         uuQj+gWoTYlaF/yifqjtfxlAivXK0nFEslc1hfukIbQPUOwrglN0wcMolsS6mWFFeQmS
         Ou1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=O9P4DTNL3y3SN4LYajikDK73bBqkQP8MFrlc3uQLIT8=;
        b=WkQHc7VERstnf+1p2w2FXHUAyo7NAvYopVVNDxg+OyCAdKu6km2P0TYkAR7x5TQ4sF
         SwHSQ3fwJ3/nuDUR3LhOOB2GuSeHhQ8AncBF3sUAz4uIPGtiuARYgC1pwdDxmYGB7gLZ
         vhCdSI7ln8mwUvnyRcC2MHRVpQazzQuMRuhOIbO4BWr6NLGcuVLcTuYdflekUOwqg9i0
         OyyAmv5F59XEjoov8OPRd7wBvJMOYoLYRVc6NOQhnUv7tC2DGhTXDZzXh0TVkJVay1zf
         v4MZSL4pGLO8AMCdCVejKvYQhqpR3o2Z/CZHjML1f2VY/Uz+8UC0IU7gtmZR6Tnr24Bn
         tKzg==
X-Gm-Message-State: AOAM533YoB1OMYK4ooayHm8eGJBVbqAonLqEX05qCA0TwD5JMLPgcmQL
	+ADSzSMmBa0pm1Mzfse2BlpHfJTrAORkSUz7UGs=
X-Google-Smtp-Source: ABdhPJzAMNLY3wFxPLWrIZhf7SyFRIueskKIfTNoVSUk9NZIxcqwTo0YQK97NBRazx4rD0R/4hrLmQ==
X-Received: by 2002:a17:902:bccb:b029:d1:9bf7:22f4 with SMTP id o11-20020a170902bccbb02900d19bf722f4mr19867846pls.27.1600179302886;
        Tue, 15 Sep 2020 07:15:02 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id hk17sm11157064pjb.14.2020.09.15.07.15.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:15:02 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 3/4] yocto-bsp: update to v5.4.58
Date: Tue, 15 Sep 2020 04:14:40 -1000
Message-Id: <d46b40c0e1387ac0d7883659a88b9842f5b7350a.1600179148.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1600179148.git.steve@sakoman.com>
References: <cover.1600179148.git.steve@sakoman.com>

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit cb67b9bcbd18a612a6e5e5bf6acfe1614aca990a)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index e1c7372..9c37f91 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
-SRCREV_machine_genericx86-64 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
-SRCREV_machine_edgerouter ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
-SRCREV_machine_beaglebone-yocto ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_genericx86 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_genericx86-64 ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
+SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.56"
-LINUX_VERSION_genericx86-64 = "5.4.56"
-LINUX_VERSION_edgerouter = "5.4.56"
-LINUX_VERSION_beaglebone-yocto = "5.4.56"
+LINUX_VERSION_genericx86 = "5.4.58"
+LINUX_VERSION_genericx86-64 = "5.4.58"
+LINUX_VERSION_edgerouter = "5.4.58"
+LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.17.1

