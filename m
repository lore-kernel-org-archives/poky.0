Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web08.12704.1614955086286190620
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:38:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YGpd5Y8J;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.179, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f179.google.com with SMTP id 16so767550pfn.5
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=17XMXO49Zg4OHNjSQP/IUSflLXKCp7CSUjwF5Vg3E04=;
        b=YGpd5Y8JX168lWsh5ed05qE1ttIkJGfPx2wzIwY9uwjZaIL89gvkL/Atsu9sm3wAX4
         HbsHZrkZ0oAMl3QYeIrIf/+DJTMVYNG3F2uNxPYPDKkjZT+tdoSuwRhyTKZlDUHXS8DK
         gwIIHrDKndDKfKOMOnlk97qI8U4poNYqFfTmn3VcHwg0oWrl+4lLShvEzlIEwdF6Ir0i
         glx1rf+MMx2eZYHJIT9vQm7ROK77ywFbx7FqHq9hWzuvrgRZmBaqUfmDW83oljRHBcWX
         RLpatkJG0M7kLEh+6VEaHE3syShpvYBYiCHtcg2GXfxNuSw5WKaoY8LOgeIHNWSbNbt0
         i4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=17XMXO49Zg4OHNjSQP/IUSflLXKCp7CSUjwF5Vg3E04=;
        b=SxxEbVs8rVBDMNYsJMCIYLcsCA+3t/5k6T2WmZ6mLPqcPOGMIvgBmertBlY6uY/LDF
         lqPfNNz6nj2hz17nO2P1GLqxw5QwVyIp2Fll3megOLItR/Y2gAJQuEUWBV//hvvGlYUq
         GYfOYCnrWfxsRTiKv0Z34ehNJH43H1MNm+PdUzPx2pSOo2sRN+k6G84pNChJ+HuM44c6
         oOozvuc8LPE/rIInPpRzZ+XfIFJ84Un9JCBKybDkb9GsHs1f4OQrSTsAAZ8YS93Rz1wy
         hPMrJwpDvyXunPrO4Ak0L4Neen7tkuHGWbMfpFEwGkke5lkMaFApjX44YaLsObise4kH
         Qg2g==
X-Gm-Message-State: AOAM530YbAFmVCdDEjRlI7tLYI/s0vPRRM9gV4fCliZ5qJwmGdzdj60r
	aT2hla3KCbL+4eJ4O6yrR13dBn4f2uxitHVq
X-Google-Smtp-Source: ABdhPJwQ4PzaSFvBXyCpNxjCTWFS7DOczhWD1LKCyAUrAPaRpvQZe983C5XApMykc3WPdn+6MR+pwA==
X-Received: by 2002:a63:1d52:: with SMTP id d18mr9039882pgm.403.1614955085268;
        Fri, 05 Mar 2021 06:38:05 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.38.02
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:38:04 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/6] local.conf.sample.extended: fix double 'of' typo
Date: Fri,  5 Mar 2021 04:37:27 -1000
Message-Id: <623914eb5b7cb4e0b779bd53f550547164d727e1.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1614954239.git.steve@sakoman.com>
References: <cover.1614954239.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vivien Didelot <vivien.didelot@gmail.com>

Remove the redundant 'of' word in the INITRAMFS_IMAGE comment.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 200b05182c74f3f4f778907d5ee92831adb3d77e)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/local.conf.sample.extended | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index dc92a16..5e1edef 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -328,7 +328,7 @@ DISTRO_FEATURES_remove = "x11"
 # The INITRAMFS_IMAGE image variable will cause an additional recipe to
 # be built as a dependency to the what ever rootfs recipe you might be
 # using such as core-image-sato.  The initramfs might be needed for
-# the initial boot of of the target system such as to load kernel
+# the initial boot of the target system such as to load kernel
 # modules prior to mounting the root file system.
 #
 # INITRAMFS_IMAGE_BUNDLE variable controls if the image recipe
-- 
2.25.1

