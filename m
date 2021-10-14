Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web08.8460.1634213437399952271
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 05:10:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MYrSqH2N;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id v17so18719179wrv.9
        for <poky@lists.yoctoproject.org>; Thu, 14 Oct 2021 05:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m59o/GFrltFFVbOgIhfCUnCjQydRcWsf3WUd8vRvHvY=;
        b=MYrSqH2NTNrTm6Sj1gT6/y7ygPSkAf0EemnP/n9hF3k4sW/czzxzi9mTESpZ7pR5Dm
         q4SToBPjghwYs1rPvIT681VVPoSsb80DaRWsJMP6U2FKxqF1BBwoV488EmDn4KzrHgGM
         01Z9O3QrCnhfoZ/pPDqNzgrBeT1ipPdYaX6FM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=m59o/GFrltFFVbOgIhfCUnCjQydRcWsf3WUd8vRvHvY=;
        b=8Q/LhQPjkdB3BNM61kjeGDPSimkxZ++nBvx8bN1fXc8ZFkNm9i9EKZzMfsvuHZS8gN
         RALeoclvX9SDFJ1OnjdYt5Z6qmch//bxKUGPQsCH7/hU/Q+bGHjfLewDX8/rsGHsPgXJ
         Xxvp/7UqlqcvJ1IfoCrMKUvXuyCb7FuKTr8TW+Lfp25sjMOn7E9Cecw/UlaaxyGINuXU
         Upfkll7OTnM9ifYj63Jk03dL0MxItKoYNW2GTJRUOCgZgQVb+MaN1efeWrHtLWC6yjRR
         799NCb4vptdKSVgJLSe+GEpAlYMCgrsMWonOTkbh3Mu0S4ueUeaxrDmLUbZnF8HMY1ME
         mBOA==
X-Gm-Message-State: AOAM5338laBg3OuWu3HTJ//Vc06rAsAxc6d3RBnbJH+T3Cp2BHyzccSB
	fptND2C5HlSgrPRtzC2U4wyRopEJwRfY1w==
X-Google-Smtp-Source: ABdhPJzQGw9Y+6TCIGQCZ8ISrWpxcA5XRbzhHp1idA/pN1V8T65Wn2VYzElIHaWq1f8+WiYAe1zbRQ==
X-Received: by 2002:a1c:ac03:: with SMTP id v3mr18891041wme.13.1634213434729;
        Thu, 14 Oct 2021 05:10:34 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:eb5c:837c:62b1:b238])
        by smtp.gmail.com with ESMTPSA id x17sm2225648wrc.51.2021.10.14.05.10.34
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 05:10:34 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Reproducible builds are now the default
Date: Thu, 14 Oct 2021 13:10:33 +0100
Message-Id: <20211014121033.2913474-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 2 --
 1 file changed, 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index da6cc861031..16b3bed1e8a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -70,7 +70,5 @@ require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
 INHERIT += "uninative"
 
-INHERIT += "reproducible_build"
-
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"
-- 
2.32.0

