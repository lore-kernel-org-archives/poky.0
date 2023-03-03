Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.24919.1677854726404277530
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Mar 2023 06:45:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=2XT5DRke;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.182, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f182.google.com with SMTP id bn17so1604333pgb.10
        for <poky@lists.yoctoproject.org>; Fri, 03 Mar 2023 06:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112; t=1677854725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vnqqxTA/md1truaqTvZsenOHBQOiOElcLu0uS5KAgP0=;
        b=2XT5DRkea2QRxNML7NWXez/66IJh0j3hyXp5Waf4EdpXzP0lwV7XtRwBlakAv38b+y
         RvNghJVpmn71aTCVJV6gdsYud0b1vEx41KORVYm3ePRn3lRD/QB5GHRidJxotDWAIPYI
         5NL+OEY0yYWeTxvYSNKLzp9xlNhHp0l35ZboViGbT2fi//YQ6mKVQrrpqUZzeLngoS4M
         H7JuZPOl/kngZgOd1fzzxWWaktA7FFlrSV4MSt9dWuCPqLKmULoHT0F7McqdaIidPGfe
         wWox2/z0NYbZmozjcoSVl6noZ3Q8xg0x6dhHTy9VIfygUazQFrfYk//lMQA6RP/JE+xu
         3m8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677854725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vnqqxTA/md1truaqTvZsenOHBQOiOElcLu0uS5KAgP0=;
        b=QI2Tpgm/66UVsfxy4Fs0ouRrFumBrWXNHKCYe8kus0HSJE4706AfDqkLK5G9pLL/Jn
         Rcx6/msn0oySsQLZyrUprTO637fnE38Ar7KQPwb3vyzX7Mq59T6wTIZnQp6IFLTUpvvh
         8uJwNTK+GzoKdQcykV3aYrtO6A0d4Wh3E2vVQbaU+9OPu8lnuD8lOTgKnaTJd46t/XMq
         y/mJXLCKqs8Sbtt1MI6S0NCObRnSrtqmTLeajNRLh8eTqIL8/RoxKUdwKLPzFLw3LlLq
         voik5tanohAnRJBknBipJ2vZQEAoYXf2Qtvw4hRLQEC/NVuhnK13jLR60zQ/bzz/2N5u
         ngZw==
X-Gm-Message-State: AO0yUKXMw5w2aUccaSRM86tpAIC4fCQoI3JjHroj+pSSTNluGfa2rgj8
	An6sBN7GATHIZ67RSkNIfyjy32dpzhbir5rfW1k=
X-Google-Smtp-Source: AK7set8uQ3NJniTiyeSMBIsmlF2kYrlzqkGdw5qLmumC6h8gdrlKGwVSMhXDODNAf29qYkPPVZY/Ng==
X-Received: by 2002:aa7:8f33:0:b0:5aa:464e:8c46 with SMTP id y19-20020aa78f33000000b005aa464e8c46mr2064386pfr.22.1677854725074;
        Fri, 03 Mar 2023 06:45:25 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id j3-20020aa79283000000b005a8bfe3b241sm1680318pfa.167.2023.03.03.06.45.24
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 06:45:24 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][langdale] poky.conf: bump version for 4.1.3
Date: Fri,  3 Mar 2023 04:45:14 -1000
Message-Id: <1f1bd63aa3e538881958b93d10d64789ea556084.1677854230.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1677854230.git.steve@sakoman.com>
References: <cover.1677854230.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8059258..ff07789 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 #DISTRO_VERSION = "4.1+snapshot-${METADATA_REVISION}"
-DISTRO_VERSION = "4.1.2"
+DISTRO_VERSION = "4.1.3"
 DISTRO_CODENAME = "langdale"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
-- 
2.34.1

