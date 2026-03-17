Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C320EFF6E85
	for <webhook@archiver.kernel.org>; Tue, 17 Mar 2026 21:19:21 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.94.1773782351913656334
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Mar 2026 14:19:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bd8zxPym;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-485409ab264so2180585e9.1
        for <poky@lists.yoctoproject.org>; Tue, 17 Mar 2026 14:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1773782350; x=1774387150; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wjIkHIVcZrT+aMyk8H+3f8GHGEFZ7it78EW1OwWcw4I=;
        b=bd8zxPymurvRg1wKY1Vp+Gff4s0kAZWDLJFKEiXCLDpwuQOWe/Pi0RD1lw5UCAyDpd
         W9lw0zeVtI4gm6BYN9WjPPfK4jKlKfNO78pFoDNBrQNMX9TPwc8YymaJwf1EChPqucbH
         UoXQhpu7KJQ2+vZHcAxQvq3aJ+HK3SpbUJv/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773782350; x=1774387150;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wjIkHIVcZrT+aMyk8H+3f8GHGEFZ7it78EW1OwWcw4I=;
        b=mksoBkg1NxI+Mm1cT6YeypnD6MDEDBzAkf0chVhdsfjogXoNaX2J5zMjSui4MrhJYV
         OM603U0U6f/T07ho4q4/oVxpwsdFsYsgDR+bq+H707kNXCfcOBDD2ZX3aBpiqmhKSSrK
         +DqFvHd9eHkuBCpHIuY/bjQBHjl8Cxk7asy67rgJ6v1cy+7b35dexR8uWrM/5CwdDkUq
         P2DdLGAABVv3fOhfaBBXFWB0Ih4jnzAiZPnXlCIsEhB5lDuQxN6DBMr+WGFpuziAek5s
         PDd5f2A/wM6lydXuseRbjg1s2diyjSdHPDWel0MzEAIyzlUIq1hNIMovbUFIoUn9bxJI
         uWUw==
X-Gm-Message-State: AOJu0YwkxUSlvbyjF2cO6c9yBrHuMJnzo9OSkukBmsDl6VDlHZ+P+JPb
	yJGQ2wzhC/WDFz3Cy/atwTIIrK3h8cI+/rAKdjsTxmu2xISNVJDg0JzETyaE4t9z+UEEkTLTkru
	dRJfOByg=
X-Gm-Gg: ATEYQzxOOAMO+WomQZ20FvsRgSTRB1Mhf2y02HW9OZwkmOwmYTpWIlKZp1J16Prkkkq
	9mtUfaHMmRyIXkQ0yPgO2DlKxn4sxQrgKImxKOpxDYfUBymfKJQlGRBty6CSOm0iaQcI1uNPfLd
	ptJW0D0hCKnt5OsX2i0RZzaelAj/oAk7RSOZUiZVjilDw3pwIwVbOmVRke0hJ7mSosv9VHakY56
	/mXQ1v+7i9KIcQm3/6XC9pyey7ZKpU3qq2vd/QOlNYGY3GQUOzzaKjGJAKZdd+/wdr/kqiDIzje
	uk5GHxnHMUE0At6G9uxAjA0O8gfxvQuBfqIE9DMJJPbOanrhu9DQVcR7b8p7tU52e4yeukjp7mn
	5VQrG5r6kjMrchz5L87xIpYz7v3AU3642ObRX57hY0k4+gT5lp0CE+hfVky+BIih9+QUWur5JRl
	2ETgVlF35Ar7UxenHvFT+5zqMW4yL5SuSxc3R84X291uLvauAskj8=
X-Received: by 2002:a05:600c:a00e:b0:485:3428:774c with SMTP id 5b1f17b1804b1-486f40a604bmr22143345e9.4.1773782349437;
        Tue, 17 Mar 2026 14:19:09 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:e931:c430:a510:1d6c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm166340995e9.3.2026.03.17.14.19.07
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 14:19:08 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] layer.conf: Update wrynose release series
Date: Tue, 17 Mar 2026 21:19:07 +0000
Message-ID: <20260317211907.1035277-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Mar 2026 21:19:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13863

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 +-
 meta-yocto-bsp/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 90576700889..3b70af51ead 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
-LAYERSERIES_COMPAT_yocto = "whinlatter"
+LAYERSERIES_COMPAT_yocto = "wrynose"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index cb36037aa23..ee12e304b38 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "4"
-LAYERSERIES_COMPAT_yoctobsp = "whinlatter"
+LAYERSERIES_COMPAT_yoctobsp = "wrynose"

