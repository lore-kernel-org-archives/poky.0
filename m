Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.26466.1668880432104822305
 for <poky@lists.yoctoproject.org>;
 Sat, 19 Nov 2022 09:53:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=B9cQNuq8;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.179, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f179.google.com with SMTP id v17so7218626plo.1
        for <poky@lists.yoctoproject.org>; Sat, 19 Nov 2022 09:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6q8ZocVHnJ9isuQ2PDeEZlRgEdV8AugD5PfgrpJUjc=;
        b=B9cQNuq8vKvc8S+DFk1DmNvf/ceqDSZFgP3yaQsWy06TWxgIyZ5/BdW1cDD8M11/Qx
         tXSqmZfX5hVkAT/KELwe8Kh1KFUifZKnjS5LUalY9O1LmkXZfsur4q1sVaMF5MAkXarc
         2BvFzGdPYs13+5X/Gkien6fGVbctIK/0CGN/yievr6wBuRuC9yqDKZApeymgv0G2x9iJ
         sSavPHs6BooMcR2aYOxUNfOzEAetd/mKxpRv8CKO72dRPozvy9iQfti6MCviwH1wCTGb
         vr+Q1nM6i4KDk2UMZx724vC+sP/uyqtrR7eIfdb8aVtwQ6fsUKiNzsarUJ5Yxpi5xIfE
         VagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C6q8ZocVHnJ9isuQ2PDeEZlRgEdV8AugD5PfgrpJUjc=;
        b=cgDzdkd+bSzPwhLlgwvtGWcP8zr2AzYvoD0GxeYTHwbjpXEKPGZqIEiidk+JnR0arZ
         f+9C3Bew4ZJu6AUL5u893AUk0IVE7LeXDdmutWaJO/qUwrJa/5E8dsi/zE1ngywS0+aY
         dfYrvF4RlTbEUjDOOxJ5LgqRX9v9blbVRqwGUQ2mHMYs6OwOSjhKjSucYU37s2U7H93J
         D3HST+x5OLdnwHr56pWfLOV5lKUyMw81PrJAdsL2/eaF91qQ8YAdX+csO7BkL1uwvtGb
         YPUBuaaqsVSqY5RFq+vhaOD5ZN9klcFvgblbVpWXe8vh52aCL1IEBzUhQCvYYJcYyJ3J
         HDmA==
X-Gm-Message-State: ANoB5plR4/4XLqWbsXbmBJybd9BniL2f/kaxbgUXLsxT841N0vWuoRUJ
	CurkO7modaCUWuTs1zejQeRLA0/RPzI1KSAA9Pk=
X-Google-Smtp-Source: AA0mqf5pxA+uLqBsnlw4PX4PnBXIraouKNMVagsrjvpsapCbOWzqQABVxqu6nnkaVPg2UAQfNi1NmA==
X-Received: by 2002:a17:902:bc43:b0:189:1e5:8424 with SMTP id t3-20020a170902bc4300b0018901e58424mr4594498plz.156.1668880430884;
        Sat, 19 Nov 2022 09:53:50 -0800 (PST)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-6-214.hawaiiantel.net. [72.253.6.214])
        by smtp.gmail.com with ESMTPSA id t20-20020a17090a951400b001fb1de10a4dsm4356966pjo.33.2022.11.19.09.53.49
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Nov 2022 09:53:50 -0800 (PST)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] poky.conf: bump version for 3.1.21
Date: Sat, 19 Nov 2022 07:53:43 -1000
Message-Id: <3b52f313b2b835c57e2ddca8ccf3ea05954d5b73.1668880367.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1668880367.git.steve@sakoman.com>
References: <cover.1668880367.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ffea526..8c324c0 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,6 +1,6 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
-DISTRO_VERSION = "3.1.20"
+DISTRO_VERSION = "3.1.21"
 DISTRO_CODENAME = "dunfell"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}', 'snapshot')}"
-- 
2.25.1

