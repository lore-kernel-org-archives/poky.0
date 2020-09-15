Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web10.14386.1600179301240553308
 for <poky@lists.yoctoproject.org>;
 Tue, 15 Sep 2020 07:15:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=KSxb3f0A;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.172, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f172.google.com with SMTP id f18so1995542pfa.10
        for <poky@lists.yoctoproject.org>; Tue, 15 Sep 2020 07:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=yUa3f8VUNUtJr2anfZ6NQGswAJPxd0DwE5Wi+FqVcrk=;
        b=KSxb3f0Ar4U8/hZMzfsuKt6VDnAXEm9Mwvq1GW1xYaTMLOZolwFcpjdnUjtrsMCVm0
         Mxymqwrpis7/dbp0JKLAJTetfK+VWWdR0CtLNhvr6JIKNTiqareIy163qQTmRIGXT7Uo
         yqWsLWS1vSd8k1qoET/wWVvZL6G/UI9XW+M5a64Vek0LCBiOWW/8Vmy45VfjhaZKVOIv
         aLgn1YrvDRCn82iuVFbMgrF78De1SGqpt7kSkg4SdBpH/lcg1p/CfZ0pWrzxjt1+OeqX
         ZCyuAgCILUaGyOF+OaBbLPJ5ee6WxfJjkbjxrNpFRSFSy+uQGAdQr5k7Qn2EFV7Rzf3a
         ef1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=yUa3f8VUNUtJr2anfZ6NQGswAJPxd0DwE5Wi+FqVcrk=;
        b=WzVK4MuC2BO1hnd24IBKWXODRZHXD+WtCX79zYflDXq3tN1G4cb6ojOC0EbRd4LZNq
         hGkfNoGjClIEctvYbWVqjZqrc9azboH1nXKiRQjEyvHUS20yebCCo2d8ELE6Y3EeLOOd
         Og1qQ5KzyTc4vEh/DTAwKPJioNm15Qx9e9vNI6DtvJgJxRTziXuecSksaTD+1GGKj2kO
         yrPUvsGsv6xnihuQSLImLcgCmxaqfptJBz9NtHWI7efJQaqCr3Y85/1h4nL/gsEPq4/d
         NYQ9GMWGy37hvWirJML9u5u6w4rHVLVR+LT0i+Ks7bJPGbMvhiIa1DnTJB/QFquuW01T
         k8/w==
X-Gm-Message-State: AOAM530vHkyrzFS+mFzoPkSdfuj/DRyaaNBHl2QEI41uC1WFl8aRuHXV
	O8OQx+81yGyuVON8pF+3LbDBVdWYbvLk0k7N9XI=
X-Google-Smtp-Source: ABdhPJx6fKUtMouvLUUw2mRQNQ62NSPKT4goxeMVdv/lcpsOnfAm/Lf4NJKsNIHvIkFmMRICHgh+6w==
X-Received: by 2002:a62:6490:0:b029:13f:c196:bb77 with SMTP id y138-20020a6264900000b029013fc196bb77mr13794910pfb.14.1600179300284;
        Tue, 15 Sep 2020 07:15:00 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id hk17sm11157064pjb.14.2020.09.15.07.14.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:14:59 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 2/4] yocto-bsp: update to v5.4.56
Date: Tue, 15 Sep 2020 04:14:39 -1000
Message-Id: <22e4ca42b749c8947837bd7bb93cde6fd448fde3.1600179148.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1600179148.git.steve@sakoman.com>
References: <cover.1600179148.git.steve@sakoman.com>

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 34dfaf81b03789054d58716d43c9fc447d8bd69b)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 2c73eb2..e1c7372 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
-SRCREV_machine_genericx86-64 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
-SRCREV_machine_edgerouter ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
-SRCREV_machine_beaglebone-yocto ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_genericx86 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_genericx86-64 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_edgerouter ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_beaglebone-yocto ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.54"
-LINUX_VERSION_genericx86-64 = "5.4.54"
-LINUX_VERSION_edgerouter = "5.4.54"
-LINUX_VERSION_beaglebone-yocto = "5.4.54"
+LINUX_VERSION_genericx86 = "5.4.56"
+LINUX_VERSION_genericx86-64 = "5.4.56"
+LINUX_VERSION_edgerouter = "5.4.56"
+LINUX_VERSION_beaglebone-yocto = "5.4.56"
-- 
2.17.1

