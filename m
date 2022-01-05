Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web12.3591.1641403445350980906
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 09:24:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=z9Hup4uN;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id t187so22246446pfb.11
        for <poky@lists.yoctoproject.org>; Wed, 05 Jan 2022 09:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=k67Gc0DUy8rpq6u/4bMgBsxrYUUNdKRqgyFobrdcb8M=;
        b=z9Hup4uNwflMTroLXws6zjpMe2NaAzrtfcJpc/1urZZq/HHUSP5w5v/p4ifdFrDaZv
         OGdHGTYF2Q9seKSSjN/y8B0W9Eia31o3IItfr4RO0wy7NE2tGEk1yYXkgmCvJoxa6vl6
         b/YRLKtJv/nc/ukF3i0amaazKw+0QsN5tltshTz8hZsgCcskVlC7yMbg6qVjW6Wg4mKV
         ErgIilxvLasbtVn7NrPAuXcTU50E0GWr7o+VxMVh39SfqkBLe4hj5Vw8+9MJmTb1MM+x
         66PLVEMKWgj4sMQ+nj6O2C+sVtd/JCgVodNm1Nai72q7Jz9Hq+yk5hstweKybFJaVMIU
         3jeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k67Gc0DUy8rpq6u/4bMgBsxrYUUNdKRqgyFobrdcb8M=;
        b=TKMRZ/NYFBBAZJ/BhvIVF22opL06XLBf0D9mpiRC1Y/ejuNiQ404GGayzF6F/IvX15
         r/dIxUIU3CGKWXkSbQz4+g5IdbR3pOUZQbyvhgPMhC3BjHHBOtJplkVXWZ+lLswbSpt/
         GyAiwTiyMDzsNMH1QAUGH1PtHVFTQXtuZ6mJnAXBHM5dyJh0qUy/FszVAnBnwqoJ7v4c
         ArQLkI6jKzk60Pg/dlyU3EoNwy7ezaszJGtqq0C+++y/aBg+cHfN5Yv/jGHMG0kivDbN
         QDumLWzn0XdtDowGJ5kngTBaaVtVJsEpGebttO7Nia/fAZkrSBKkeOo9f1UhNQ15CLkX
         HlqA==
X-Gm-Message-State: AOAM530NfMjceGdNOOmA7s90Q2t/CTcUIpLoqcVoBqXWJBI4+RIIgx+8
	J0ipXm9IrZdxoSzOtzxH1cp+beSRX9BYbFR90PY=
X-Google-Smtp-Source: ABdhPJxnOS8P75s1NoEZi3z5s0BBV3qKexgPv5xkFtComz9W2Ddp1BuvhoXzVDb8mlSZfa4LwcLJow==
X-Received: by 2002:a63:156:: with SMTP id 83mr37061646pgb.196.1641403444344;
        Wed, 05 Jan 2022 09:24:04 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id a3sm48382813pfv.47.2022.01.05.09.24.03
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jan 2022 09:24:03 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 1/1] linux-yocto/5.4: update genericx86* machines to v5.4.158
Date: Wed,  5 Jan 2022 07:23:50 -1000
Message-Id: <44647201cfcdb4dd11eb1651ab62c64ca2aacb10.1641403315.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1641403315.git.steve@sakoman.com>
References: <cover.1641403315.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Teoh Jay Shen <jay.shen.teoh@intel.com>

Signed-off-by: Teoh Jay Shen <jay.shen.teoh@intel.com>
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 35147d2..cd059c0 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
-SRCREV_machine_genericx86-64 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
+SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.94"
-LINUX_VERSION_genericx86-64 = "5.4.94"
+LINUX_VERSION_genericx86 = "5.4.158"
+LINUX_VERSION_genericx86-64 = "5.4.158"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.25.1

