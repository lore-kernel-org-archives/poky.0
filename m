Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web12.16963.1590685579484425363
 for <poky@lists.yoctoproject.org>;
 Thu, 28 May 2020 10:06:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=sLN9eWYD;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id f3so1016625pfd.11
        for <poky@lists.yoctoproject.org>; Thu, 28 May 2020 10:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Vvt5a1UlLVSY5ZJ3j4XlEbC+tpl52cmvugkWIBy4WiY=;
        b=sLN9eWYDB3PqUCh7sT+INQISGoXrRlDozqcXemfp2dVMRMyv3vZJJlTy9O0MvB9+FI
         8orpe0n+SXVzE9LNzbB0/w9+YBy71dgiVfDvWd/7El3HCsmZ9LNzY+YJgWmCRs1JmxWn
         z/KLL74Tbg6kYauvUVUHyeCjJ+MlyoxllmPciEexKQ9Hf6rklShKFxQ+TdAi3fhsYPFE
         Xudx6bECmI8wbD8OSWwwc84G/WcLukHXPe9fDtL+OxKJywcHQ8mtL6eSAz3ZfgXf0yvg
         ln1C6wDGzpzkkWQMNDP/MOJNRz/+BUpu0KiKbOm03HWkplEWx4SgLSnr2pjdms59HFMH
         W1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=Vvt5a1UlLVSY5ZJ3j4XlEbC+tpl52cmvugkWIBy4WiY=;
        b=ggLhXB+63R5uPnk1rH2hi1kXATSw7Y/CvyGP5fKLat/+djKSBFuPnQGrxVlG47RmbT
         cQB/rBUl6V5lOkUSKyIuKV593S4FyKBEBiNfbgKcFBvWRNxpZjwNig4rbg9l6B7p7QJE
         7r0Lr1MmpE0661Qf4p3jFm/tcRQL/nC70WGmoTg6tEYtAfcPh9LI//HcGu9BiO1KWNQW
         5lMs6aLfipmGhalaR39k4b4KTBK80r0QcDGO7Vuhq08Cgr7U+A2GmwoKwzbye/b5g+ly
         fPfDN7gaF7bggpwK7SGEEL8uCQSZVfN0fA+670OLtZ99sMOqKMsQFZUfPZIyokxOjnCQ
         AIEA==
X-Gm-Message-State: AOAM531oAKadxkM351q35jlT++KO/HeWyT/DtncZ732UzAAU/bnd58uG
	44BskzXKnvR7rabQBfIe5Se/Y0Axpsk=
X-Google-Smtp-Source: ABdhPJx0y9QJ3yDaTkZN3r8GtYyetjgbcwq4S63/VjLAmYlC0gah3da7W4G+U+OBVk+s1N8qF4ey+A==
X-Received: by 2002:aa7:8c19:: with SMTP id c25mr4044928pfd.72.1590685578113;
        Thu, 28 May 2020 10:06:18 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id h24sm5397333pjz.24.2020.05.28.10.06.16
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 May 2020 10:06:17 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][master][dunfell] poky: Add Ubuntu 20.04 as a supported distro
Date: Thu, 28 May 2020 07:06:03 -1000
Message-Id: <fa4bbd39128b1be529f524dcb853fe2868e5ff94.1590685475.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1590685475.git.steve@sakoman.com>
References: <cover.1590685475.git.steve@sakoman.com>

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 91779e4..2696eb6 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -56,6 +56,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-19.04 \n \
+            ubuntu-20.04 \n \
             fedora-30 \n \
             fedora-31 \n \
             centos-7 \n \
-- 
2.17.1

