Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web11.19664.1621261455846887964
 for <poky@lists.yoctoproject.org>;
 Mon, 17 May 2021 07:24:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=tJeIx2SR;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.179, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f179.google.com with SMTP id t193so4769956pgb.4
        for <poky@lists.yoctoproject.org>; Mon, 17 May 2021 07:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=bJdL27sdR2yttgGlnAYh1MrhiSW4R/XRBw6eatBQ470=;
        b=tJeIx2SRP+Pb49nB+DXQqqKunqPtO6XiVHlVr97GTQeO83N3BqTM2pslmQHOLSPn9u
         rIg+AnD5wZn9A6AbjyKHDVhAji9bNOiEFKvX+vyMCq7snlCaVdr5sa9g9ACAEMfCz83X
         2ppP71GxGXEY3ioGv+PdCexDMai44+5V/wtEQ9OWmTlPqbhfl17yPSwBGr+LhYST2R+z
         dJz1ObSlDhmHpLIT+q+cAdlfxn/Sz7LcKGDIQHIzF5INFp6R4qikB2LUfMGU1/SXUG83
         gFaL/PrwZ9S4YKMcUd94QiJoId3yJfH9q2i7hVLrz6aojVJC5vDfw6L8q0fnynkpvYvl
         vong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bJdL27sdR2yttgGlnAYh1MrhiSW4R/XRBw6eatBQ470=;
        b=Bq/TO2udR+X85sP0Eq64+ChbVtN/O53NwMpQ7vRgwo/roK5aFUGUOZ77H2sEdMc5p6
         3ArYcoGyPYu67jnqhDCdOBwQpuG2Mw9b4jVn/9c4g7jgnsKqGuuChMTtroF1Wgi1QJwn
         INMs0YyBHgrFOmBZIQsVVEhohJ4LyrOw9SPEwDun3pD7FFmcB4uyqov/V9BM0IPhzMBQ
         9x7pQHgQAakN7gQ8iJ2J2O+qEMw3jS39WUEklBUbCzj+K6LqkN7PFrNMvmetuv8gE/mF
         Y03q315lAnEKQRWRZwsnRHmdlifZcMjCjwsVIgWcg2UGKRq5c+A422/qyX102qpIGCeh
         +4tw==
X-Gm-Message-State: AOAM533lD38fRt8gEyA9me0WPZkWyFKyfBZI049F4uL6epXgURBuMbCD
	WSPk/JCpqKnl5NQ/coj9Zm2B86nnKHA9a+piZGU=
X-Google-Smtp-Source: ABdhPJyMA3tU/WJxpqBbnMiTwH125VyMNwjo6ekfIOwBv+LCN8LeS/n7E8TI675/rEWRNV+9OvB2bQ==
X-Received: by 2002:a05:6a00:b48:b029:2a0:583e:3dd4 with SMTP id p8-20020a056a000b48b02902a0583e3dd4mr96964pfo.6.1621261454947;
        Mon, 17 May 2021 07:24:14 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u10sm10852391pfl.123.2021.05.17.07.24.13
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 07:24:14 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 2/2] poky.conf: Bump version for 3.1.8 release
Date: Mon, 17 May 2021 04:23:55 -1000
Message-Id: <134c1e9902148f907d4f9e78435fa3a827c6df03.1621261315.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1621261315.git.steve@sakoman.com>
References: <cover.1621261315.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a1df0fa..a6df552 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.7"
+DISTRO_VERSION = "3.1.8"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

