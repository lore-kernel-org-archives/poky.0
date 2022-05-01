Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web12.4212.1651446800629312571
 for <poky@lists.yoctoproject.org>;
 Sun, 01 May 2022 16:13:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iSYQIMlx;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id k14so10544218pga.0
        for <poky@lists.yoctoproject.org>; Sun, 01 May 2022 16:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ANM3Obo1/32yK4zafkKJ4eyRUTjCwTeSLMIPX8ySiUI=;
        b=iSYQIMlxABRRefGKpOPX8CSLJvYivT/6DQktAaDbMOSNioImGOF2HIWTUYjXHcMaqT
         7vl3IiwuSqjePTH64VMpGvJxDp6ckveKSS9PCxdHWfwPGSaIKXajrazn8d19a76If/hU
         knp6XzqIcnPG1Q0GM2/K+Qr2nibiJ/xG5XzeHku60Jn+CHSDTK86Jdg9+CixiZYbjPG3
         MVpU/GfED4fKdYb6hTISXPJLpOj8EgHo/7SWTA6o2PhS/zLI0kG5I58POoxIR7cTbzQJ
         rieA5siqtGy1w2XKJKMqy3xEVD4pHl+NBaL342sD8hGKDSQnPQhEbCcw/uZf/Nbbaq9L
         41xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ANM3Obo1/32yK4zafkKJ4eyRUTjCwTeSLMIPX8ySiUI=;
        b=uSdLYQC5Rf2cfq8mPAh2i/QtkDTn+2jjcVcpB8GFeWJDmLEbdO3sDp2EnNs5VwYrcR
         TAxoxGjQIPsv11BP2cyjZrIGBo8XmoVW2ux+kbufuws/DB0crh08F/VccUfNDxyyNjED
         skJRgBNDw1lkQRj7WY9e4xWzMDVp0rpy60s96r8n9kxzPccJlAtQPn+MsAb0MhEtBSgn
         NJeJuRsiflfBmYZi7byZHUYFN47gPMgDo2JVcbQRBjsMM7tCyVlh91XtqnoL7tUD18e9
         OdZ0nKKbfddl5snySjiD8SnhA5EWFzneYXRRWQDeb8iEpH8/drEV1Wo/EV4H9LnMRJjE
         6RGA==
X-Gm-Message-State: AOAM530pECNXk5Lm2V87Y9JqG/LNInzmGSpNEUIpyFvjWXl054nRU4Yx
	abj0u5r4DFVeLgRSX1iGXtnRsxT1XaX+4g==
X-Google-Smtp-Source: ABdhPJzHDfbIh8qLvj3MMVk60+KcbNmPpiB0jvFzjFcTrnaYTO1f244BQt4mipn9bIcBNTT4ZGMXVg==
X-Received: by 2002:a63:d30e:0:b0:3c2:32c5:74cf with SMTP id b14-20020a63d30e000000b003c232c574cfmr755858pgg.504.1651446799778;
        Sun, 01 May 2022 16:13:19 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9200:a0f0::2ca3])
        by smtp.gmail.com with ESMTPSA id r21-20020a170902be1500b0015e8d4eb1dfsm3317675pls.41.2022.05.01.16.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 May 2022 16:13:19 -0700 (PDT)
From: "Khem Raj" <raj.khem@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [PATCH] linux-yocto_5.15.bbappend: Bump edgerouter to 5.15.36
Date: Sun,  1 May 2022 16:13:16 -0700
Message-Id: <20220501231316.4082898-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

brings in fixes with gcc-12

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
index ff85e2e64b..04cd46772e 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
@@ -9,7 +9,7 @@ KMACHINE:beaglebone-yocto ?= "beaglebone"
 
 SRCREV_machine:genericx86 ?= "7f685244afb3acd13e94968312580b63d7296705"
 SRCREV_machine:genericx86-64 ?= "7f685244afb3acd13e94968312580b63d7296705"
-SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
+SRCREV_machine:edgerouter ?= "b978686694c3e41968821d6cc2a2a371fd9c2fb0"
 SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
 
 COMPATIBLE_MACHINE:genericx86 = "genericx86"
@@ -19,5 +19,5 @@ COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
 
 LINUX_VERSION:genericx86 = "5.15.22"
 LINUX_VERSION:genericx86-64 = "5.15.22"
-LINUX_VERSION:edgerouter = "5.15.1"
+LINUX_VERSION:edgerouter = "5.15.36"
 LINUX_VERSION:beaglebone-yocto = "5.15.1"
-- 
2.36.0

