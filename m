Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A175EC19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 09:31:01 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.9640.1741167059687736094
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 01:31:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WPQ3FWtN;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-390e3b3d432so4369831f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 05 Mar 2025 01:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1741167057; x=1741771857; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=LYsGInaNPzSwCCrWPnMldMX3jq4UhcOcl063ZprDw3c=;
        b=WPQ3FWtNVwtAOnddYOLfGxrDkA2XH+HV7edzaJQrHlkeCfGp1is/cNIK4MNrQqTkcu
         +jVsUOXYf+SEPStH4t7MQ2DWpkc81cETmXlefTkNZoVG7eo2029m5cAsC6dbFQ6im2ey
         9IfKfygM3mEdx+8sOxxLJJomTlbjSOTmvMAg8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741167057; x=1741771857;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LYsGInaNPzSwCCrWPnMldMX3jq4UhcOcl063ZprDw3c=;
        b=UJgU4XKIntdWvZxsc04Bf3rmrd0GYNzsbcW6CkgRhrrArBkWIGwVRc6i5ptv28ToPc
         bWWBxCi2dCft1WZ4ofCC/GUNVe00uUi8Bp/JrFQL5xZSbviyBqorQGYquYxRpzvuxHPT
         l5N/E2qb2vQRXQ98bHzcv/Y+USwmcVjlWQT+hfyIbt1rAwOP7hVHBkpGjb4HUKIln3fP
         OXMjWQsqZgJAaa/ZNGTrwx224z+czCz/VjBvuL/DjHiOlyCaHaYbE4DsX6NGI9YuvmHf
         fxwvZyJebendkprHX+vGIkVSt9i2f7ai3GMZxStO2/ghCNSvyqXHStg8htVWcQXYUHhZ
         Z/6w==
X-Gm-Message-State: AOJu0Yw5UKTw3ClGoHPydrKtIOJ+0Pg/sHmrPzQz/0c9Vsg0b2rLbo5K
	+p1aPxThi0MgiNnHjYwwG8DGNYfQ0HhjX6bUyuBclbMMvL2A3G2zmmDIwkkenmBl4ChtzHOOMYK
	O
X-Gm-Gg: ASbGncudJAccoVR7tsuMiCD7aftOHdQ8ubLfTQmX9RqIaF5QcJrKvOp33bEIlmdmW0y
	i90o+txnNu2ZnIqI6YkTcichZLz3c1OvudBJxVYAkHfTTtBxjFStH606iIMMv7aRmcCdyErQ1dT
	PpehMBsA4jdTKQ6Es7GWqgbwL4Pl2X4KEIsUg5W8sZ2uZCe/LLS5wCHdj7KHWc3I3OfdvRQrtUj
	HaJ9jp5JDXLxDaqt3jnp53FtLw8G0WRCucXK9zegjehzlNrkfOE2YK0yB1S7EIy9yj2GQLUky2Z
	3yKFrZ/Rfus4nrhUOjbmUM5/w72ksxczyrFSdTsKKdzrRzAvYbT46CtLdiTnXwJn47TomlII5A=
	=
X-Google-Smtp-Source: AGHT+IE49bgy+e11weSUaCGZapPG9CmjGY6NNyGp9VKXthgxdYfkZg6gFyqs1o6GqRtof0tPblyDLw==
X-Received: by 2002:a05:6000:18ac:b0:390:feb7:1f65 with SMTP id ffacd0b85a97d-3911f7c868emr1930639f8f.49.1741167057322;
        Wed, 05 Mar 2025 01:30:57 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:939e:c44d:2366:e8da])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bd6530f26sm5783315e9.4.2025.03.05.01.30.55
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 01:30:56 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Remove Fedora38 from SANITY_TESTED_DISTROS
Date: Wed,  5 Mar 2025 09:30:54 +0000
Message-ID: <20250305093054.2030358-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 05 Mar 2025 09:31:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13558

Now the obsolete config is removed from the autobuilder, we should remove
this distro from the tested list too.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 99bd6407bc4..09c9f413884 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -37,7 +37,6 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
             ubuntu-24.10 \n \
-            fedora-38 \n \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \

