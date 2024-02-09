Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79D8C48297
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 14:00:06 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.12186.1707487201659072576
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 06:00:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XYdTuYD7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-33b6847df67so118588f8f.3
        for <poky@lists.yoctoproject.org>; Fri, 09 Feb 2024 06:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1707487200; x=1708092000; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hZwRae7Cu7ZEJ+FJuGiBohVVzy0aZJnV8wugcyB8yOo=;
        b=XYdTuYD7M94Y4H9VVsmXdoihXe1e+VJK/dlDFSsM/IadPuAFUfhQf9tvsW7K+9k4Si
         vXUWV2K9B407ESzyrmBtQB8gVBj9lqv424pMF/oIznbJyQBKKHgnDP//L+8GDuSV9il5
         8UjTHRFnEe5gASI1Lybijnb91+7pENlW4Ak30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707487200; x=1708092000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hZwRae7Cu7ZEJ+FJuGiBohVVzy0aZJnV8wugcyB8yOo=;
        b=L57HzCvyVBEAV+kikaCAZ4kOomDw2QZy5qf1WrM36Q/l56CrW2SPflfKU3r+MAydXt
         wyknGDWOrm9RlZJkXOb0tU+bkz2fEiinRV52z5c4jso3Z7RBCq4q9hdC9pb6pev5l1S1
         J9mOGu3TrUt4HhWZ6WgemRqdy+7Mcyp7EZ7LnXNlxRBrsK9lP7boIVxg29+yoFhm62h7
         lRWEHVPFc634RiZV65ivXjlNzwWpZIbJ53NybTxrWCRrBrv2oYIg1UFFo83/XsFnp7OH
         rjLzyLAgxZx7KemQeiHFq6wCyj1UsVGxBrzvmKuwMLr9EqowPWuC0V5BswY+4TUIwmMs
         iN6Q==
X-Gm-Message-State: AOJu0Yx1Uiq4KbF59sm6dxc2xsbtc1bwObDq7wj8Kiq3NUKbTDGRscm7
	2uMpoMEsxsG/YA0i/q/C3ARxZZPCmgErBc16m521k6waXeZ2yKtkYwXcEkNHmr0LCxhUumMylKN
	p
X-Google-Smtp-Source: AGHT+IEeyYMcMj2ETHEVfaheE2QWpTPoIak5+14UWOT3J4wHHGfpl7qXwixUoHu+j9q0Pz3CaolQcg==
X-Received: by 2002:adf:fe08:0:b0:33b:636e:c967 with SMTP id n8-20020adffe08000000b0033b636ec967mr1253978wrr.1.1707487199702;
        Fri, 09 Feb 2024 05:59:59 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:47e1:ee11:154c:e6b3])
        by smtp.gmail.com with ESMTPSA id dv14-20020a0560000d8e00b0033b444a39a9sm1886734wrb.54.2024.02.09.05.59.59
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 05:59:59 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] layer.conf: Update for the scarthgap release series
Date: Fri,  9 Feb 2024 13:59:58 +0000
Message-Id: <20240209135958.3393986-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Feb 2024 14:00:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13253

Prepare for the scarthgap release.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 +-
 meta-yocto-bsp/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 5e1c37a9d43..13bba953a00 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
-LAYERSERIES_COMPAT_yocto = "nanbield"
+LAYERSERIES_COMPAT_yocto = "scarthgap"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index ca3f15c76be..60902b4de90 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "4"
-LAYERSERIES_COMPAT_yoctobsp = "nanbield"
+LAYERSERIES_COMPAT_yoctobsp = "scarthgap"
-- 
2.40.1


