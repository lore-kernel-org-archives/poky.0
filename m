Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.1271.1594161146892503306
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Jul 2020 15:32:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=UGQHjGxv;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id u18so3737327pfk.10
        for <poky@lists.yoctoproject.org>; Tue, 07 Jul 2020 15:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=CiRi+3GJL3M8bUk8uJ5/uSHeyLk7HpfbV+FD5nVphGw=;
        b=UGQHjGxvUnHRpqcWXb4C5yp67kMygNynm2joZNPxr3OESi2SKHxTfibsg81CSX6lm5
         1CGNWcxpJ/WE2gpLRHsK5hPOemRcGg6oqxn/YHxJWP+TMVP6XL5+ZlOpT9lV9SmO3Y+L
         YQXQMD3ECchaYL+8dAhBvGS8vRu16jhA0B5fm1lIucHcW0LBQst4zrTXgadTqF68C//R
         lVpx4fYSePMCxbNL2vX6pdDVnCURz6YRNpC/9k/1rKMC0SNeTG70boxS7PCz73E2sjBG
         Ihhz9xmhbDyzpTlJDlG5zc2bPdnld5ZOe+SaZ1N5WOxFff2KFulkD1QjXg3234t+fIby
         GFRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=CiRi+3GJL3M8bUk8uJ5/uSHeyLk7HpfbV+FD5nVphGw=;
        b=i5R/lcbsmtpAUTSq50SRInXQHjpo3oTrlYlEbmaOrVBZn3JumaiXNfZprVMXocvLPc
         gNpwau5nECjfBvB8AijUSO4mJa1rA0q5GIKZN8G9joTNm6V3uz4hOwQ1m8HOsiOHzJdk
         BKJOc4QwFyMgHVUx+gNPAjaZCjmZ21HpRC9DDb5yv/hPWCpcByqcDnRYVYDzLxabkkX8
         l27MzozNX38Qd2Pip2IDc9efSnd3EC94mVuAStb1zyHsA4xmXhXZiL3MExl+Ee48BEM9
         llRL1JZGVJK1Phsni5gP7B8l54XxPP4hq5Nh1qnbD5w8djxhpa7q+LpYKOSOCgK6H7sL
         pL+A==
X-Gm-Message-State: AOAM533NoF20s5tOizFAx/+NHcwA92ckkqVS9YSk1qk76ctzMwpfWLIf
	3bMAHKMAlcuZFfVCFz23akmbJwG/C15xDA==
X-Google-Smtp-Source: ABdhPJz8ULznMVx1A9vaHs80viH91BaQxZXl4/MhxAhTK2tS8KHuQGgVJlKneiym28k4g8PJv40Mcg==
X-Received: by 2002:a63:4521:: with SMTP id s33mr38562266pga.388.1594161145903;
        Tue, 07 Jul 2020 15:32:25 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id u19sm24439179pfk.98.2020.07.07.15.32.24
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 15:32:25 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][master][dunfell 1/2] linux-yocto: bump genericx86 kernel version to v5.4.40
Date: Tue,  7 Jul 2020 12:31:49 -1000
Message-Id: <cfab89c1ff526f5276a5ff264ad1f99cf2b613f0.1594160917.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1594160917.git.steve@sakoman.com>
References: <cover.1594160917.git.steve@sakoman.com>

From: Anuj Mittal <anuj.mittal@intel.com>

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit bae0a97a39dad445c9655bc61ae3b7e6a667cbba)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 9734cd5..7207442 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "f4d7dbafb103e4f782323017c239c548871c1567"
-SRCREV_machine_genericx86-64 ?= "f4d7dbafb103e4f782323017c239c548871c1567"
+SRCREV_machine_genericx86 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
+SRCREV_machine_genericx86-64 ?= "29f44c85c379c38f15e544828e7e77b3c008f378"
 SRCREV_machine_edgerouter ?= "f4d7dbafb103e4f782323017c239c548871c1567"
 SRCREV_machine_beaglebone-yocto ?= "f4d7dbafb103e4f782323017c239c548871c1567"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.20"
-LINUX_VERSION_genericx86-64 = "5.4.20"
+LINUX_VERSION_genericx86 = "5.4.40"
+LINUX_VERSION_genericx86-64 = "5.4.40"
 LINUX_VERSION_edgerouter = "5.4.20"
 LINUX_VERSION_beaglebone-yocto = "5.4.20"
-- 
2.17.1

