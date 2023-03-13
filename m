Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.26153.1678727271397200426
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 10:07:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=w9NOhCFN;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.49, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f49.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so2839095pjz.1
        for <poky@lists.yoctoproject.org>; Mon, 13 Mar 2023 10:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112; t=1678727270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zz5tJEqy1kmGv3CuV8iYFFTwwBlpqh/vyTj/heLQ0PA=;
        b=w9NOhCFN6PQO5bGr7U9/bKxdchSAX8EGF7ZDdSUapszO/eWkO12aIzeJZqcYNIc60j
         FQcxeLIbQrrH/J8SBHfnytYmGmtGeKUECs0JdxS9KFwBUv3j8KUHJU9LMg9vsOYmPECq
         HS2LrnIsWwHI/9eD4ObTsnTzFk5WDvtw59HsZl0TpZ9TZ8/EpCuf7a3trRRVLIY5eDkx
         Usgl0INx6lbVn6e8Uoj4hNdf06cygRFaX/Z9lSANPhAXTaDlhwwigDqW9gzJJ/e5hsbk
         zv0YJYCakT6FKA0/3vY6M2qB8kLcfRnn1ZKKLG60MXFWTFqPQtk66y7u5w/54lwy+s2O
         6Hiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678727270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zz5tJEqy1kmGv3CuV8iYFFTwwBlpqh/vyTj/heLQ0PA=;
        b=2ex4zxINRbeMowzGnC6H52fT79IkItRRfjcRmNwbXDFUiNRlypCzE+XELkX+DT7XqI
         cKdsluRolP1RPyERR5uswTuJ3PVuXOMWv00bmVQQMd2W2vDzxPe4X/WCOG3TO/xdFJfD
         nfiAMOe0dO9gD5IN1167G6v45M3GnO61IqmfYAi8Jr1iPhBu0aLe4M7XmjC/QDoglPnq
         XS+r1nYKMA7olauKOw89vV7ubzcCiIvzZmKQQ84SNL/KtAI9VewjNw230MNDC4oQuR78
         taAYKeaYs40otTuOdDLW/d3/ApPLJzZBwuM01QKGauaA1iFbLVtXhOc7m1+BqB9za8mo
         Y0Ig==
X-Gm-Message-State: AO0yUKXaTGeUa/r/yBlnaEEUJAdJ4iVbdS2BznC5SDet8Ycscdr+c/wQ
	j2t4mmQnRgzAvzUtyKcQr5b7IFN3tuNdfT5W4y8=
X-Google-Smtp-Source: AK7set8wTd9ELfSleeu8+qJGCDk8xyncrz+pOS/vRL2QoG99+zr+ovw9RTSh6cC2OwFQGbyqRLzsQQ==
X-Received: by 2002:a05:6a20:442a:b0:d5:2a56:15b1 with SMTP id ce42-20020a056a20442a00b000d52a5615b1mr634562pzb.5.1678727270394;
        Mon, 13 Mar 2023 10:07:50 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id c8-20020aa78c08000000b00623f72df4e2sm2637840pfd.203.2023.03.13.10.07.49
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 10:07:50 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: bump version for 3.1.24
Date: Mon, 13 Mar 2023 07:07:45 -1000
Message-Id: <a29e07bea862d24db50065c71dab8a38205b5a34.1678727203.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1678727203.git.steve@sakoman.com>
References: <cover.1678727203.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 64712bb..f8b9da4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.23"
+DISTRO_VERSION = "3.1.24"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.34.1

