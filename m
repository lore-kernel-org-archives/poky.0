Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web12.4352.1595043386860702877
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jul 2020 20:36:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=WJWSwcjr;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.177, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f177.google.com with SMTP id x9so6231974plr.2
        for <poky@lists.yoctoproject.org>; Fri, 17 Jul 2020 20:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=s+AZ1CliAIjgXMlWVCf7B1+FKCwUb6oP1Ah/O/3m3hM=;
        b=WJWSwcjromb0G3UQfMPPkrD3LtAQbOOmFuBSvXdE/dmCNsY+Vli8ePatmo1xjctVRh
         B25HzZZGNM99uHRe0EbUrx8WhgbZSX3y7+gRcB0KyJpXGBljazKN3oOaT4QbPZV3K/e2
         0Y9aY+qI1ddhxwzKWieu/UTjjU9DJjXPJtS0gY/9xuIsjlKnXPORwpiRrAr34HGjy4YL
         G1wdc/eA8KfEe/ZrMOHrWtUR/7pFdhBCVWg997RZjsntQWJ801q0VYmpFtUBOAvPLtb4
         S02P+94fU57Z3A12wK8WlCCkvpRTTl7TQqn6L1xoa4JyoW2NUxPld9hJ1SbBB09Lp+uR
         cu6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=s+AZ1CliAIjgXMlWVCf7B1+FKCwUb6oP1Ah/O/3m3hM=;
        b=JuUNMiz1/mFBYnbU6DqM1V9bR9NJEv7UU8GW/T94BHW0omjiJAR4tXtycPASQidAGX
         MMc1/N8fnAtR0gcTIxw1UzjB7Lp8nlv8l/m1GLr4cXNE4NS7fEpJ/gTatGgi7yjWH5V+
         P69wZG3+V//5H0K7Os+PA9aFDHbhSG/aDS/8d1Q6pyFEXuCacVdlFdzqcWsmhfvbLQcU
         C25LRpWWaPmGqDE0w+pEycDAgdb5Yy5L8Pu6bqJlwOXhtc5FYxPjDZLQ7FvoEVDs57gg
         JQDTW7nhV0Ej2iuQcpOm0m4s2Dthu2Xwd1SrTob79HDlCzfwbmAMsRnw8UXmN7ikNlVF
         zwJg==
X-Gm-Message-State: AOAM5317iZsySc9Ro6uoR18yPHnKTiRfvijJ9jRDaXL8bDGB1/MTUNdB
	KS13nlUpTwHNSn4bgBAaZPIfzeUN1Aw=
X-Google-Smtp-Source: ABdhPJylSI6ucikWxN0oG4eGHVQELbOVdpq2mUHSuyjXz3Ro5o/002mHr+59fxROxdpq7HfHqqi6XA==
X-Received: by 2002:a17:90a:14a5:: with SMTP id k34mr13477508pja.37.1595043385838;
        Fri, 17 Jul 2020 20:36:25 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id e8sm8606887pff.185.2020.07.17.20.36.24
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 20:36:25 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Bump version for 3.1.2 release
Date: Fri, 17 Jul 2020 17:36:12 -1000
Message-Id: <5aff5405cb4f00fc1f5f88b9fc8cd482331b746d.1595043292.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1595043292.git.steve@sakoman.com>
References: <cover.1595043292.git.steve@sakoman.com>

---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 7f0a157..7c77ebf 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.1"
+DISTRO_VERSION = "3.1.2"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.17.1

