Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.12433.1639409347071198204
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Dec 2021 07:29:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=hPHUK8DC;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.45, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f45.google.com with SMTP id gt5so12125090pjb.1
        for <poky@lists.yoctoproject.org>; Mon, 13 Dec 2021 07:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=9yAPSYlgnuoc/IueScH2XwwFL4KsHQ6AvEtneBRNvAM=;
        b=hPHUK8DC+VWU1oDUs/XqlXYrYQAJzunCvVlieYMVDDFKNKjXfMNXLhnW8vrgyDyZ1v
         u4FkwOPD6LqI2zQMr1BOH4IGqPUNw5UjQN8eO33klaCJqv1uSjpOwO2ic/TMxWBnP6QB
         ZPVmifmpfdqBDAbENXQtQlrsV20zrlOZrRZsHCNmXVwqM7mvg5JdGd8G0iDNhYBXVLOm
         wrd0/ixsGdDrjfzDXuevyKZbG0z7VfSDxlc1khCuFMBTdgN9UOgcJWEUWlWLmaODKgaC
         BsqVmm0vBUsqYYTIY6gJTwKqfPr65NwWLZqE9aGFSXOZVqT8S+YF47JEV/Dvnj+A6bYP
         WIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9yAPSYlgnuoc/IueScH2XwwFL4KsHQ6AvEtneBRNvAM=;
        b=VSxY+vAsHXIEuE34MImfMeNkKUcE6Vorbnehf6QpGmNYfkWYgWzFB2fcov3YtH0+gk
         wr7TL2GMlwKwTjrwxmcHoKmTEDMb3N/Gi6B6W9mGJQqvumEbHedcUaOnAyLg9+pJ8I1m
         YK82C63N9AnxijjqCDvabGO1eVyNiuUM2kNqZYeTmrH/yTLL06CS3rK/LCKRxInx8J+l
         lLTeuBtV/xaPmAI4RD7BVuiHzbZH2FjiZd39t7vJG8J3lIb6nEjKSHia2hlakvSrOAIv
         t2KtbANeMWKM7w+6qmLZVNTkICwRAiysOwKQuuecfgMMdN8kq800zZXErThtKUGV6Lvh
         4Csw==
X-Gm-Message-State: AOAM5319Rm8Z7SRqQtXjs1szn9HJtRr5I5pjs5HxgaDMC82ZMqa52zia
	1N/fXg12+BYytKlnroc17YMfjJnVDbNWDS3V
X-Google-Smtp-Source: ABdhPJze/3GTU1JTmQbA/Iul+vbc322uEtx2RlDNSa6RtaGk+dVLWhHJS3CHfNl72+DHwJ3meraPmQ==
X-Received: by 2002:a17:90a:c58d:: with SMTP id l13mr45585593pjt.189.1639409346004;
        Mon, 13 Dec 2021 07:29:06 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id k1sm13886723pfu.31.2021.12.13.07.29.04
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 07:29:05 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] poky.conf: Bump version for 3.1.13 release
Date: Mon, 13 Dec 2021 05:28:54 -1000
Message-Id: <936706806b09a0910ee61ae568a04a92a129057d.1639409288.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1639409288.git.steve@sakoman.com>
References: <cover.1639409288.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index bc22b75..a52fcf1 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.12"
+DISTRO_VERSION = "3.1.13"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

