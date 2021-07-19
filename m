Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.437.1626713113880965909
 for <poky@lists.yoctoproject.org>;
 Mon, 19 Jul 2021 09:45:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=KjThsWkJ;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id k20so19571987pgg.7
        for <poky@lists.yoctoproject.org>; Mon, 19 Jul 2021 09:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=p8NrQPpz3lLtjqpCm5BAk9AnjYefBuE1jeE0LU3kHGk=;
        b=KjThsWkJuWwuIysLA1kiIsvGJ8wtJtPRfkPJ/Jfgq8CdzqOzDodnrICyRWXzqTzZos
         D4yM8pWu37BE7Db1lj+f2TXMohdvpxNHGYnVVlWSV37Y91wDYAw9z2GUmgnks9v9F+xa
         2gDFsQyKe3xg34M/kvkW2lNmZUnFEQho9pPy6QtMK+ONs2cHf0gvRSi5iZknBCmB501Y
         OlWo44IsG9cpVTHFSnebz5lkw5f5hK82aKUcYXA7kp2LEYmTqqT4CDlX8Hcl5aMJOiOi
         7xdNsz4FCahdLGH9wrgavcaNF79vqhVOw+S4Rxzh+3jvKx3ZLAfSCQb+BvvwyBTWzIWA
         pvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p8NrQPpz3lLtjqpCm5BAk9AnjYefBuE1jeE0LU3kHGk=;
        b=WsdAqcmTpGBJJHYu8G+hjbEAan0kPLFS6MqUFXLcEijSZ02Hp7PpXk7OZg1rVoSW0O
         d68gFj73AcdNgPTELO0smqsNz+IY3SwxB+EGSi40TI7SYLBhv4QEsKX6l6urnW0V01Ke
         JavbEMQ1VxwnJzUa8s0Z9ki52P0ogmhDWknYur6U6Kjr2/9M7s819iy2NqabQleBK3QZ
         iC1820wzQulOXs/LMBuVq4uxBvZX2g53buYRzG+pj7fLGxe7TbGWOZebs74+J73oTzSI
         oa6qkKE7fPyGKgQa0OFr+o4wtLHw/WwokpZuozhqZ04R23LqXWE5Qgko5wEaT74Pjzsa
         iz9w==
X-Gm-Message-State: AOAM530i21qJLjvB1sjJ/5NdrbON8e1nMcs4lUl089+rxYyx6TA+IHII
	ZsVBS7ZbMN7qexhFmO9u9x4V/fzUSQdm4ToX
X-Google-Smtp-Source: ABdhPJzZZevyfWrKcYCacQWtpTX4cm9pUdVoVeVBgv8lDfVR7l2cB10N005Rc9lkPVUiwYBBXbxQHA==
X-Received: by 2002:a63:580a:: with SMTP id m10mr26240139pgb.254.1626713112809;
        Mon, 19 Jul 2021 09:45:12 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id g5sm385991pfj.212.2021.07.19.09.45.11
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 09:45:12 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: Bump version for 3.1.10 release
Date: Mon, 19 Jul 2021 06:44:58 -1000
Message-Id: <eb6e625d72fb49a707b0782e55530b3551f2396f.1626713050.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1626713050.git.steve@sakoman.com>
References: <cover.1626713050.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 92e9ba5..11897c7 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.9"
+DISTRO_VERSION = "3.1.10"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

