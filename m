Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.12772.1614955107437391385
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:38:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=VHVisFP6;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id l2so1504487pgb.1
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=KKsibjd0oa1XmmJKa0ZE6ocM5b7yZq9o6xKHo9GnC0o=;
        b=VHVisFP6PnvjhRCAlevI/DYA45tfwmODxdsnRGc79HSUYzJmwl1SHziBDZj2Hkrd7A
         F8aOmccvegNu0LBZ/MBlvi5GFCTi0Fx+jipOsmpCavJzlVofg9yekvnO5CKDk+vRibAn
         /cD7Mtut9hMO3RvBaK6ZY19BjpQp7J8uoo/LX0XBCcr38AyTsCYqSVmMWG7F/IbzgM8d
         ZvVjqR8trkKKvkpv4zid4xM+tCecgoQSpziOZ+vdAZhgGz2RXgf5zago29p0PZRfr+VL
         sqke06aar+nGrRD9pQI0HvcVFkc2+sxG/aTn3ir2Bxc47avvCEMdXnNaKwDn41vnQAX5
         d/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KKsibjd0oa1XmmJKa0ZE6ocM5b7yZq9o6xKHo9GnC0o=;
        b=QyBuQMnN8x3y57j/wVqlAX5Pv/BLVRZC5lg1nQ51agf8j8smTUl5KdRokl/Wusj/Ni
         82IW3avNrsZZbyYGj8It3JTzFeBK1lfWDkbXE4nUdkzhhjgwyNfBl7s8y8P1RVIuRNsb
         OjhdiFlD3J+XToHSrNKvhB4Rm1PTL2KwQNcPvI/P98SLMAp+XE/+E1ChGm+pOUrtzmxM
         9ijneDGaU1fSeS+A2uTBud6FBIovBc1hMUKhocr+D2sv8b7MSYavLSwFRdAR0H23s8WC
         FVCLoydK1iRMDSHspXpfHLg/FONyZ/71XodZGVm9r4+UhBLdzJMtJ01FHdcoKrVSSrkO
         Xf6A==
X-Gm-Message-State: AOAM5321SiERfv1Fni9y3nC5gtiLsMQ8VdBRNpn/kMUaU4syCaLmFh/E
	lpx5kDLS6YtFwOrHSIJLceG6DIpmk0QlAHny
X-Google-Smtp-Source: ABdhPJx8jrUIP72AhUjWMxxadBzmk7WYhqznlomHuP009Xq68Ms22+d3Why/uh2yLCxfqVNjnrR9qg==
X-Received: by 2002:a63:e415:: with SMTP id a21mr8707429pgi.241.1614955106401;
        Fri, 05 Mar 2021 06:38:26 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.38.23
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:38:26 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 5/6] linux-yocto: update genericx86 to v5.4.87
Date: Fri,  5 Mar 2021 04:37:31 -1000
Message-Id: <35bf4870d6a21ec337e64364f59e65a585349dc4.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1614954239.git.steve@sakoman.com>
References: <cover.1614954239.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Anuj Mittal <anuj.mittal@intel.com>

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 5b5498295bfbe3ca7b2adf9e23228262c3e38f2d)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 4ee895d..91500b8 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
-SRCREV_machine_genericx86-64 ?= "cfcdd63145c0d741e57ee3e3e58f794229c6c09c"
+SRCREV_machine_genericx86 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
+SRCREV_machine_genericx86-64 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.69"
-LINUX_VERSION_genericx86-64 = "5.4.69"
+LINUX_VERSION_genericx86 = "5.4.87"
+LINUX_VERSION_genericx86-64 = "5.4.87"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.25.1

