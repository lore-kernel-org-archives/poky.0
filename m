Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.1360.1633728209590829080
 for <poky@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 14:23:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EQN9a06/;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id e12so33507491wra.4
        for <poky@lists.yoctoproject.org>; Fri, 08 Oct 2021 14:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yckl/al7mJAuhOtdY81cUyzLmpF0TTq6WdP/djnlsPg=;
        b=EQN9a06//bxCXHPzu9jOeq+64poNeyx0wiJFBKJRRk7EDPT4sSFijhwpxYoaxFuCbw
         QbQUbD1Ykr0bbUCTqYXLeylOpWiLLM5u2LiNgEtRjIPbYAo2PAiZ9tMu4OrL8I+ra6do
         ECkas2Zl8qJY6GJE5cU3GN9HJoEm6I2Xu5LFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yckl/al7mJAuhOtdY81cUyzLmpF0TTq6WdP/djnlsPg=;
        b=cT4hofAwMXqfPB05hghUtehYz/C0Vs6BdtzfgMg+ubPB8IGBgVtyEUdQs2OiwVxmSM
         Hy8o1DrVx1gdLNfEgWp220kEyvxmcIOamAlpJKBAwIcRt01aTIC+yznpWQKfsaT13BmK
         fbM9Qr5CCuKCcw/J/Q/9GKB79xnWQoxEPmdX2/uDTFAoLJ2d+QLlfhGe/Syjg2PG0MQj
         1C8T2B/3+gwZ3BJSjrnnHCng2hDfIgXZiyxMifRZzRm9rib4YE9rjWWYf9bgGbzIigm8
         aOKW1xDNzhOJ/36iPrO3M8aXtuTEhHGH6enUwreiEQz/Tg33Jz0fLRoM2klM5kc62On7
         zkUA==
X-Gm-Message-State: AOAM5311fxplR716H99IUKgUTgDuuGE8/+hpX+CMcmX+vHE6MUGvgoV8
	jY8T78i8OXqyoUrmp8HAw2mvsA+xNj7yhg==
X-Google-Smtp-Source: ABdhPJzFNWRYPYhGEBXqTlkkjPGPCQoPdIdr36Od8yr0W+7/TjBfDTIhrQfGCMNwS9EVdLy0QNqrOQ==
X-Received: by 2002:a05:600c:1911:: with SMTP id j17mr6003039wmq.149.1633728207344;
        Fri, 08 Oct 2021 14:23:27 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:5e9b:24eb:82aa:ef28])
        by smtp.gmail.com with ESMTPSA id n15sm458208wrg.58.2021.10.08.14.23.26
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 14:23:27 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky.conf: Update tested distros list with recent changes
Date: Fri,  8 Oct 2021 22:23:25 +0100
Message-Id: <20211008212325.2478737-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b0793de21ce..7336923db88 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -46,15 +46,13 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
-            fedora-31 \n \
-            fedora-32 \n \
             fedora-33 \n \
+            fedora-34 \n \
             centos-7 \n \
             centos-8 \n \
-            debian-8 \n \
             debian-9 \n \
             debian-10 \n \
-            opensuseleap-15.1 \n \
+            debian-11 \n \
             opensuseleap-15.2 \n \
             "
 # add poky sanity bbclass
-- 
2.32.0

