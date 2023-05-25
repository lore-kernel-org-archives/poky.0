Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B397C7EE2D
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 12:30:09 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.10326.1685017801810205258
 for <poky@lists.yoctoproject.org>;
 Thu, 25 May 2023 05:30:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=MKPY9r2v;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3f50020e0f8so3901365e9.0
        for <poky@lists.yoctoproject.org>; Thu, 25 May 2023 05:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1685017800; x=1687609800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qbKduY41WhEf/9UkaRT9seinWK3hs9ztVW8/FYojHp4=;
        b=MKPY9r2vHOIHB44E3M1RQbc8CpTIukx6t0gdJ6Xx/buX/fUkZimnIEH4oRBYzmlXPi
         6zP8moPT4VNsHIl+qQfYu63hFbrSc/eGfOuN6/1o7fPAAdpy9saiTQrHAyeAE/iC3+KY
         bu/MQqoYTclLcgGrP2IYIhTaC989nmKNLCa1g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685017800; x=1687609800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qbKduY41WhEf/9UkaRT9seinWK3hs9ztVW8/FYojHp4=;
        b=OaQc6QcDDloS3oiHpOhmHOpatRLINzTbQ9ZF9q/VdllSRDvkGQjzG3ZZt7W3bza2X/
         GUuhljmMmHXgaIK8r2/jPvVzSVpQvN3Y2bXnws30eQA1GwU4t8k3Iz58pRoEIWp++oX7
         rOo14ggibACu+s50gUYwvLxWENl32w6Qy0+qQ+sAXroXweEziGGclZv7WYLkYac2r9ib
         OND7qgqSE4N1YrmXJP4rYurErgrzQfI/RlqBi93+cSrvbL/219iMaXO1ycXslrnQ8ACx
         Wmw4NDncLMxnzG3sqo6mjOB4xTAErqTTRqaDtmIq1rOXR0ngHeOtje0oBDLFFLVjuDBM
         Rsnw==
X-Gm-Message-State: AC+VfDygbjXF/ICOQXx7qF19cw4bXhwzgdiD0e4N4k85iy9b3h6stOCF
	OQYamfU3OCAANjP460tTq3VwPwct2FLGpYuG6H0=
X-Google-Smtp-Source: ACHHUZ7NYGNMR7ZI0/pzKjKUr9PoyPZ5tFWuxm2HZzoI4HMtqW5ts7nkxGyh3+nSqfL3vEYEXUj7mA==
X-Received: by 2002:a7b:cd0d:0:b0:3f4:1ce0:a606 with SMTP id f13-20020a7bcd0d000000b003f41ce0a606mr2268335wmj.1.1685017799775;
        Thu, 25 May 2023 05:29:59 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:85f3:29ee:f2af:493a])
        by smtp.gmail.com with ESMTPSA id x11-20020a1c7c0b000000b003f50876905dsm2003857wmc.6.2023.05.25.05.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 05:29:59 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH] linux-yocto: Drop 5.15 support
Date: Thu, 25 May 2023 13:29:58 +0100
Message-Id: <20230525122958.2733896-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 25 May 2023 12:30:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13073

5.15 doesn't work with gcc 13 and we'll be replacing 5.15 with a new kernel
version later in the release cycle. Drop 5.15 now so we can move forward
with gcc 13 and we'll add a new kernel version later.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../include/poky-distro-alt-test-config.inc   |  2 +-
 .../linux/linux-yocto_5.15.bbappend           | 19 -------------------
 2 files changed, 1 insertion(+), 20 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index b42b830e43a..32797525fbb 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -2,7 +2,7 @@
 DISTRO_FEATURES:append = " pam"
 
 # Use the LTSI Kernel
-PREFERRED_VERSION_linux-yocto = "5.15%"
+PREFERRED_VERSION_linux-yocto = "6.1%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
deleted file mode 100644
index 7a33505b55b..00000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
+++ /dev/null
@@ -1,19 +0,0 @@
-KBRANCH:genericx86  = "v5.15/standard/base"
-KBRANCH:genericx86-64  = "v5.15/standard/base"
-KBRANCH:beaglebone-yocto = "v5.15/standard/beaglebone"
-
-KMACHINE:genericx86 ?= "common-pc"
-KMACHINE:genericx86-64 ?= "common-pc-64"
-KMACHINE:beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine:genericx86 ?= "024d08fb706170a9723e9751e505681f9d4c7ab6"
-SRCREV_machine:genericx86-64 ?= "024d08fb706170a9723e9751e505681f9d4c7ab6"
-SRCREV_machine:beaglebone-yocto ?= "26aee42556a000123129552b73de6bf2ac039034"
-
-COMPATIBLE_MACHINE:genericx86 = "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION:genericx86 = "5.15.103"
-LINUX_VERSION:genericx86-64 = "5.15.103"
-LINUX_VERSION:beaglebone-yocto = "5.15.103"
-- 
2.39.2


