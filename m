Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B803CE7D01
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 09:41:18 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.77455.1727775673204298151
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Oct 2024 02:41:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JXv+tcw1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-42cafda818aso50924545e9.2
        for <poky@lists.yoctoproject.org>; Tue, 01 Oct 2024 02:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1727775671; x=1728380471; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=29OvKWg/QuOErKJNDsZKSIZWsV82QJATb7/1ogSJMMw=;
        b=JXv+tcw1gKrcHtr5nqW3S3sXISxRXGVwmUV5Dwr/CPEIe1EQ9ePtQk7+aPgJg+MoLX
         bKL8EfwltUYyZhHDFUSr9LQJWUFMfREcXTM4fiyBXHB+eBREJgx9zHRPzjmGyVpfurxW
         J/GWRdORXwUEpxg2pYsZ6lJ4O3fltX4TuAoQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727775671; x=1728380471;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=29OvKWg/QuOErKJNDsZKSIZWsV82QJATb7/1ogSJMMw=;
        b=KkyFv3mePEZUziqE3kAvSTwPyBzcMcXn7tj6caPgk0vdYTRYi3BEfRUiXfc9DQURjn
         tBiHoeRN3aKziiT4ZlGZF8Q1eKUwG7qu3pI4KPCoOHc0miehkGB7vO6TEgs3xsFxDBE4
         PlHLBCyMGGd0zG+lWLnyW9lPZmTAfhLXonasJcI0sb4/pVG05Hs74jIYFd7+/y8d9y5C
         Q1wpq43gcW3Aynw1MnS2hGQG57LIx34fLmMFMcdIWsd7GxoAXtYMH+yGVcd3OkoC5ezq
         THOUa0PzuzCrbRy9wto7dYgrlvuRVYQ8wye6wpK8huNy1Anf5EFjq1TypYzXp52ubo50
         5+uA==
X-Gm-Message-State: AOJu0YwXA9KLhdtKO4TTbR+wIm9FxqPa8uMaQuSxxI7fre0ddJxy5C9a
	kZ2McufP3oM6YdUvRCgBtJwtVam03qJxDLWKtNKP3jJzDD1Zo7OOLplCMvWbAfychWnLlXOEs1l
	Z
X-Google-Smtp-Source: AGHT+IFUJDbw3Fu72doNZGXUEGejq0xdmhVOelk+K57Pd22RizuXdB08STCAJjt2eAi7OswsV/ghSg==
X-Received: by 2002:a05:600c:190d:b0:42c:d74b:eb26 with SMTP id 5b1f17b1804b1-42f5844ce98mr121145715e9.21.1727775670958;
        Tue, 01 Oct 2024 02:41:10 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:85a4:e3cc:bdf8:640d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42f57dec110sm128806415e9.25.2024.10.01.02.41.10
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 02:41:10 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] layer.conf: Update to new release series
Date: Tue,  1 Oct 2024 10:41:09 +0100
Message-ID: <20241001094109.2862936-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 01 Oct 2024 09:41:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13446

Switch styhead -> walnascar post release.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/layer.conf      | 2 +-
 meta-yocto-bsp/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index 289ae48bbd5..483046b6d36 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
-LAYERSERIES_COMPAT_yocto = "styhead"
+LAYERSERIES_COMPAT_yocto = "walnascar"
 
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 0ebf1c4f763..f229cdec5ee 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 LAYERVERSION_yoctobsp = "4"
-LAYERSERIES_COMPAT_yoctobsp = "styhead"
+LAYERSERIES_COMPAT_yoctobsp = "walnascar"

