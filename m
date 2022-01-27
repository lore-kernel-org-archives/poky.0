Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web09.23317.1643252414580141362
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 19:00:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=P9JzIeVa;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: jeanbouch418@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id q189so1429832qkf.10
        for <poky@lists.yoctoproject.org>; Wed, 26 Jan 2022 19:00:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=obYaVCWN3/noy/rlohmVRXYimwKNriEipSCdhPRs/ds=;
        b=P9JzIeVadH6YCVWjInrWuSp/2eIPLVFWl1VkhX8HfTfIL3+jNd9b2adba7kco4Ug0z
         4aVXl88r7du3NKBGuYsH2JERUj3lPC0JQCub7lDiiDdp2IJu9qDygh3xwdzANyF8DoDc
         ZhSGj4uaelSh4h5stYIl0Wqi/ENK1OMD/ubV8ja/Np7VSfTeJZE4MVLBj+T4HsiUA1cF
         p9nkeygvxd7jxIpCtJz6gH2X/2tE+kLy7uNc4J7lORjlEZIBmnJ89Cjg94dVioqnHBjK
         qFDLQwNrwozjzUwo3VW22WYhH5q2xBW7/RwNkau6mQGlB0klyUockhFO99X6IRRiFLxB
         ohCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=obYaVCWN3/noy/rlohmVRXYimwKNriEipSCdhPRs/ds=;
        b=6ZzjTw9cTbd2V5+389wQqD8Wt0blOoe3X1t9MqPEoePZPRU4DUmyH7KAlwfUYIiAIz
         Em/k6Tf11M3OcZjcuNorrnhyLVnLYESSAYIaKW6RtnBNmVBYgZmZT7tR0Stdt3BkbIJV
         XmpSCm4J0oGLuqZkRHBAWqQFBPX8vWVFpEWjAA6bg7bZlkt/k6Wzs+1Jc6lrrM2vJ0mS
         QJ0XDlNTHH62UO86/aHYPNSS2sCAaJH2KWRRbKql8EGRT0nL/FG8GIzaBQ5RKy4tP10g
         3oomOa5FGYTWITeRMn3xMd4PmeqfvM4JFgb70i6296k159ctZcIeF9xG0tPSWAmbcnAd
         aQcQ==
X-Gm-Message-State: AOAM5305UmO21sKgJAb0s5zEt/FYU3BT2fNohoylmuwdKXKP4vNXz2Ku
	y56LAG7sAZy6ZKBkMHnf7cFyycqYSW0=
X-Google-Smtp-Source: ABdhPJzZoEcafw7pPD+55Xr+O5PIyJvdygfNdJZjL4DvEKc68Jdt/ZcZ+sayzPbGdksSltMxLDDVyw==
X-Received: by 2002:a05:620a:d93:: with SMTP id q19mr1304979qkl.427.1643252413489;
        Wed, 26 Jan 2022 19:00:13 -0800 (PST)
Return-Path: <jeanbouch418@gmail.com>
Received: from jb.GENETEC.COM ([68.67.62.2])
        by smtp.gmail.com with ESMTPSA id o18sm716956qkp.122.2022.01.26.19.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 19:00:12 -0800 (PST)
From: "jbouchard" <jeanbouch418@gmail.com>
To: poky@lists.yoctoproject.org
Cc: jbouchard <jbouchard@genetec.com>,
	Jean Bouchard <jeanbouch418@gmail.com>
Subject: [meta-yocto][dunfell 1/1] Update the linux kernel to 5.4.172 for genericx86
Date: Wed, 26 Jan 2022 22:06:36 -0500
Message-Id: <20220127030636.3186815-1-jeanbouch418@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: jbouchard <jbouchard@genetec.com>

Signed-off-by: Jean Bouchard <jeanbouch418@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index cd059c06c4..dcfc2baf82 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
-SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86 ?= "b7f70762d1584a2b66e056412fd39ad6f6344c89"
+SRCREV_machine_genericx86-64 ?= "b7f70762d1584a2b66e056412fd39ad6f6344c89"
 SRCREV_machine_edgerouter ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 SRCREV_machine_beaglebone-yocto ?= "706efec4c1e270ec5dda92275898cd465dfdc7dd"
 
@@ -17,7 +17,7 @@ COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.158"
-LINUX_VERSION_genericx86-64 = "5.4.158"
+LINUX_VERSION_genericx86 = "5.4.172"
+LINUX_VERSION_genericx86-64 = "5.4.172"
 LINUX_VERSION_edgerouter = "5.4.58"
 LINUX_VERSION_beaglebone-yocto = "5.4.58"
-- 
2.25.1

