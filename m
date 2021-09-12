Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web08.14810.1631446015061533977
 for <poky@lists.yoctoproject.org>;
 Sun, 12 Sep 2021 04:26:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Tf2HUumq;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id i23so9946583wrb.2
        for <poky@lists.yoctoproject.org>; Sun, 12 Sep 2021 04:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tVL5eRwfiGnTQm8v2dbZVfYEM7hyUa5FUyARcjEePP8=;
        b=Tf2HUumqWg+jKSfGuawnHxRmDxl2R9htpiGyz5qHfmZ4pe6ehKxgGk+A0NnvgVSd2O
         RiEz2aqJaEBwJ7nlak12S3osxjHtFN/spSooy7/53nB1mKB4n2sa5Ks0azxdoVNI4Yzc
         +qrvZTyKZgCY0Uz826jDX+Qulp1JDllp5n5UY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tVL5eRwfiGnTQm8v2dbZVfYEM7hyUa5FUyARcjEePP8=;
        b=EUMYuEHEiWXnvepnZx/z3IER3Oa1V0oC+OpPEauELk+byKdA2/5wO9fPy7b0Y42QVd
         WARpBFKx9cBwGpFp7MdcTDh4Lo3uvO9J7c1mZRhbFet9/WWqiiXEosNlzEyVUe9/8heN
         NOoFQ4dhplpKygR3eopf2zAffIjWA5d0lZuggdFk69l7xerTkCB8oAnKoW1xdK+RIb+7
         hL2BflG3Y8MwJQOBm7VPSZ0NJDPo0A5T9AlB9C6Kp1EYv86mH4R0RjPcQErZeXokKTCr
         U1IzyhLBmxYjtvxxMFpYTezZW5hIi4jFn9BmGUDdCH+MzEVt9uaadfjKY5T0ppqvlZYd
         Lt3w==
X-Gm-Message-State: AOAM533AVbelDQz5/oT4MYjDHAtqYjbnKKp6WYqKlcMlY1sT4B4z476R
	9xOUSGiePkh/0U79W7bmPHiq0eAeKmkCWmlo
X-Google-Smtp-Source: ABdhPJwz7qYLtaSmJTCq1UoovwOeojRaGnma22KWLvk3DM+rA2zx6ysSd4EPS+OuRXIf/V3ZkwyJXA==
X-Received: by 2002:a05:6000:1623:: with SMTP id v3mr7302054wrb.288.1631446012569;
        Sun, 12 Sep 2021 04:26:52 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:65df:1d9c:d97e:b357])
        by smtp.gmail.com with ESMTPSA id q10sm3834160wmq.12.2021.09.12.04.26.52
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Sep 2021 04:26:52 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: Update sstate mirror entry with new hash equivalence setting
Date: Sun, 12 Sep 2021 12:26:51 +0100
Message-Id: <20210912112651.1314891-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/local.conf.sample | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 75b27167f1d..7bdbba06b1e 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -221,13 +221,15 @@ BB_DISKMON_DIRS ??= "\
 # Yocto Project SState Mirror
 #
 # The Yocto Project has prebuilt artefacts available for its releases, you can enable
-# use of these by uncommenting the following line. This will mean the build uses
+# use of these by uncommenting the following lines. This will mean the build uses
 # the network to check for artefacts at the start of builds, which does slow it down
 # equally, it will also speed up the builds by not having to build things if they are
 # present in the cache. It assumes you can download something faster than you can build it
 # which will depend on your network.
+# Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
-#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/2.5/PATH;downloadfilename=PATH"
+#BB_HASHSERVE_UPSTREAM = "typhoon.yocto.io:8687"
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/3.4/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.32.0

