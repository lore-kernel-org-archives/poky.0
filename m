Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web08.8380.1646749789254821075
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Mar 2022 06:29:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=fztRU19o;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.175, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f175.google.com with SMTP id z16so17480004pfh.3
        for <poky@lists.yoctoproject.org>; Tue, 08 Mar 2022 06:29:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=/iNTMlp5zMKavlsOZ1q+4BnZZIDWEtLegtObFMOTGD0=;
        b=fztRU19oiL0vGgBtXwSP5HudbPsjv3eyGpPkkvbvXO0tFnQUUvo5cjRML7Vho2elkJ
         UpUeknoplR0/BwAg+pCGkvf9X7xAayx2b/h4o2H4F+r4GvSs2q/FJdKXMqqvc7lcktfl
         x7d2+uARCcZ87z03aVOnv1WDiqOn8AJg+lS6MvAUSUjFSxE+i938S0S2kLOLZtNHZKze
         Wvzw7ekadecJ9ID7ZVgEh+uaOnabZwEYQ21c02eBjCWq0cXLHpFsFKNFRVNF1SQw8sTW
         WxrVtr9Km0uDO37UizUF/pwbzgkk1cUwdlkN8FPixBgmwibzTcPcxHRqis2Bp9nsaMm/
         8zrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/iNTMlp5zMKavlsOZ1q+4BnZZIDWEtLegtObFMOTGD0=;
        b=Ikw80Y01BySzgpKPth4aQBnfOxxkN9qnXYk5ZaEhiKvLQz0ECnzlKr5gbb8Cm7QhQA
         PdkWhBGwgAxhxKcfv0FCgKiWrYc67poW86bftjivRltUVQVceWzuTJbO/gh1WcgOudSl
         bn6UImfqgapee0dsVqpOtWGJwBJO/KMm5oMmhqeHpowprZI8Ijk4uKc4JKN9Js0Q5qL5
         b2OyrpVtOwndZbywvzB+9KPWGXSJrLiycERpeDards9ZEzC6w6sVPpUWVoKg5fxA8YKC
         aZGPyBI441xQP1zYznMilN1QpExhemwTZ7i2rwyHPrHUoSdMxYyH6brWiarvtU5ZtAnt
         qJcw==
X-Gm-Message-State: AOAM531gaBFDj6ztpV6AGbGqqx+nhUQW6dRmzU1QvbUEYktnAaTMb019
	jrN3ypGeYqlCYOf20SkUh2ZPwT/JIUhjiVnqQ2c=
X-Google-Smtp-Source: ABdhPJxalTH0iV7kAlkkvy5k40xJhCaASiWrwZygTEX3hAbQ23IuVRmyGE5eXs6hCxSS573LBbyTcg==
X-Received: by 2002:a63:4186:0:b0:378:b438:c7ac with SMTP id o128-20020a634186000000b00378b438c7acmr13977006pga.291.1646749788309;
        Tue, 08 Mar 2022 06:29:48 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id x190-20020a6286c7000000b004f6bf60b958sm15286829pfd.125.2022.03.08.06.29.47
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 06:29:47 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 3/3] poky.conf: Bump version for 3.1.15 release
Date: Tue,  8 Mar 2022 04:29:27 -1000
Message-Id: <9db3d2c6e833177c77fa978595f78fdad678a9d2.1646749124.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1646749124.git.steve@sakoman.com>
References: <cover.1646749124.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a7868d8..b7c926b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.14"
+DISTRO_VERSION = "3.1.15"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

