Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.1582.1649871779236619422
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Apr 2022 10:42:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ds5IJ9tZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso4443188wme.5
        for <poky@lists.yoctoproject.org>; Wed, 13 Apr 2022 10:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mnjFEwbWnSpt4kTMxev9xPZgtw2kyn07SdwEc8HsBa4=;
        b=Ds5IJ9tZ+wbBAVu3FFogSYaxoWWUoXUR9L7VfnB7iDdJpLmeUxMVlemO8QTM3tMnJr
         4JrT7952AFMzJMhDXEkWkPFTCMOGYBigot0bsR+7Pjl8vpDLDe/6zbRnS8VOPdcpjD4I
         rtnUO5Lrza+xlCWch1EL/9dzAl4lX22X5XBsQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mnjFEwbWnSpt4kTMxev9xPZgtw2kyn07SdwEc8HsBa4=;
        b=mErfdVAhRSKQG8xIQ7fWXjGoG0zoNlKoeD4CVTGa7JMxO+2yqEEQIx+X+UTysoik/o
         +zrmHpspoiPYVocCmI53l2x5x7RV1zr/iMgY5+2KTOVutK9m7O5/AZMKuAEP7q9E2Qen
         ElxHmhkWyn1VvkwijYDrdDYQgj6tvdQ4pXAno6n4CdEfQuAIXn07GOlRT8odOMJLXTKa
         6q9YE2kdJO1FF8/aylK8m4EU4okSOx3XtEZQKgdNDAKTttrwMI41eRb9NqKsgLyY1rTC
         yMjBoZlCto5jrnZNmquWdIpyPo1hJFftQ/vFLW9FAbaAVTFy2urNQLPEViBfMX+bUe8j
         zHIA==
X-Gm-Message-State: AOAM531c8KtAqkaowmgwrNsyvp8lTx0QpBiViXZ5epFV+coXEFhZnAQM
	WHpGqLSznJ9X4bJgjc/Na9i57ySHhzElGQ==
X-Google-Smtp-Source: ABdhPJw5oIsAUjjkZixswj/L2b5P2dmYEFYOKI+SFsVFQzPmzBqUaeoLfywcl5tOtz7MlmAv9ReE5Q==
X-Received: by 2002:a05:600c:1552:b0:38e:c7a4:f056 with SMTP id f18-20020a05600c155200b0038ec7a4f056mr1659wmg.183.1649871777201;
        Wed, 13 Apr 2022 10:42:57 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:5cc2:b4ab:4d4b:907d])
        by smtp.gmail.com with ESMTPSA id j16-20020a05600c191000b0038ca3500494sm4146946wmq.27.2022.04.13.10.42.54
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 10:42:55 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Use INIT_MANAGER in main distro config
Date: Wed, 13 Apr 2022 18:42:54 +0100
Message-Id: <20220413174254.2185364-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just to keep things standard and clear, use the new INIT_MANAGER variable
in the main distro config. This matches the default config with the addition
of some DISTRO_FEATURES tweaks.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-altcfg.conf | 4 ++--
 meta-poky/conf/distro/poky.conf        | 2 ++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky-altcfg.conf b/meta-poky/conf/distro/poky-altcfg.conf
index fbfabecd9d0..f03306e7986 100644
--- a/meta-poky/conf/distro/poky-altcfg.conf
+++ b/meta-poky/conf/distro/poky-altcfg.conf
@@ -8,8 +8,8 @@ DISTRO = "poky-altcfg"
 DISTROOVERRIDES = "poky:poky-altcfg"
 #DISTROOVERRIDES = "poky:linuxstdbase"
 
-INIT_MANAGER ?= "systemd"
+INIT_MANAGER:poky-altcfg = "systemd"
 # systemd isn't suitable with musl
-INIT_MANAGER:libc-musl ?= "sysvinit"
+INIT_MANAGER:poky-altcfg:libc-musl = "sysvinit"
 
 require conf/distro/include/poky-distro-alt-test-config.inc
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 179329f5fa0..5790094ea96 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -65,3 +65,5 @@ INHERIT += "uninative"
 
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"
+
+INIT_MANAGER = "sysvinit"
-- 
2.32.0

