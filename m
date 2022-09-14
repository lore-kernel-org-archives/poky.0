Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
 by mx.groups.io with SMTP id smtpd.web12.6133.1663160978074615913
 for <poky@lists.yoctoproject.org>;
 Wed, 14 Sep 2022 06:09:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mNUOMkNo;
 spf=pass (domain: gmail.com, ip: 209.85.160.54, mailfrom: festevam@gmail.com)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1280590722dso40826196fac.1
        for <poky@lists.yoctoproject.org>; Wed, 14 Sep 2022 06:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=gPG15wHKbSpq18Mlfyune5YxEs+WTT+uDm/v3+lMXCY=;
        b=mNUOMkNod0a9DsGkNlWnp+49/K7MowfuNSoi3PcuPbmk32j5T22YBysuCJZoEJevvn
         ZjQCQDfEg8VrtS24/1cMTriwh25ql2O6jTYwvj+dZUXvtzRlQp0Id94G9RheX5rmh+05
         tmMCXvArvrwD36vE53XqJzegZw6XSWTFGJxjFZYF/ZvCLU5jWDvwHFOfu3GNqrSLy3xF
         Db1xLoXZGDTlRs/50WEIUtu8AGnbg9yu6Ke3XP2EEB1uev+MIx0EJg9cF0Wd79sNeJXN
         nYSKmOk/K651lKAMQSjItpV/JiLWWGb9B3Gt4dT+8LMwuq3kzOjVD1FcgA72QBqBCFY/
         gy3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=gPG15wHKbSpq18Mlfyune5YxEs+WTT+uDm/v3+lMXCY=;
        b=I/Ysr+amcRcsTJSNWjjIU/H14fPki7x1hefz+IXdHqiP4tri6gL3IeD6EmzrYZTx99
         +L5/HqcL9Y4vFu3GK3BNmB5gP2aSPekcTds9uL8H1ADzLXK6EEzWkEsSqPIWiKCfOKLV
         vOfE2Lymp8msgJbm8+OeYGDoSMi1+vNIz8uNi1MM32BxaAPo/OvYGG3HGamO9mzsniDo
         tqbLzZ/qMb0eY+IOKsAxS3GxvasGeiqqpTMVupjxj5/ocAKKKFUlMafDHRBt+2UT73ZV
         4do3jMXbQ+aiK72QskJnorfIW9bA0d8LaKGQ9/gDu+zKd0MPvfW9K48ALt6+2VB1F8dD
         5fug==
X-Gm-Message-State: ACgBeo2epQtDL+zD4k0q+zdE8Jz3mkpBXoT8m15iFlYRNzYDDiZUBF/I
	3RgERDkAX29uH4GBiQfUaLfbHFba/+UTxw==
X-Google-Smtp-Source: AA6agR4x6bLwlyJpHgbz3CSVZ5Pvg/VM6/R8SzgnDjnkUOSqvDXlCr3uI9gS+QoJyGP62DMvihhjiw==
X-Received: by 2002:a05:6870:e2ce:b0:127:47e9:2bb1 with SMTP id w14-20020a056870e2ce00b0012747e92bb1mr2159895oad.273.1663160977077;
        Wed, 14 Sep 2022 06:09:37 -0700 (PDT)
Return-Path: <festevam@gmail.com>
Received: from localhost.localdomain ([2804:14c:485:4b69:3fd6:85d:75e3:d8b4])
        by smtp.gmail.com with ESMTPSA id cg18-20020a056830631200b0065818e6fbdasm265347otb.24.2022.09.14.06.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 06:09:36 -0700 (PDT)
From: "Fabio Estevam" <festevam@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Fabio Estevam <festevam@gmail.com>
Subject: [poky][PATCH] README.hardware.md: Fix the tftp example
Date: Wed, 14 Sep 2022 10:09:22 -0300
Message-Id: <20220914130922.573194-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a double 'tftp' command in the example for loading
vmlinux via tftp command in U-Boot.

Fix it by removing the extra occurrence.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 meta-yocto-bsp/README.hardware.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.hardware.md
index 9151d641d5b7..44dbb35b930c 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -203,7 +203,7 @@ Load the kernel, and boot the system as follows:
 
  5. Download the kernel and boot:
 
- => tftp tftp $loadaddr vmlinux
+ => tftp $loadaddr vmlinux
  => bootoctlinux $loadaddr coremask=0x3 root=/dev/nfs rw nfsroot=<nfsroot ip>:<rootfs path> ip=<board ip>:<server ip>:<gateway ip>:<netmask>:edgerouter:eth0:off mtdparts=phys_mapped_flash:512k(boot0),512k(boot1),64k@3072k(eeprom)
 
 --- Booting from USB disk ---
-- 
2.25.1

