Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web08.9854.1634744751754185399
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Oct 2021 08:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=DbxUOcUt;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id v8so3280023pfu.11
        for <poky@lists.yoctoproject.org>; Wed, 20 Oct 2021 08:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=6WRn+d50f2oSVnQztBsmgP8GHmIgLPfL6porVF/X6tM=;
        b=DbxUOcUtrkCxakEncfPux1wqBCs0jP9UgEgmLjX/CuB0koC3U9CZhVSGwETT7bn9Xl
         yLptoYBBiUGCcYeAxCsskcQiEFx/OemXUO0C7OQS43KV9Bm8x2uYtJ1/1TvoILNLPSkC
         2yr8N2SBugHZiJz56iVcNTxQj1l6ieD1TtczBT063XAYh3Po9Nq5IDHO2V/INXM7Nm9O
         9Bkk0MJCh1OZYnzZO2a1/nluAwwUDcFJDp16wCZT0KX45zMOrEVDlrOCC5Xq9i10k1mh
         jc7v/eLT8cBsEguZYvhrDQVbUKfbeuxBLZTYBj+QYYPlehyDm3Xfg1K5hmVAqzT9Mr3S
         +Frw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6WRn+d50f2oSVnQztBsmgP8GHmIgLPfL6porVF/X6tM=;
        b=VxTOhqRtRaH2i1W8q5ZFdSfo5jq3gIsR5J6sih5668WKA7dxwX1UdDQcuElP6YVEmo
         JMNu9EUCjzdiTTVxPDDMjRJzC3EZ6aQuqFZXmizrR8zKQ6pAC/NmvLmCqPpplMZ0gJsI
         EqotcAMlfPDQ0rsnigt2QzzuAFR5BMjIHfKuGx2e4hLRuugfbcC4WcSBMmz81zblzbjH
         m4owEjepoWOfIP6zdMC50/nxMeyViCq3i992oTnzDUZZWZbiJH/EdNbS7S1v2xTsoafS
         w4rw+V0JcS93WVVHAwTEiLWPX0CwfCsRvsxFMQVbtf0gsKSSq+marRDCMlSUoYn7talx
         547A==
X-Gm-Message-State: AOAM5336XClrKE2XjbVYfeTpWE3xYurGKZrnXkVJ/SPZ2XOeVKqt7ORY
	FKRTx0JMf8B9T6PDX4YRDVSKYGxZTMm6PwlZ7R4=
X-Google-Smtp-Source: ABdhPJxPwG/pIejrZx3PHP2knNhJeZQlh/DYopm5TGFkCqXrBpcsiRpsaUlbdqMYQb4QzzYNVL3Wkw==
X-Received: by 2002:aa7:9047:0:b0:44b:e142:8b0d with SMTP id n7-20020aa79047000000b0044be1428b0dmr492095pfo.45.1634744750723;
        Wed, 20 Oct 2021 08:45:50 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o72sm2840179pjo.50.2021.10.20.08.45.48
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 08:45:50 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/2] poky.conf: Add fedora 34 as a supported distro
Date: Wed, 20 Oct 2021 05:45:30 -1000
Message-Id: <44c3049ede99180600c891e98e621f0dc565140d.1634744401.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1634744401.git.steve@sakoman.com>
References: <cover.1634744401.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5b54df8..d366922 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -61,6 +61,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-31 \n \
             fedora-32 \n \
             fedora-33 \n \
+            fedora-34 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
-- 
2.25.1

