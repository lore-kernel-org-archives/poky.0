Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web08.12710.1614955112800571424
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Mar 2021 06:38:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YpFnkUUe;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.53, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f53.google.com with SMTP id i4-20020a17090a7184b02900bfb60fbc6bso6174708pjk.0
        for <poky@lists.yoctoproject.org>; Fri, 05 Mar 2021 06:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=WYIRlSPPCjrkBhxWivaSLMg0qaENKUC7BgAFAsiZRWY=;
        b=YpFnkUUe9qZLJnLLqSLYUAHW9c6zgIWEy89L4hW725rDoUhVLvDwlkB4jhByK8EQSl
         OOD4vptnFQ3l2uoVTscNCdzbuWnzuKnSIyP7OpsZaSXlSs7XmXuBYVtJtrwbKeDCBHdZ
         C6vjwsJO/tPDRV03hKUV7mohAMbtIkGZCz0Ehi6xahvBnpSNsIjdn/rDXMyoaAVa9Uxi
         KoCwhFUxj6lkVRP/aYGEKbnjlVMYJkTGoXCZSTqd2aZGm1AmoFXkPVAnjmA7/4TyBkNe
         UZHi/UDpoEaullGWv8+SWZDXIjRmaYAG7o8PQAbe2FiA6aL8NhGLTW+8mpjqoOM4fefe
         GUGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WYIRlSPPCjrkBhxWivaSLMg0qaENKUC7BgAFAsiZRWY=;
        b=V3tP2sRpP5vBiDzgI3KKn7+D889LkEDHyWWpoEcSITUgYUcR/b8UR+mKxfTNRoFuAm
         JvUCFESXeqURWhtapRzH4IYrLw4EqyQiw0VrtlooCAKKdSTjqqKU/7cNjF90s/xOuZyX
         UP8PNzC1NssKpdmpPJn66+MFfNBNcieEaY93mdeAeiFDXNrOOqFOgkSAXqrZ6VGwECIb
         Zgruutc08MP4+R6dD+IboJxn4JhVhz965tFbe6CnDwqzE53+n62PTe/xLml3ve63SHyy
         gucgyhS8mT3ZYNt+Wi01X+5++yJNrPX4fI/G3rnnI+lHFw1TdjtuSqU+c+ODrIOhDtI7
         fnGg==
X-Gm-Message-State: AOAM530K7Uv0VSuXnYv0jK1SY0OELWopLroz7kyFHGOs4sFVuerl/MfL
	TGR6FwIUgiAyvcSJmegf0du9FUy2pgC6X4rt
X-Google-Smtp-Source: ABdhPJy2Bm87RC3Ehz6HSUsdHqhlO74fsbhGpTz/WaL/Kiy0gUXeIivUq/Bb98rZmzPVnjXOIBvgSQ==
X-Received: by 2002:a17:902:d113:b029:e4:9cda:dbd with SMTP id w19-20020a170902d113b02900e49cda0dbdmr8924415plw.85.1614955111834;
        Fri, 05 Mar 2021 06:38:31 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id i10sm858416pjm.1.2021.03.05.06.38.28
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 06:38:31 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell 6/6] linux-yocto: update genericx86* to v5.4.94
Date: Fri,  5 Mar 2021 04:37:32 -1000
Message-Id: <b941538cd97349dfbeb7dbb3ed5a9d200c7e1776.1614954239.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1614954239.git.steve@sakoman.com>
References: <cover.1614954239.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Anuj Mittal <anuj.mittal@intel.com>

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit b05a89a04002ddce2d82a22874def608e7748871)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 91500b8..35147d2 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
-SRCREV_machine_genericx86-64 ?= "292d752af8e4015e40e7c523641983bac543e2b4"
+SRCREV_machine_genericx86 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
+SRCREV_machine_genericx86-64 ?= "31db2b47ac7d8508080fbb7344399b501216de66"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.87"
-LINUX_VERSION_genericx86-64 = "5.4.87"
+LINUX_VERSION_genericx86 = "5.4.94"
+LINUX_VERSION_genericx86-64 = "5.4.94"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.25.1

