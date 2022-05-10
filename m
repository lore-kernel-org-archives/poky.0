Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web10.655.1652206266318287959
 for <poky@lists.yoctoproject.org>;
 Tue, 10 May 2022 11:11:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=8JiRmTSL;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.174, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f174.google.com with SMTP id n18so17453733plg.5
        for <poky@lists.yoctoproject.org>; Tue, 10 May 2022 11:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=+HNKbp8AwIsUlKx6K4P6lGbBUQGg9qVWRwKOoAZ7qOA=;
        b=8JiRmTSLlmx1UQ0Qhw4Eo1YVsvKJ2BiMoHGfvxm4zN5LMLTwZsyPVDIPRa6qpaLPOu
         SeY0NqHEhNpl2CNoUjbvkORnhPkQHqtTu90bQ9WktKqayf9rpvCA1fZZtlsLEcjF72qH
         zTLOPeb5U+fo44gqpAKZnMLyHHcHaAyeKBqTIh5CN/VFMNiFHee3uxK+FWMmXKAkQeD2
         S000u238THUsPvhU1KzBlPL08rMpgiQKPrpLxJ1wDPHKDRk2RQvTyiMvAB9Zvypznyze
         tqenFGFGHuTVnXu7oqu3uk7Z0jLrboq5zb0AlPPOKL6Cjvz2piEXQ/4VBb4zcKNiXo7Z
         CiZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+HNKbp8AwIsUlKx6K4P6lGbBUQGg9qVWRwKOoAZ7qOA=;
        b=NH8h5IaY/KueLkyCJAaLML85b7WS2Pf8bFBc0OxIchWxhsdz5SvFloJ9HM5CCtzYS1
         P18OWI+L7I6e3pE4tX4BEcHgxg1aP9qYK4daR1ga1Eu+AWtPELnl0Bn8TVzE19F9GOPc
         YbDkoQ6QbGy3gA+5v1msWtDxijyTm64p4ydViy7mAiN2eIazu4D3L/+ciAFBjQGWUDxH
         tR8df2JmbBGzCC/+BrT6wjSdb2qyps3P+cVaP8KvPrWZ2hIfjuUpSWuvhJgxRA+jWPSr
         iV8voZQ6pev/lyNsNv61YYvNIGoTGR+7ULGoe6KwzWy+WcGNq4P1ecyUiWZSEv/Ln8uh
         Za7A==
X-Gm-Message-State: AOAM533Rm44DTM0V8gjWFNoAwbsL8PGl2LvI8IYx4NZQwI9OQVQXDRH7
	4rUOol1FZ5BfkMorTG6t2kZlyW+0rFgstRg1
X-Google-Smtp-Source: ABdhPJyBXKIuwqEGG0YKWUpHn3jLtChTQ9qYlN94LaLL0+TR0R9IKCr3loCfVKwGIC+j9hu5AG48Wg==
X-Received: by 2002:a17:90a:e2cb:b0:1da:35d6:3a08 with SMTP id fr11-20020a17090ae2cb00b001da35d63a08mr1104799pjb.223.1652206265151;
        Tue, 10 May 2022 11:11:05 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id g20-20020a170902869400b0015e8d4eb2c2sm2338508plo.268.2022.05.10.11.11.03
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 11:11:03 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 2/2] poky.conf: bump version for 4.0.1 release
Date: Tue, 10 May 2022 08:10:44 -1000
Message-Id: <cc801dd0961a998f6ee3834e7942d67a0795b9ca.1652206108.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1652206108.git.steve@sakoman.com>
References: <cover.1652206108.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 179329f..4d969b9 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "3.4+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.0"
+DISTRO_VERSION = "4.0.1"
 DISTRO_CODENAME = "kirkstone"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.25.1

