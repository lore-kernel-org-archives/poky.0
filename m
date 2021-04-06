Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web12.1387.1617735068404915011
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 11:51:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=uUUDEZWy;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id a12so11089364pfc.7
        for <poky@lists.yoctoproject.org>; Tue, 06 Apr 2021 11:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=nqXRHsSc4fDWsedG+blSAfVGL6P7Wky/A/y/WhOprkI=;
        b=uUUDEZWycPV96+v9Q+lNys7CZk2+Y9SJTzYhTBs8wDSW7qGPRchJDEAK9IznnfsR/S
         Shc3/dUn6d/QArkJq+lZ+zYsw1XAzpC99Yac3pqgMrKC0h3d861N8yqErohMWlZ4MUVR
         TQkWK9OeJdNauQ00iFVTFF+gpk+yAdh5wV07FUMZD+V++EskW1oPozV0IUgx/jYnHZ7f
         dq2tUiir7SJib9Xjjl82/jjL7cjHonD0FAZ+kRojIAamdR21LH4SaWLHgFcJln2/fDt/
         tNBB73cW/YEQliZSZGusMfjM7PpjRqRTV98EzxI5z9uz3cL6QIRdeMcP78JeabsvmboF
         TdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nqXRHsSc4fDWsedG+blSAfVGL6P7Wky/A/y/WhOprkI=;
        b=nQTl9m0KKrLf21H0kHiPbBTRVrquMWVmZovCxrJyvhWVESRsril9UweiumEQkHXhaj
         SJcxz2phjweLXy8kOfhDb8hW7foWsZZ3uYnM/Nchf4NnODawusitJgNMEig6bJHm4Rdd
         mqwPfXOm+u0fWDNm75J1WSxeZ9dZJpT6zRzHcZGQJpWdI7zFKA8fKSNVUNFiOfE5s9lm
         W9v845HeR95molA5T+8lO5e5gsZRY3wEVYGb1A0PgIuRjYSXLmZAa/LBdBF3O7+XdWdr
         zFoUChPZgBMpyjepMAadQw9IaS30kX/akTpBZNsGLuMYchdlXj3693ob97aFyDkSqozn
         kc0Q==
X-Gm-Message-State: AOAM530GHzQikBsX5yLKXmZOuJXw1+KsnEUaYAbTC/tHod6UHcxCvkZV
	BVoqpjSxiVf5iOVIOWfrEMDFGPCPf+j2Fu+mGKo=
X-Google-Smtp-Source: ABdhPJz2WTsVJq7pUIciCLtHy/iVZbkvrQSE/euBRkOM2T6IhJzuWJxcpQsLSWHxkI33ZMRTo6BL/A==
X-Received: by 2002:a05:6a00:b47:b029:20d:1c65:75f0 with SMTP id p7-20020a056a000b47b029020d1c6575f0mr28802915pfo.9.1617735067464;
        Tue, 06 Apr 2021 11:51:07 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id e13sm18882826pfi.199.2021.04.06.11.51.04
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 11:51:07 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Bump version for 3.1.7 release
Date: Tue,  6 Apr 2021 08:50:46 -1000
Message-Id: <f525cb7e0b900908e99d7672347a8c6e5be11101.1617734966.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1617734966.git.steve@sakoman.com>
References: <cover.1617734966.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 521109b..d4faecb 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.6"
+DISTRO_VERSION = "3.1.7"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

