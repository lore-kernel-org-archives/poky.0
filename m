Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web11.5621.1605280251586399372
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 07:10:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=ikweNnOp;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id 10so7855415pfp.5
        for <poky@lists.yoctoproject.org>; Fri, 13 Nov 2020 07:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=A+o3hGBYXdh0Y6fvz+14kILbdIo1LHXV+mkxP+vDCDA=;
        b=ikweNnOpkzXmu7akX6U85M/X4rxaxHym1U7/RKEUoY3xS3tElH6/eqeBCjLTj6nwc0
         8z1j/eJye+BWtNADpDfPlM5s3Xve1tujiu9dpsYqu2CUkA6jt7CBcI7WxFCCz5Ailpqy
         4vSOTkpvYX0pKsYUm2+DUOEYIKiPH5M6QEz3k5lRzdX21BKD7UK91ZDJr5EUisLVcnVP
         ulzy79xtItK9GNyKqzMc7J++4/Blq0Ibg2rvNhdFlHNrsOe7+6kBXwjF4auQVEvg05xd
         eGgwKHQbOFmwSs4S741qDhBwdrm5zbsPjxgXyWeO7bf6haZKZ7+s+KXFexNDhfFcvxFo
         E6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=A+o3hGBYXdh0Y6fvz+14kILbdIo1LHXV+mkxP+vDCDA=;
        b=O7GAIAOiVVP1cStFziTQP9aVuJ80weffigWzqSsLoGNbP0K5oWn2BVgPdzPfQCah+r
         pB/pXY9uE/uVpqL4s5XYYSgZPYdYr0oKo/HQRb1Fzlqzlsg+45lrCxsOUORqd/fp19nz
         yq4ryYYUPwOhoYQWyM28dpNhIeth+R93XWVOjQENXQ5/L+WH4nZY3jbeDMm9qsC5/C4E
         1DQIQBGb6iaLpcgubmYzNRTXWRKLm4iSHR8b8mwOpOGwz7Xudre6NfOjYR/cY8emDanA
         0fYj4IrT3FikpyYuigC6hfbjsjb3Zio9SxeoPvYHN2YBm11YPHLHFuwbzhtZSBQw2wAc
         l4Uw==
X-Gm-Message-State: AOAM5312Z3VL/FEG9DLSdq8ROHOxy3qsLXrbza9HsJ8sHei6zcMUh2sT
	L0SwdTdpLGlO+rXRXnCXFw0BHrs9hxLO+8o3
X-Google-Smtp-Source: ABdhPJxR74A6CprSjxOICxkoEhi/CWjixbE01cisNqZADoabXa80AFIsTTSgEXqgyqjdy5e+SuJG5g==
X-Received: by 2002:a63:4866:: with SMTP id x38mr2371991pgk.228.1605280250084;
        Fri, 13 Nov 2020 07:10:50 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id 194sm9818513pgf.72.2020.11.13.07.10.48
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2020 07:10:49 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Bump version for 3.1.4 release
Date: Fri, 13 Nov 2020 05:10:16 -1000
Message-Id: <c1c79c1a122b053fb3ce0187b3cc89df1bb3bdd6.1605280120.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1605280120.git.steve@sakoman.com>
References: <cover.1605280120.git.steve@sakoman.com>

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 03bc9ea..1c3c284 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.3"
+DISTRO_VERSION = "3.1.4"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.17.1

