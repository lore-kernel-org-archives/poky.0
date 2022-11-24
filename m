Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.30317.1669312970197616748
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Nov 2022 10:02:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=DGzLF2OZ;
 spf=pass (domain: linaro.org, ip: 209.85.219.52, mailfrom: javier.tia@linaro.org)
Received: by mail-qv1-f52.google.com with SMTP id p12so1349154qvu.5
        for <poky@lists.yoctoproject.org>; Thu, 24 Nov 2022 10:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J7U31WVojov+Zt70GsorSuWtCFjGbNakUPf413IjnWI=;
        b=DGzLF2OZPdMHU/5CN93TjDpd2flMNUL9vgvWR9+CJ6WSbHsZpE3Gzb6luoianYT40k
         ElwqwF7eFMC2T2p2aD9blXRhtmXF5l1g0090KJqFTvBQsxrUf8h78+pv02IJl90n7Iw/
         ZlGMprCkNF0Jhk5u09+xU998HPSCC0/z7BKx4L42+P+EnU/Ymzudn28NbfkX84VHzqap
         KyzfBl712jX4U39EpAMlI0y8ZjLy/1WUEN/NiQjLKbFcLTreJeYQGzRPPwi3fwRaYhm/
         P7eflXXoqyflgqNqN63QukPKgdxqxaxsmRvmn3sMMSACODLdy3MPIYuuq9IYoz2NEoVc
         CjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J7U31WVojov+Zt70GsorSuWtCFjGbNakUPf413IjnWI=;
        b=X+r6O4CXnGFommd+jmh7HpdVZoMfttJ7kAnVV9mf0EQ1FDTVJ3qQ82MFAW7p/dSYmx
         IxRrfvb1z+yUtgZ2ef+jKoNncETamJPBI9dCrQYauOBOaiM17r64hKVANl3wpy1qFwbM
         rUchZGMHkUQMWzg6wO7emqloZsah3kMSxviFuJNwBdPiwzaFVF83WuLI4iiR6wAxqnXb
         ak0Vr+KmTMGM0tKoSBhsDPWUzOPzuEAHrfdElJ+A/J2pYLVp6toR6b2/W4iCs2eW0PM/
         vc/tUL/HCmZTlYetkK9kjRXN6IcUM9zoyc0QUraaEdwuPDmF6WgCuctEUFIlC4RLUZqS
         MNeA==
X-Gm-Message-State: ANoB5pl/G9RwbCkBfx6K6fdKcOdLNtALRF38g/0E30DPR0dTiKFbJPrX
	lcI+ezKHrCf1vfWMSY2NrmwI94puWEWUuSI+
X-Google-Smtp-Source: AA0mqf7bfaAJGqo++dmHmh/5PmVJ+3jdHiGJz9Uxp/FytZs1bV0BFZJInw93bxc+d5RrJVWG2ICDjA==
X-Received: by 2002:ad4:5349:0:b0:4b1:b025:54e6 with SMTP id v9-20020ad45349000000b004b1b02554e6mr20076569qvs.53.1669312969028;
        Thu, 24 Nov 2022 10:02:49 -0800 (PST)
Return-Path: <javier.tia@linaro.org>
Received: from javier-pc.. ([177.93.3.213])
        by smtp.gmail.com with ESMTPSA id c5-20020a05620a268500b006bb78d095c5sm1230289qkp.79.2022.11.24.10.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 10:02:48 -0800 (PST)
From: "Javier Tia" <javier.tia@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Javier Tia <javier.tia@linaro.org>
Subject: [PATCH] poky.conf: Add Fedora 36 as supported distro
Date: Thu, 24 Nov 2022 12:02:20 -0600
Message-Id: <20221124180220.610802-1-javier.tia@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Based on [1], Fedora 36 it's building in Poky.

[1] https://autobuilder.yoctoproject.org/typhoon/#/builders/86

Thanks to Michael Opdenacker for pointing out the Fedora 36 builds
and orientation to submit this patch.

Signed-off-by: Javier Tia <javier.tia@linaro.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 3e90766..ccc2f11 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -41,6 +41,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             fedora-34 \n \
             fedora-35 \n \
+            fedora-36 \n \
             debian-10 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
-- 
2.38.1

