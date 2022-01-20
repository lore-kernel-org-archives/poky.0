Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web09.3112.1642715434736702046
 for <poky@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 13:50:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=kPsJ1yog;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id a8so1613715pfa.6
        for <poky@lists.yoctoproject.org>; Thu, 20 Jan 2022 13:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=FAWqSi0kH20ZoVc3aEv7Rzb1whE5wplnMOJfT2oJjg4=;
        b=kPsJ1yogM9f+h1bmLCTxt8/ZH7UGrMxpyjYMtx5dqcJVM+JqOg3poK9UCgipJM59gK
         BhCU7bfpIV8UhgpELQKJfMmby6uXYawyYv3omnB+XKa5MAKVyFHdHwQaDDhsyy1LDLcJ
         RF9AogGNWHwTNW1t9dwIlnRpt7JzaXliWgYOEKIo2w9Y8rmyFl81h3GbRMYm2Atsw4rW
         rn1wQuFcBfdOMN6ANa+zPmBIj6T/ZHJSJqPQ6dkkzV6pJZIVLZlnVT1qDTY9gvXvJVRs
         UxQBYmTa0PEV2jYkR1tmp0amZX8S72jBGtQORThw6aYlWN0VlF9f/4DNaaR1ej8Hdf5s
         qQbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FAWqSi0kH20ZoVc3aEv7Rzb1whE5wplnMOJfT2oJjg4=;
        b=dTACbZCoAljQMQDchIIcN7GXcP2q1bBDMDJ7xxGE0aDfxdO4yHubq3J8xKWmUmj+vZ
         86hVXy03zOXDG3H/75fKW1wyR8Z0ye1ANqSVGtluBbJWQsjb7T28M+zW2Ff3z3CLi+lu
         yVRbj7FI8TtcsnGFWsOhjVtd10D2RAYoZ9jO2ffwFap6Neka8wq30xv6YSi7K6GQCPF/
         EmkiLHySY2S2dTcuBK6dh/rCH64zyAicOQ9K4k6X5m+G3IvClUbVnGJ3DC7LlB3fj+VB
         uaoDpsLQ5lKf5eBMKnzoPUPpcxGXAbbW4RuHf9E4SOpTdDzPJtQRhVJWlgW898PS5dpn
         czGA==
X-Gm-Message-State: AOAM530u6crPNoxEXUcX+rE4/HQWfaPsRp/K2Sjcqm5L56QVhGy8B+Dl
	YR9+qeqbINDdy/Sk9CBPPt3cWdvZDopDZCXjBdY=
X-Google-Smtp-Source: ABdhPJxw93YkwU9za+8IMTZSNYnKWJuYKUUEOemLoaMjxroeegk0PRjis1ZhvT+FdpHMomxvL40Zgg==
X-Received: by 2002:a05:6a00:198e:b0:4bc:c640:73f9 with SMTP id d14-20020a056a00198e00b004bcc64073f9mr737342pfl.50.1642715433656;
        Thu, 20 Jan 2022 13:50:33 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id t9sm9412762pjg.44.2022.01.20.13.50.32
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jan 2022 13:50:33 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] poky.conf: Bump version for 3.1.14 release
Date: Thu, 20 Jan 2022 11:50:14 -1000
Message-Id: <0b86c4500a3217531e834945328afc4d7568083a.1642715356.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1642715356.git.steve@sakoman.com>
References: <cover.1642715356.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a52fcf1..7274657 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.13"
+DISTRO_VERSION = "3.1.14"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

