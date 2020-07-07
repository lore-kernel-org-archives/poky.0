Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
 by mx.groups.io with SMTP id smtpd.web10.1272.1594161150555811340
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 15:32:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=tnW/IDLZ;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.68, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f68.google.com with SMTP id gc9so290122pjb.2
        for <poky@lists.yoctoproject.org>; Tue, 07 Jul 2020 15:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=gbp7uy71ZSlIC0fDBP5zDJYFrWYooIvAqvvGbYn9Dg4=;
        b=tnW/IDLZHXbPhkAWS7O3ntNhxQI+IUnyboRNBExfRcy/ot0l5ymeXJLEDLC4iYBUZ1
         U+ov/KqDwQmKzbr0409emoGW5W1b7eauhAPA422XDRbzb20Ajet0x8T5nw4ksUZF2/Gt
         dXwxrMENhwrT+E/Np7+X9jGZYq0vPfaxOFz4H75mkE7A6QS06w7w1TriSLNd0d1Icvfx
         LHoCwXY4cktEzq1uI2LQ3+PPKAPwBbK2mPkWG30NKpkXA5cutnnkL/NagQYO5volhBwq
         AgLsVjFGamTwPZZCxoBSfgrjjnRT5db+tI91Fq2dsWbKJO51XoJTA+q7QkPQuehwlRLt
         UwNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=gbp7uy71ZSlIC0fDBP5zDJYFrWYooIvAqvvGbYn9Dg4=;
        b=sma7uw437ADqBJMPGWac98lByADFBJVhqx1HDswSRN1QQWvPpbJOmy3SErW6ocIGlX
         FsjSlSxV791J/POkCAgq0WnHEoIl+foUZOxR0pXBwFA1zxKLQYwINlyNw76GVAwef47Q
         xlcq1g+piZvG11TqlAWXCUay+jGkFEmPD2QjjsSSZCaL1jb+Y8qQYMgH89sRMnybHxrr
         S5Emp0dutWzv7iQRqYZf1mTMZKUF3V2YyH7i49A5vSSnM/+cKfHS0CZKWLcH/UiyhFLk
         1nMhSnM9jevDtUhQn8x8Pg/H+aXCC+7NQwLvtYFcHRCn8L9W5LQn3alofDpfJivu2Lnh
         /hSA==
X-Gm-Message-State: AOAM532KXITDSJPCOdqjzda60e0xDbQGOVp0UzfRucUxfmxOSf5VSebX
	GsNQtlbybIqu7edfLjRY6QwuBHUDaKDLwQ==
X-Google-Smtp-Source: ABdhPJwlgdRBYO0sPsu5yo86NBARyCzDtURsXt3FL8eWmd4EoqR4rT9idz5uWMOw5WijULxMwxo/IA==
X-Received: by 2002:a17:90b:3901:: with SMTP id ob1mr6254168pjb.168.1594161149594;
        Tue, 07 Jul 2020 15:32:29 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u19sm24439179pfk.98.2020.07.07.15.32.28
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 15:32:29 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][master][dunfell 2/2] yocto-bsps: bump reference boards to v5.4.49
Date: Tue,  7 Jul 2020 12:31:50 -1000
Message-Id: <133a8d72a237a76727d7005539ad88c216881268.1594160917.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1594160917.git.steve@sakoman.com>
References: <cover.1594160917.git.steve@sakoman.com>

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 9f108add55395e82081907675f881052c336ae26)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 7207442..6267485 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
-SRCREV_machine_genericx86-64 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
-SRCREV_machine_edgerouter ?= "f4d7dbafb103e4f782323017c239c548871c1567"
-SRCREV_machine_beaglebone-yocto ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_genericx86 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_genericx86-64 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_edgerouter ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_beaglebone-yocto ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.40"
-LINUX_VERSION_genericx86-64 = "5.4.40"
-LINUX_VERSION_edgerouter = "5.4.20"
-LINUX_VERSION_beaglebone-yocto = "5.4.20"
+LINUX_VERSION_genericx86 = "5.4.49"
+LINUX_VERSION_genericx86-64 = "5.4.49"
+LINUX_VERSION_edgerouter = "5.4.49"
+LINUX_VERSION_beaglebone-yocto = "5.4.49"
-- 
2.17.1

