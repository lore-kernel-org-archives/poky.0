Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
 by mx.groups.io with SMTP id smtpd.web12.91.1594937504914950400
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 15:11:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=Rd2qklb7;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.176, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f176.google.com with SMTP id 1so4338491pfn.9
        for <poky@lists.yoctoproject.org>; Thu, 16 Jul 2020 15:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=5brTnHuUjGfM5+o8KdjKaotli/sxZbGtTK3TdJUAifE=;
        b=Rd2qklb7W0yFwzULjQCVkir0fV3JcH5g4b8hpiUuKhg7X2+xo9pLxfEhJ0LD0KAqbW
         zHb/6ciuhdj6CDVCOfYy2O7lsmWP6cdnvd5WAIkezPbn2Yo+QduYVXOsRLv2dFVPChaI
         Xh4V35CBjG97g5cq2Gvzajf9UiHshpFkiGePjqgaXPdLzLv0McE/sofPBBLnks4yX2x/
         RVKJM0e+Y2R1cmsfEmqiAZYUBJ3U7YGrkeGh09YPQ9hHC4DqjJLvzrcD1yZ6u+71IW4V
         i9S8QrQBTrU6mVyhHa2bfhK9kaDYbiVXwxcOgtlROdFdz7eflyg963YOjAeN8VCVtqHe
         7iUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=5brTnHuUjGfM5+o8KdjKaotli/sxZbGtTK3TdJUAifE=;
        b=XOoWbDXdbP+m6uMFXgbaJKRgNFwWhJs7uRK9JZtH8nwzk1Z0z127e808NcnPJix4vl
         DBhmdI8CfV99FvA+U8Dr+Q63mJtg5E/ycisey/cPrHjemKjCUfgWuL7GJ6RARmnJTVfw
         Sd8rcaFncpM0H0AmJEuxOhC4ouoqyxuNcvDmqcBv1pmuWd3WXjOlzheYoN5zi4GCf3bp
         BFpoBnEToJewM7p7rBogPHU59dnFUrWc4MO1YrMXB8PJMiGQN9csk2qS6uZDai6//c43
         /7RX/Junot6TqzmRhqMVsXXuYlGhIYthitIiEwMxwKUqNCaw8iSd/Of8qBeATXzXzyHo
         lbFQ==
X-Gm-Message-State: AOAM532LDjGXCu0aAj20DA6tux27lTxpQSVdzGo/GWpHl5KtdQgsmMEh
	uiANM9qeyRt8KShM4A9lNb3djHxxxzTdrw==
X-Google-Smtp-Source: ABdhPJxrSUL890ZqWejmJeezuVW13M23R9hXmcuRbN2p9V8ZgsIsjKHzQB3AtpGTJE9WtvuemwMVYQ==
X-Received: by 2002:a63:7802:: with SMTP id t2mr6116630pgc.421.1594937503758;
        Thu, 16 Jul 2020 15:11:43 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id 16sm876455pjb.48.2020.07.16.15.11.42
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 15:11:43 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky: Add fedora32 as a supported distro
Date: Thu, 16 Jul 2020 12:11:19 -1000
Message-Id: <aff81f13dec648e6546b0ec2887c55c49fdacb7f.1594937430.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1594937430.git.steve@sakoman.com>
References: <cover.1594937430.git.steve@sakoman.com>

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 7c4a285..7f0a157 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -59,6 +59,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-20.04 \n \
             fedora-30 \n \
             fedora-31 \n \
+            fedora-32 \n \
             centos-7 \n \
             centos-8 \n \
             debian-8 \n \
-- 
2.17.1

