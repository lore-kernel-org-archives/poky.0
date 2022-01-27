Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web08.27725.1643288375316261179
 for <poky@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 04:59:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=apvNXKPo;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: jeanbouch418@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id k14so2333837qtq.10
        for <poky@lists.yoctoproject.org>; Thu, 27 Jan 2022 04:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eKUfDpQVCQ3u41eB998sAiXxXzYQQeGWKFXJ3bXKIzM=;
        b=apvNXKPo9ZhfCbiAWLq6h9pJ20H0L9KWLDAvkA1JAAm32dQ1gfMcl4Da8FfaurNzJf
         hkU8YKpYHLt4TRfR/HsJ9MJcXAuhHwcIbnWozNuiTQenrbiI3wFbZOWaxjZpCx0e3Xhc
         MT4FXin519w9JtNbu6SvLFUWxXDxwIGo11U5sHDCzop7u+cg4Q8QXJY/Jw/aiUXCVGn1
         y8B47xSlPHQjTDI9ylzkZvBeWIiHrNxnNKGxj7D5FC+drYTPVk+yMN97qzpAkFB0VgHy
         nmt5E7cYOCfK2CxEveC6e09tw26c7aviAGJ0LLfAUlXs9wgxXLz/NN1S/Gi1cXaL8vY6
         j1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=eKUfDpQVCQ3u41eB998sAiXxXzYQQeGWKFXJ3bXKIzM=;
        b=EQ8hDpZuuQ1+JVGgZfgUeZ39YWyKfbHhTLcFiGKlnk1GZnLZi4XkIKBmx0gikD3HJl
         zN1g4AqhZnnQu8xVh8LqDS8zm6099n+lrXDQ5dD2RYAhfYRD8Wtk4NNl/f0tOAjHiGBu
         Pm+DXf37Nyp6gt6c7Feqq4jG9wEaKd/SFXpqgV/laFKThrMk6VVSNkMQc9eXEcOP7d6P
         9WLJeL6Q0O00TIaKzOufYEBi0VYofQeq6ShdjNt8boOypjDyG27SLaQV+dF+/qeCPIdu
         xq3yFg+fp3G9KjmqGcNZG46JHqqwunIa1Uk7YrcKgYYYykMq7hsI575/vqc+Us77PG1w
         aZ8w==
X-Gm-Message-State: AOAM533WcruUK/5ubeEOKATsx37YkOIZMUOWupuY1JSuxW7R2S2S9Gn2
	hncZbN9kko70NrECAcoTT9Tufb+FP6I=
X-Google-Smtp-Source: ABdhPJyEWWuDz5r0bVdhYAzwx/HQyqm4jLZvr4T5d0zabKTnmInGTNVjTduHZEIeUSrFjC6qLoN6nA==
X-Received: by 2002:a05:622a:130e:: with SMTP id v14mr2438663qtk.587.1643288373638;
        Thu, 27 Jan 2022 04:59:33 -0800 (PST)
Return-Path: <jeanbouch418@gmail.com>
Received: from jb.GENETEC.COM ([68.67.62.2])
        by smtp.gmail.com with ESMTPSA id m4sm1423176qkp.117.2022.01.27.04.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 04:59:33 -0800 (PST)
From: "jbouchard" <jeanbouch418@gmail.com>
To: poky@lists.yoctoproject.org
Cc: jbouchard <jbouchard@genetec.com>,
	Jean Bouchard <jeanbouch418@gmail.com>
Subject: [meta-yocto][dunfell V2] Update the linux kernel to 5.4.172 for genericx86
Date: Thu, 27 Jan 2022 08:06:10 -0500
Message-Id: <20220127130610.3236399-1-jeanbouch418@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: jbouchard <jbouchard@genetec.com>

Signed-off-by: Jean Bouchard <jeanbouch418@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_5.4.bbappend         | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index cd059c06c4..07f8993eb1 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,8 +7,8 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
-SRCREV_machine_genericx86-64 ?= "76404f1ae59698b6a446dba29c885ca78c69c330"
+SRCREV_machine_genericx86 ?= "c6b015510134942076c0e111e56357656acf3dd5"
+SRCREV_machine_genericx86-64 ?= "c6b015510134942076c0e111e56357656acf3dd5"
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

