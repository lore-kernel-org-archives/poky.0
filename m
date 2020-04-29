Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
 by mx.groups.io with SMTP id smtpd.web10.1247.1588138358585289848
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 22:32:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xdl3ca0X;
 spf=pass (domain: gmail.com, ip: 209.85.128.68, mailfrom: uvv.mail@gmail.com)
Received: by mail-wm1-f68.google.com with SMTP id x4so529902wmj.1
        for <poky@lists.yoctoproject.org>; Tue, 28 Apr 2020 22:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KFJYi53xN38jT7PEBzevogFSqsSSe5ED1E0gv5vCdK8=;
        b=Xdl3ca0XiTOwLsBDiIIvsrSEa0ZCBt1ZZhyj0UfdE6X242YK6A2FldxqDYrk1hnS13
         2yluAnu2laJjBatCXOZyRNeEf6jTz2Rd8gDdfAa5Tg5KocYf8fxRsBh92c1Tnwy9Hs+l
         n/TmrjQjfDsGq3CHW8lGmPkQBHQwdIvrxVcCu/It3XxzI2eKgzyqDSQblnEXEru2eqSh
         7Sjea0Jh2GpKHjjob7eKt98Kwwmwo61LWM3EsV760nBWzN3dHnxQzVm2kzztB8DlDeB7
         RqcxWrp8d3soDkr1NEAEH/5ZjLAf3EoVXaAiTrx6T/YoZ50j6N5bzX1oMC1UJvlmJ6YS
         b7Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KFJYi53xN38jT7PEBzevogFSqsSSe5ED1E0gv5vCdK8=;
        b=fa4PVEMDNkGNLdr4QOPJVaIaAPTU5I2KYnpv3Z39kJChXKzKGjD/Dj+3XwgeN2B0fJ
         Oti3+w2Cg6hS3Ph5LMmNq1cJJjGEY5fZcFwGiy2jqPIKPmTOtxKDR0See0c2ve32OtTH
         ShhwKuTylLlFCxmQVnDOYvy1ANA19XxIWbiruZC/NVGa7c4qEZbdHEwaCYIn6eE61ZFR
         nJuhUgyvFVXrzp4dCIIjC19T49d3e2e/gZg6c0Dw0HNd1v2oHSGUlf5D5hHnGUTqEty7
         e+prErliSzE1xK1e5L3VuzVg6Ah3CsfuHLGuTfv5nWHHreoo49LEweJOaB8Skqo/+tJ/
         ZRHA==
X-Gm-Message-State: AGi0PuZS+UEmBG9JdXr7ff32v6ma0ojKITGN5314nLIXACRjWetmn4Or
	B+wdVM75GhIx5FiC1DlQ3Up4J3Sj/5o=
X-Google-Smtp-Source: APiQypKeCevEOaAcVgyYr/BfI1K7/VejrtUq9E2fNQ3t4imbrCtfEEHk4EUK8y2MtFb+a7ooA1ygvg==
X-Received: by 2002:a1c:2dc7:: with SMTP id t190mr1024958wmt.129.1588138356753;
        Tue, 28 Apr 2020 22:32:36 -0700 (PDT)
Return-Path: <uvv.mail@gmail.com>
Received: from slackware.local (dslb-002-205-007-252.002.205.pools.vodafone-ip.de. [2.205.7.252])
        by smtp.gmail.com with ESMTPSA id h2sm6341202wmf.34.2020.04.28.22.32.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 22:32:36 -0700 (PDT)
From: "Vyacheslav Yurkov" <uvv.mail@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Vyacheslav Yurkov <uvv.mail@gmail.com>
Subject: [PATCH] os-release: sanitize required fields
Date: Wed, 29 Apr 2020 07:32:29 +0200
Message-Id: <20200429053229.30653-1-uvv.mail@gmail.com>
X-Mailer: git-send-email 2.17.0

Currently only VERSION_ID field is sanitized, but os-release (5) has
more fields with the same requirement. Moreover, those fields come
unquoted in most distributions, because quotes are not needed for a
values without whitespaces.

Signed-off-by: Vyacheslav Yurkov <uvv.mail@gmail.com>
---
 meta/recipes-core/os-release/os-release.bb | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-core/os-release/os-release.bb b/meta/recipes-core/os-release/os-release.bb
index d5793c6fed..a29d678125 100644
--- a/meta/recipes-core/os-release/os-release.bb
+++ b/meta/recipes-core/os-release/os-release.bb
@@ -13,6 +13,7 @@ do_configure[noexec] = "1"
 # Other valid fields: BUILD_ID ID_LIKE ANSI_COLOR CPE_NAME
 #                     HOME_URL SUPPORT_URL BUG_REPORT_URL
 OS_RELEASE_FIELDS = "ID ID_LIKE NAME VERSION VERSION_ID PRETTY_NAME"
+OS_RELEASE_UNQUOTED_FIELDS = "ID VERSION_ID VARIANT_ID"
 
 ID = "${DISTRO}"
 NAME = "${DISTRO_NAME}"
@@ -22,8 +23,8 @@ PRETTY_NAME = "${DISTRO_NAME} ${VERSION}"
 BUILD_ID ?= "${DATETIME}"
 BUILD_ID[vardepsexclude] = "DATETIME"
 
-def sanitise_version(ver):
-    # VERSION_ID should be (from os-release(5)):
+def sanitise_value(ver):
+    # unquoted fields like VERSION_ID should be (from os-release(5)):
     #    lower-case string (mostly numeric, no spaces or other characters
     #    outside of 0-9, a-z, ".", "_" and "-")
     ret = ver.replace('+', '-').replace(' ','_')
@@ -32,11 +33,14 @@ def sanitise_version(ver):
 python do_compile () {
     with open(d.expand('${B}/os-release'), 'w') as f:
         for field in d.getVar('OS_RELEASE_FIELDS').split():
+            unquotedFields = d.getVar('OS_RELEASE_UNQUOTED_FIELDS').split()
             value = d.getVar(field)
-            if value and field == 'VERSION_ID':
-                value = sanitise_version(value)
             if value:
-                f.write('{0}="{1}"\n'.format(field, value))
+                if field in unquotedFields:
+                    value = sanitise_value(value)
+                    f.write('{0}={1}\n'.format(field, value))
+                else:
+                    f.write('{0}="{1}"\n'.format(field, value))
 }
 do_compile[vardeps] += "${OS_RELEASE_FIELDS}"
 
-- 
2.17.0

