Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB9B4C369D3
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 14:46:16 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.41785.1745333169142026838
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 07:46:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=IzQ/fOVh;
 spf=pass (domain: linaro.org, ip: 209.85.167.49, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54e6788d07eso2516360e87.1
        for <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 07:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745333167; x=1745937967; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wY8bXYDaE/DimIPtmSu7MmZlSzDnkhFQb615lJNlis4=;
        b=IzQ/fOVhklgEliomdBsr7HU4ulhN5ImH3PXnPij6ihhDkcuSaelxqWy0n99IBwW+iy
         mFW6QtxR7AAEIm+pbdGklRuEr/x/yBsmQOwbvllAfvhJAyjLpHkTye8Ncr79hhwUqYbY
         Dbg3MbvZ+7Wsfgoh6aEa2hPupe9UbI4tJu7n3lzlIvIifUy8tYTLQyv59xvyzJUjptFx
         27YSDVGVPrlpxPlTKSKxK8G6L0SfyA5CTP1iPWV9dZtqez+Jd/ZH0NGGz46Ja/VWHSmy
         C1r8CNJfsyA11f4rgrtO0hEbRk8ksnLKepGFUE0os26/+ed0/yDlbC4NAGqBbqx0yFjb
         jlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745333167; x=1745937967;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wY8bXYDaE/DimIPtmSu7MmZlSzDnkhFQb615lJNlis4=;
        b=cIokWa9ZFfVrZTMbvJtfcQM2CWnbz7rLqvu0ig/qX6cAP4VCgdFcGPf1jN/SWc1OmD
         mBdCh0jpQPyas3X2TabEt9R494+ykQDVImtgoKaTnNxv+PleKvoLnWYZ6Y2rv2eYI4YM
         Z1eO80PvDzZiNgH+1e9ag6KkaJUSpS0Q0te0avfmqQL56bAGKVF59iTy+R8/5OGz0/M5
         Dv360t85zQwXJOoM+jscEhnOpUTf51k/GJfUXf7QJ4cpq4xwFTiwAccCWwgjQPIMAHYQ
         cTTietCxzHciXVa6/u3dSnchNK95Tp5mCi+qzQsB4w6YFxxooTf4x5e9RHROtTWe4F/Y
         aduQ==
X-Gm-Message-State: AOJu0Yx2kCBo5ODBGnzesR5I6cPPMBz8DmT4X1br5ebmNTKh3PBNkzRA
	PX8kePt9coaCeAeqss4dF4YXEBWMs0M1SOxEOp13gDg5kVg11pUjZugiNqALuAHaYzOUSe/jPY3
	RcNY=
X-Gm-Gg: ASbGncvGVyoN8MqY8Oxjc962Mnq0tvQBd6uzTwkcf+Z2bd4uoB1p98+WL7VLhRkZkjz
	kx9CE1lH4R4dmJZ6ZJiIffVlSaJzqL16+TDYlmqh4SzxfqTz4XkWuIMo44nFrjCCMmfsHyJJLGN
	/n+dnAmuYfFl73VAh5Xc6X5xa2hYyQipQX+M78LpXe92u8mKPGVEO2gmXAUUTc2SXS67eA6Jwmm
	ks7WEPwB0tmQPPAjD26kJja7AzLkkEcbozGbHHW1S0DKWh8hjAG8WbR6447iJwex4YLhZfXzQZC
	xheArqX5cEhPRg8TqEWjSFTw3r0ov4wZJlLfyMz4MkThuq5FtbIFGnzZmcay55LfHggod5YQkg4
	yd0UV3sXbirU6GZ/8AJesibBzPUnX
X-Google-Smtp-Source: AGHT+IHR1E0zqrWst3y0FYk+MiV/NJtVpMHHDyjGH7/7a2s5CmM7uiS0wLZMt2NaQgbj8lqYv+LH+w==
X-Received: by 2002:a05:6512:2208:b0:549:981b:169d with SMTP id 2adb3069b0e04-54d6e7704f8mr3908679e87.3.1745333167308;
        Tue, 22 Apr 2025 07:46:07 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d6e5f515bsm1244639e87.222.2025.04.22.07.46.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 07:46:07 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-yocto@lists.yoctoproject.org
Cc: poky@lists.yoctoproject.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 1/3] kern-tools-native: update to support modular kernel builds
Date: Tue, 22 Apr 2025 17:45:45 +0300
Message-ID: <20250422144547.101765-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 22 Apr 2025 14:46:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13595

After this update scc tool can compile options as modules
conditionally without duplicating config fragments when
the options contain a comment like:

CONFIG_LEDS_GPIO=y # OVERRIDE:$MODULE_OR_Y

Then "scc -DMODULE_OR_Y=m" converts these into

CONFIG_LEDS_GPIO=m

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta/recipes-kernel/kern-tools/kern-tools-native_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
index 6dd19f1f09..20b1bcaf37 100644
--- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
+++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "\
 
 DEPENDS += "git-replacement-native"
 
-SRCREV = "c8c1f17867d0cc7d04be225ba4901f2373428be2"
+SRCREV = "fe67c98d2e9b74af44d0c4b660fa18e3a95e7edd"
 PV = "0.3+git"
 
 inherit native
-- 
2.43.0


