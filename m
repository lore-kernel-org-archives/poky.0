Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web12.10858.1658862391275535233
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 12:06:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J0yfX4TZ;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 12so13695061pga.1
        for <poky@lists.yoctoproject.org>; Tue, 26 Jul 2022 12:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S44uavlLEzgLE0XVQkaJkDv5hxgjXIotexARAK8D3xA=;
        b=J0yfX4TZDrNUvk23uisupaZQIC/3eEFW15eG6CwiE/zaIK8BuVpm90+B17NXTn/rFA
         z5VHRr5QtNboLgxNx02BCHyxVcWCdlwb9JJB/p1R4ncaJmBWZEdr3VM98wmN6zsqDtsj
         O9nuuXJCH+CwytRSClacZSeUwRTfS4eZE/j3CsTzSXPD8cAMufLyKdyWW2X/CtY4TT0y
         aa35iSniwmZTIKNL9wsrO9Q5f44QVeIcG5Up1qMzgAv9/Mcj1TSn1MXmUjb9rtphYML8
         PRiI0M+LCumgaks9brkKBRoTUFSCIEvxpwv/h7rX3SQhQb7ht/e7kndd4X+Q/IBR2Y0O
         IaIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S44uavlLEzgLE0XVQkaJkDv5hxgjXIotexARAK8D3xA=;
        b=SnpHuxG0OO/zRJp1GohL+B2CyHKxT+Tw56nmh7veJzFt35tK6QgwBgQRX8Va03RZST
         Wy3h6qxdXEkqRNvizXxhI5fcIhcY5Qi0e3t/zd/oMme/kykFDqsYmz6xu2B8foGgB0t7
         sYFm3yNolDPVwiqYqihA7eVlCDrc6qIDWynF5d2+sq1pF3HoiLu3/cRACkzzx6ByYTtD
         +6gaxtyHt6f7GfPJ06xaU29AGRaiiDgUvjkUhWuQmdQFDv0yxlp4Q23sP01VrZEhzEeZ
         g2hRwMUCsjB/ALXNDDoeVEeWZwBuoBLwKmtule0oo1KMm4ybI/ImcYRopvM/C+GTeW/p
         9ugw==
X-Gm-Message-State: AJIora8VqLP89QZvoOh416+7qM+aqNOsVHIGR2FPoBTQ1iyfRBZ6muZ+
	nZh/7EsYqY9Benn+SWXpkGti7gXW6mc=
X-Google-Smtp-Source: AGRyM1sbNtFtooFDYET9QMnZYdFqCR6b5K40OG96RcexSeeavtzZJFdQ9n2KtehUDcegKBUXcx9lcg==
X-Received: by 2002:a62:cec9:0:b0:52b:f774:7259 with SMTP id y192-20020a62cec9000000b0052bf7747259mr10772079pfg.28.1658862390008;
        Tue, 26 Jul 2022 12:06:30 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from keaua.hsd1.ca.comcast.net ([2601:202:4180:a5c0:a211:631e:5cf7:f234])
        by smtp.gmail.com with ESMTPSA id 6-20020a170902c10600b0016c06a10861sm11860744pli.74.2022.07.26.12.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 12:06:29 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Armin Kuster <akuste808r@gmail.com>
Subject: [meta-poky][PATCH] poky.conf: remove EOL and Cento7 hosts
Date: Tue, 26 Jul 2022 12:06:27 -0700
Message-Id: <20220726190627.785536-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Centos7 is no longer in the AB
Centos8 has been EOL'd - replaced by Alma8
Debian9 has been EOL'd  - June, 2022
Ubuntu 16.04 has been EOL'd - April 20th, 2021

Signed-off-by: Armin Kuster <akuste808r@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b4c64c495f..6e9bdc38cf 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -35,15 +35,11 @@ PACKAGE_CLASSES ?= "package_rpm"
 SANITY_TESTED_DISTROS ?= " \
             poky-3.3 \n \
             poky-3.4 \n \
-            ubuntu-16.04 \n \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-21.10 \n \
             fedora-34 \n \
             fedora-35 \n \
-            centos-7 \n \
-            centos-8 \n \
-            debian-9 \n \
             debian-10 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
-- 
2.25.1

