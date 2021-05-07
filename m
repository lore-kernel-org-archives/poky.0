Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.14684.1620413269410385828
 for <poky@lists.yoctoproject.org>;
 Fri, 07 May 2021 11:47:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWNHhIyx;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id bf4so11343246edb.11
        for <poky@lists.yoctoproject.org>; Fri, 07 May 2021 11:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1YYg2r9ywpAVqrqhrKauPwq5/6vvcetmeeuKrclWKwY=;
        b=GWNHhIyxvtiDkXw1osLxs7izTjih6zp8Pefm0PbU3KSuCgw87MB74WXiFobN9OsJcJ
         i1LrSspsRVbLQ1/urSjsPBy+UcH3ycgiE9O5IYNuEDOFfqAZFoQ2WXRH1DFcduXyzTTO
         vcKeq+hOoNO1GH29rSjEirjYZzStJ+JFyfp+T2JlAHm8VdsWhYntvxuFm4JhOhQIDA+F
         v1i5dfhnf3XbUxuRd8LMPEIUaexPfgQdLs+Zp9e4qhd/n8OGihGGqBXyp01/eA4z9Yxv
         4+VCatt6MZPhZEf14DNz8NTYBkaLE7keq/WWk+qemgbD8X3DpfSBBkiEtl3sk/Q8LVkX
         P6nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1YYg2r9ywpAVqrqhrKauPwq5/6vvcetmeeuKrclWKwY=;
        b=ryJKwsgylvpi64VIiRR0t1nzwIfCSGyEwGrFdiSC5eTnihFJcKp3sgkmVDh5VA5Vll
         /YZ/bsz0sYmyHERaoxndR3cV2vrbDJ2x1Llo7kkJMvZGh321sji3LQrg7/xUDLMXmwY/
         Srqqf2WOr7bWNr4Tb8gMpa20EXBRLKk8X6jjbn2fM0f5HDaLa1M3cEil8EAYIP98tHp3
         dVAHjwEjqQUjOS9ZchTfphqoeIHOJVbI/IZKzsyUVcAWh787E6cIH/FModFrGNVi9FU9
         eWNwPt4fnya+KnuVJ2mkFyIGA/2c3uosCcFqhk4ntL4XAFjhg3NdJGjp4xqXVyVVvD9m
         42Xw==
X-Gm-Message-State: AOAM532cRFbiNDxrVV4CAEzHs51L294ZvAJqmDoGWzLV7aUoVZI0Xe3O
	doEtPGbMUdA2wjFHgrA5zHMXN+eA01U=
X-Google-Smtp-Source: ABdhPJy2rUOxurFaTIEKHEIqIOpJ9z7MhdRgf6QI+svUccex8Ngz48SHFDOE420Ajv9DRtngX5LZVA==
X-Received: by 2002:a05:6402:154d:: with SMTP id p13mr13281364edx.371.1620413267837;
        Fri, 07 May 2021 11:47:47 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id f19sm4715837edu.12.2021.05.07.11.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 May 2021 11:47:47 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] poky.conf: move pam DISTRO_FEATURE from altcfg to default poky
Date: Fri,  7 May 2021 20:47:32 +0200
Message-Id: <20210507184732.733161-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is needed to run libpam-ptest and also for running weston under
systemd which is an increasingly common configuration.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 4 ++--
 meta-poky/conf/distro/poky.conf                               | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 273ebfdfef..4c377b4deb 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -1,5 +1,5 @@
-# Add an extra DISTRO_FEATURE
-DISTRO_FEATURES_append = " pam"
+# Remove an extra DISTRO_FEATURE
+DISTRO_FEATURES_remove = "pam"
 
 # Use the LTSI Kernel
 PREFERRED_VERSION_linux-yocto = "5.4%"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 522cc92f74..03abc6c55a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -13,7 +13,7 @@ TARGET_VENDOR = "-poky"
 LOCALCONF_VERSION = "1"
 
 # Override these in poky based distros
-POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
+POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl pam ptest multiarch wayland vulkan"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
-- 
2.31.1

