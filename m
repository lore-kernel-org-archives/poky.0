Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web12.4617.1602328581027123706
 for <poky@lists.yoctoproject.org>;
 Sat, 10 Oct 2020 04:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fKPqoMXH;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: idadelm@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id 13so12212926wmf.0
        for <poky@lists.yoctoproject.org>; Sat, 10 Oct 2020 04:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=OQSqUqmhjM/Kl6spVK1zS+vIMVK0iz2ZDxXHZSMFa74=;
        b=fKPqoMXHkUIWiT2xeJWxHk1OWE2yetj4JNZQ7F3UDMkIdr/JUFO91xla79H8LL+zZ3
         jKh0hyia3JfICe02fB+qdGs1T1YEer0nBo98ZeMzHStA+5TwAnSp+GxRcuLvHcFporP+
         X3pfXX/m3PLpPDdL5NudjIC2AX45EyNbJ0usRTJz/pJ+tgPVeF7CnoVQauFxBQi0IyGj
         b4HjvE4IpAvE9b+8nle8ZRvUuEpxRERZlqNEDXclAQRRMZgMNVyLfXzkKUGC/wGGJGhh
         qQwCUIz0z3Ipdt+q/62h5KIbsv2fcIQXhlOrVrcuOxwHOC0U5o+ROxamACtvq2mTlvEm
         ZE0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=OQSqUqmhjM/Kl6spVK1zS+vIMVK0iz2ZDxXHZSMFa74=;
        b=sc+OtuwjcQNsvUxbXpxrhFMRsNxXoy5nhZYn4VgAZVYevZrkiQHQi8rpuUvd2FNS9j
         p2tPNQK2dcRLc+v1BE/UuLI5tMgTsV+isONicAy9rZygmpYh/MrBLjbmkQaNgBvVndEL
         Za9joc7hBgDEOre+OBI8jNJSwvmKU78ujbrWC1Yx88PROZxUiOdTiRP/L59v2AkRnzvK
         i2uqy77D6KWrjUEZ953kTs/xo9+LdJwC4fZiAGkllrRELSi8Hh724p21/hZdQTWOn+AT
         caolg5JShyO55HiYf+nswZKtklopt+vfBH+O4uhYYxp7htQX5MwfyF5igR+3YcDruHZ1
         OBPQ==
X-Gm-Message-State: AOAM531AalAJoXn3TlJaDt4oLIw9tQLfepmRpfD/9L1Fuk6cTMjGDnF/
	v4J0cpMo+g0QVQNlVT1Ol060ASBED4mIY9Jz
X-Google-Smtp-Source: ABdhPJyz9g3f7n0ZOv3dgBZO6VqN+ERteoezmaKSd4oCyLsy5P2zaFnZcvlvk27rFsbXdBvE5exXfQ==
X-Received: by 2002:a1c:1dc3:: with SMTP id d186mr2261365wmd.182.1602328579137;
        Sat, 10 Oct 2020 04:16:19 -0700 (PDT)
Return-Path: <idadelm@gmail.com>
Received: from localhost.localdomain ([154.72.153.129])
        by smtp.gmail.com with ESMTPSA id v2sm16418085wme.19.2020.10.10.04.16.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 04:16:18 -0700 (PDT)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Meh Mbeh Ida Delphine <idadelm@gmail.com>
Subject: [meta-poky][PATCH] Update license files to match current SPDX names and license contents
Date: Sat, 10 Oct 2020 12:16:02 +0100
Message-Id: <20201010111602.7785-1-idadelm@gmail.com>
X-Mailer: git-send-email 2.17.1

Updated mappings of license fields of meta/conf/licenses.conf to match latest SPDX naming.

Fixes: [YOCTO #13320]

Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
---
 meta/conf/licenses.conf | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
index 5b309eb385..9b4d0e7c7b 100644
--- a/meta/conf/licenses.conf
+++ b/meta/conf/licenses.conf
@@ -10,27 +10,27 @@
 # Any mapping to MPL/LGPL/GPL should be fixed
 
 # AGPL variations
-SPDXLICENSEMAP[AGPL-3] = "AGPL-3.0"
-SPDXLICENSEMAP[AGPLv3] = "AGPL-3.0"
-SPDXLICENSEMAP[AGPLv3.0] = "AGPL-3.0"
+SPDXLICENSEMAP[AGPL-3] = "AGPL-3.0-only"
+SPDXLICENSEMAP[AGPLv3] = "AGPL-3.0-only"
+SPDXLICENSEMAP[AGPLv3.0] = "AGPL-3.0-only"
 
 # GPL variations
-SPDXLICENSEMAP[GPL-1] = "GPL-1.0"
-SPDXLICENSEMAP[GPLv1] = "GPL-1.0"
-SPDXLICENSEMAP[GPLv1.0] = "GPL-1.0"
-SPDXLICENSEMAP[GPL-2] = "GPL-2.0"
-SPDXLICENSEMAP[GPLv2] = "GPL-2.0"
-SPDXLICENSEMAP[GPLv2.0] = "GPL-2.0"
-SPDXLICENSEMAP[GPL-3] = "GPL-3.0"
-SPDXLICENSEMAP[GPLv3] = "GPL-3.0"
-SPDXLICENSEMAP[GPLv3.0] = "GPL-3.0"
+SPDXLICENSEMAP[GPL-1] = "GPL-1.0-only"
+SPDXLICENSEMAP[GPLv1] = "GPL-1.0-only"
+SPDXLICENSEMAP[GPLv1.0] = "GPL-1.0-only"
+SPDXLICENSEMAP[GPL-2] = "GPL-2.0-only"
+SPDXLICENSEMAP[GPLv2] = "GPL-2.0-only"
+SPDXLICENSEMAP[GPLv2.0] = "GPL-2.0-only"
+SPDXLICENSEMAP[GPL-3] = "GPL-3.0-only"
+SPDXLICENSEMAP[GPLv3] = "GPL-3.0-only"
+SPDXLICENSEMAP[GPLv3.0] = "GPL-3.0-only"
 
 #LGPL variations
-SPDXLICENSEMAP[LGPLv2] = "LGPL-2.0"
-SPDXLICENSEMAP[LGPLv2.0] = "LGPL-2.0"
-SPDXLICENSEMAP[LGPL2.1] = "LGPL-2.1"
-SPDXLICENSEMAP[LGPLv2.1] = "LGPL-2.1"
-SPDXLICENSEMAP[LGPLv3] = "LGPL-3.0"
+SPDXLICENSEMAP[LGPLv2] = "LGPL-2.0-only"
+SPDXLICENSEMAP[LGPLv2.0] = "LGPL-2.0-only"
+SPDXLICENSEMAP[LGPL2.1] = "LGPL-2.1-only"
+SPDXLICENSEMAP[LGPLv2.1] = "LGPL-2.1-only"
+SPDXLICENSEMAP[LGPLv3] = "LGPL-3.0-only"
 
 #MPL variations
 SPDXLICENSEMAP[MPL-1] = "MPL-1.0"
-- 
2.17.1

