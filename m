Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.8077.1616941971453517638
 for <poky@lists.yoctoproject.org>;
 Sun, 28 Mar 2021 07:32:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0cfE9ma;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: jan.vermaete@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id u5so15517030ejn.8
        for <poky@lists.yoctoproject.org>; Sun, 28 Mar 2021 07:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DP77hbCtbLPkmYtHkBGWvtfk1Uxsghdr4wTf+TMtHVc=;
        b=L0cfE9maQIofQM0KYC6Qtut4AW7BO7hFTvTjEpKPXVT7tYvJ3xvVn1fN+K8prhqlCu
         Ut7aRnmau9Qv8x/w19sB4bcxSM/rTv6paKt/21ZMM0AfbfDnfS4zKf13Wt58Q52GDN4t
         1x2XCaETjXuCsFgz6H7K37axzG/yUtEdbiq4uFCSOVik6h/IRthXRiW9NTha4QW83CoV
         YOn1L51cKMX+h+r8259zmfCnmXrlzrWN93MZC26A2uan7ZXteNRLZDkyfx8byEmuQ0rP
         /ZkLAXSlYnrpD/qH7lzEE+gA1ZhB/JB2oR4AdcG51Ch6U3aJg3S84y7vKT5nUfb76ebp
         Immw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DP77hbCtbLPkmYtHkBGWvtfk1Uxsghdr4wTf+TMtHVc=;
        b=GkSNzh382l1aRGdKGbi3lHdA6jZZMV3xjqCrMQX8qHiDY83IOrSWxXXKn+CyzOJnih
         zrMcO77W+OPQw0EQVVDCiXWb9fNtdL5unQqt1dCTEMcxXFK76LzaHge8ljKJHotTBJiY
         VA7YpNzRrz4pHMVIkxJkg2Jr8fVcjsKHUPWTSrughQRIBJUzDq4m79OTA6Le5Oypcb0/
         vN6i8QMXyNNF4GpahQJfPk6+FlBwrF/bwAA8eYR+dhUJ7DKMqJaoUrXnsJnSBoUT94VZ
         +bePC7IvNsMEgSHqFkmoNuW7uf8X+mBJpOYKXE3hQhPfVIhKgda3jD0pRMqxX1Xgb+sk
         x1sw==
X-Gm-Message-State: AOAM531NSmn2kPvxtXvIMHchZf0iThOK3gxjjgPGsc22OYfr28BI4KIf
	G93h9ZxyLmZLHEMdns6c0vZZIW1c3KZFIw==
X-Google-Smtp-Source: ABdhPJwpfN1yKw94mDCDwYNGJCDocS9K74Cfb7RP3tKndhCF4Y7Hk6igoSy0OE20j/c8l7i6dIs0wA==
X-Received: by 2002:a17:906:b2d6:: with SMTP id cf22mr24443693ejb.321.1616941969590;
        Sun, 28 Mar 2021 07:32:49 -0700 (PDT)
Return-Path: <jan.vermaete@gmail.com>
Received: from localhost.localdomain (78-20-166-56.access.telenet.be. [78.20.166.56])
        by smtp.gmail.com with ESMTPSA id i10sm6679772ejv.106.2021.03.28.07.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 07:32:49 -0700 (PDT)
From: "jan" <jan.vermaete@gmail.com>
X-Google-Original-From: Jan Vermaete <jan.vermaet@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Jan Vermaete <jan.vermaet@gmail.com>
Subject: [PATCH 1/1] Allow to overrule the URL in a bbappend.
Date: Sun, 28 Mar 2021 16:29:58 +0200
Message-Id: <20210328142957.3008-1-jan.vermaet@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

With this small patch, it's possible to overrule the public
URL with a local mirror for those without Internet access.

Signed-off-by: Jan Vermaete <jan.vermaet@gmail.com>
---
 meta/recipes-core/meta/cve-update-db-native.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/meta/cve-update-db-native.bb b/meta/recipes-core/meta/cve-update-db-native.bb
index b3dc33734d..6b0643b4fa 100644
--- a/meta/recipes-core/meta/cve-update-db-native.bb
+++ b/meta/recipes-core/meta/cve-update-db-native.bb
@@ -12,6 +12,8 @@ deltask do_compile
 deltask do_install
 deltask do_populate_sysroot
 
+BASE_URL ?= "https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-"
+
 python () {
     if not bb.data.inherits_class("cve-check", d):
         raise bb.parse.SkipRecipe("Skip recipe when cve-check class is not loaded.")
@@ -28,7 +30,6 @@ python do_fetch() {
 
     bb.utils.export_proxies(d)
 
-    BASE_URL = "https://nvd.nist.gov/feeds/json/cve/1.1/nvdcve-1.1-"
     YEAR_START = 2002
 
     db_file = d.getVar("CVE_CHECK_DB_FILE")
@@ -64,7 +65,7 @@ python do_fetch() {
         for i, year in enumerate(range(YEAR_START, date.today().year + 1)):
             bb.debug(2, "Updating %d" % year)
             ph.update((float(i + 1) / total_years) * 100)
-            year_url = BASE_URL + str(year)
+            year_url = (d.getVar('BASE_URL')) + str(year)
             meta_url = year_url + ".meta"
             json_url = year_url + ".json.gz"
 
-- 
2.25.1

