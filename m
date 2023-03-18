Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.3537.1679132561695241729
 for <poky@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 02:42:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ldz6B1kI;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id v1so235528wrv.1
        for <poky@lists.yoctoproject.org>; Sat, 18 Mar 2023 02:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679132560;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p62VLlZbgaWCvO9m/ipsF4Mc/efsilyFJyrdqDbSZXw=;
        b=Ldz6B1kIOHxBYWPK2dNo63KyqLurVpB5icphxD5INdqIGhFNUshAKe1S+IxtqI2JM4
         9cIZuINliS3A33Y4IwmPUVWWziW41D+hp7Z6KJTAtREtUqpb7UP3mgOmMoTJVMW37Px8
         yOcoyLo5PWfIkgx7Cpade2Zw57t+odiSoJD+pwL9Twc1H9Lo8P6k+s9k621bb/mbT39Y
         fSoCH2s5UJzIVJzUsvpehR84Kpuv6+wpjyEWQcYWTXypI6EkWJNCqmSwx3OEgB7nhDCf
         eOB8/FxepYOiXTQPqZJSiDjRhn5htYBKCk0eefqkZGAq0XIeRhy84gd3yfsN3iB5q3Q+
         z3bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679132560;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p62VLlZbgaWCvO9m/ipsF4Mc/efsilyFJyrdqDbSZXw=;
        b=reotGVia4NNFABzOePN/+NYnu7l32wTaDsqoQDY7cZPwtBkWRr2FuvoPoHy9tYc5uN
         2UbiyvFzoVUchrDIMSMTI5k2pKbZE9ul1oFHEALVYa+jIwUniASjaw0Cy/xRLXL8zaLG
         zJOa0hH4wZGRYj+laCyvDpHBbJAWjkLCKivtC2n6DUSJxotyVA8W2AANy+iNNScdQi9D
         9djPOrBegqOZRqeRFkBTX6VvH6RtLBdCXZwXIE5MCdiL3OL4o2s+I8vwT1IZSnKqFmw1
         AvqWd1CEgQlrcfvCvElc/JP6W1V3k6C6oeoNxHbymVsSRBL/jEg9IGfa5buJXqC5WFgO
         uKMA==
X-Gm-Message-State: AO0yUKUwX3IYlyr92WPAIUZMU7Yy3FU2ljyvX+RlzRpoqse/8uNTEZ8Y
	WhN3gt4VKg8UprLbn8FGmBmqW9Om0yk=
X-Google-Smtp-Source: AK7set8uiCctD+bSgUBerfOx9QkZI5DYDgpjNXOuRxHquAHgiOjmj/46ynwmpyXc2h5ucJ+7bKm8AQ==
X-Received: by 2002:a5d:4802:0:b0:2d3:f610:8417 with SMTP id l2-20020a5d4802000000b002d3f6108417mr2914695wrq.0.1679132559781;
        Sat, 18 Mar 2023 02:42:39 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id a7-20020adff7c7000000b002c70ce264bfsm3951244wrq.76.2023.03.18.02.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 02:42:39 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-yocto][PATCH] selftest: systemd_boot.py: respect IMAGE_LINK_NAME
Date: Sat, 18 Mar 2023 10:42:26 +0100
Message-Id: <20230318094226.2307911-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

* use IMAGE_LINK_NAME instead of hardcoding
  core-image-minimal-genericx86-64.wic assumption

[YOCTO #12937]

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../lib/oeqa/selftest/cases/systemd_boot.py           | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index 57599e1..6ce9a3b 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -2,7 +2,7 @@ import os
 
 from oeqa.selftest.case import OESelftestTestCase
 from oeqa.core.decorator.depends import OETestDepends
-from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
+from oeqa.utils.commands import runCmd, bitbake, get_bb_var, get_bb_vars, runqemu
 
 class Systemdboot(OESelftestTestCase):
 
@@ -21,8 +21,9 @@ class Systemdboot(OESelftestTestCase):
         features += 'MACHINE = "genericx86-64"'
         self.append_config(features)
 
-        deploydir = get_bb_var('DEPLOY_DIR_IMAGE', "core-image-minimal")
-        systemdbootfile = os.path.join(deploydir, 'systemd-bootx64.efi')
+        image = 'core-image-minimal'
+        bb_vars = get_bb_vars(['DEPLOY_DIR_IMAGE', 'IMAGE_LINK_NAME'], image)
+        systemdbootfile = os.path.join(bb_vars['DEPLOY_DIR_IMAGE'], 'systemd-bootx64.efi')
 
         # Ensure we're actually testing that this gets built and not that
         # it was around from an earlier build
@@ -50,8 +51,8 @@ class Systemdboot(OESelftestTestCase):
         AutomatedBy:  Jose Perez Carranza <jose.perez.carranza at linux-intel.com>
         """
 
-        systemdbootimage = os.path.join(deploydir, 'core-image-minimal-genericx86-64.wic')
-        imagebootfile = os.path.join(deploydir, 'bootx64.efi')
+        systemdbootimage = os.path.join(bb_vars['DEPLOY_DIR_IMAGE'], '%s.wic' % bb_vars['IMAGE_LINK_NAME'])
+        imagebootfile = os.path.join(bb_vars['DEPLOY_DIR_IMAGE'], 'bootx64.efi')
 
         # Clean environment before start the test
         if os.path.isfile(imagebootfile):
-- 
2.40.0

