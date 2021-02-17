Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.10156.1613579533586895390
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 08:32:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=osGjS6nT;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.54, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f54.google.com with SMTP id t2so1978099pjq.2
        for <poky@lists.yoctoproject.org>; Wed, 17 Feb 2021 08:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=NDu/o/9YEU32a489XcjayZLes9yuZVYD6WfdfStDwdg=;
        b=osGjS6nTvDLAj7AjZn8/jJ+OSTAeReyP7g/s6Vn5xxLMezCHmivAQDGJFlN+sCyVVG
         qaVO4VHhtwvvylI9ReRiKduASX75Occ4yQQ8+nnNzDq4yBkyAKsoGyn4CxIDiwU/snLS
         70GyngNYo89NGVthFN+uebH8znBSEw8YsSIYF1u/9/a3w1MThN8c1m1TCpRRe4ZLXT2Z
         VdGBr7ggurddJ/mzqfhr+uUVwHfMO4VftkHvRTVbGDtC4NnBHvQse3nC7VkbK9D1Q6q3
         nJrKHMXC6OXbeEl/1pg5i23PHRcIMmCtCvqppkvVL+Y756kzHXlqm8XglYQUGzOqZP9n
         nDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NDu/o/9YEU32a489XcjayZLes9yuZVYD6WfdfStDwdg=;
        b=tRvlWTJPsdgsVL/zDcllcePqURDXLpQIsg0+3J/E9BfObMly1dFGj1x2hlL23NMcaF
         FJgCZa1PAYQ+LDbofKBNeaDPbFcC//bozfVYET3WBpvLLHVUKTVCI74tvJzZh2axk9sk
         uiYPMlG0x2QbYLUr85a7Q07XqwG9pR5o0B3Qq8C3R5u2i1dbPFai3q2BBHT+tzapWtj7
         g6ooO1hXLAJIEeebilY3RlPrSpmbgzy4VFaicnfWB8mOAIX04xY9g66jNlUaZyq/VBPu
         jRivJRkn/o6WBuSX1scLnusfgLqKLE3QvC7lsxREeNzY7yvvSz1KqsYVl7N1tV17iGbi
         jKsQ==
X-Gm-Message-State: AOAM533AsIkN2xDbqZF5wK/Fh6ksLzbh68HTaHyo16ocKq1KPQ9/Floo
	pTVmxc24MaksVgp41pSTqyk+1M8xDBWUeqIrYJM=
X-Google-Smtp-Source: ABdhPJxYxHaDZ8eRO7lX6Ryu7eEtTM2qOnSNr1E7Nx0MU0JTUGwjNbSF3lzzjZjKubMvScd1/CucKw==
X-Received: by 2002:a17:902:9f8b:b029:e0:a90:b62 with SMTP id g11-20020a1709029f8bb02900e00a900b62mr3151098plq.70.1613579530767;
        Wed, 17 Feb 2021 08:32:10 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id f3sm2768517pfe.25.2021.02.17.08.32.09
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Feb 2021 08:32:10 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] poky.conf: Bump version for 3.1.6 release
Date: Wed, 17 Feb 2021 06:31:51 -1000
Message-Id: <345c5ee171fc11bb7a8f61c1ecac1a9fc7a86403.1613579446.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1613579446.git.steve@sakoman.com>
References: <cover.1613579446.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 0b6c9db..d46d01e 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.5"
+DISTRO_VERSION = "3.1.6"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

