Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E264CF8844
	for <webhook@archiver.kernel.org>; Thu, 20 Nov 2025 11:10:05 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.31682.1763637001492248237
 for <poky@lists.yoctoproject.org>;
 Thu, 20 Nov 2025 03:10:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XccZfmBl;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477a219db05so4882105e9.2
        for <poky@lists.yoctoproject.org>; Thu, 20 Nov 2025 03:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763637000; x=1764241800; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xAGfNJosBWnM8g1nzVLZtRWa04uGoUft/sLeJLnV4Pk=;
        b=XccZfmBlrQJarTae0edhAC9G3GYKe/HJK864YMY0yS7/cGT238n+pO4zMEYDnFIj9F
         IJa8zUkDetTgTfAWJZ1x62lTEWXeqBpUI7gUDzsEXFG5jG81tkbIoeC32KYzI/No8Tk6
         zadlRXENFrgWYMSLHm6WyquN38i0ERJ78XZ7lpEhaaHN1ul9NAAj7VrgP5leKOkLYXYy
         T4T1dFtYObzys2HFEgWYr4o1EyHQmYnc/guMJ/g0nJLmkTgi5usWQzFbITOKQvD8BBkH
         byaLjjrzDPSxPzfl3mWEEQbsEO8HyZg0LAK/SwVn13eQbbJ1ZVo02uWYUY82h96OQrIt
         zD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763637000; x=1764241800;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xAGfNJosBWnM8g1nzVLZtRWa04uGoUft/sLeJLnV4Pk=;
        b=u5DGCtDFk31iRVfV8R1te+lgP+uxQQ+Hs71Tkh8ZJZ4htQKSPFMy+Y6Vhr7Htec9gN
         wJJR8pv4iZgOWDZNGQOYcvhtByjNaIULh8LwH/jQ9QBokfWPS/vYP8W4s/1EH01dIw+h
         R9ddzkq/htvhERNgtlO5pdHOl/rb9oqVhDoIq9foO+GXPtJwZYNz+tGVxPktqKCokx1X
         I8dKuyWZ4o2zLNUTk91fYyIbFX64TeLHIKNUousCpRc2nReIQQvrWPzEg0Ml1NC0Zp8v
         ac/EOmjd3hQB1/kBv4qc5VKwqT/jZ8OJEeplDfRb9Zm6+bHgHjg0cryANTi6EcQ+4f3/
         SwHA==
X-Gm-Message-State: AOJu0Yzai83uQRVQ0+EFUixOyRF2RU83rT4AvEVWZgBXAF4U+XtcEIUn
	DRw7PfZxuplHkEWaVpJsgaKh80dFMGmtOeZYZP7NrI/EngFikBm7ysbsMCLWpg==
X-Gm-Gg: ASbGnctt1d3ZyEesZ5JJ2JzXer9qJJ+1sgFqyQl9Yoe+G3xerHddejEwVowCsltolvH
	NAviv+i9m65Fb7pY7T9q4zFnYk1iLizs0CdO+JYMhIsuvkc6bKkfCqeVtFEzkYZ6HJzQlm+4uFk
	StlmbC6zxpoqWp8DvDiwiWMsntO66Rl3ImwtLjCPE+OKvd0x7fT9SFXYJlRxUXuD9hwFTErXEa3
	wsE2UJSRygIeJ70rseEqyX7Pw9Q/ro+TAREnrj6zoIlIXdn0bRtCFo+NwJalXKGUTrlbqadOFvM
	tvikvxErla+QY4Z6wAx0GIGvvuAQDQEbJdUoJGTSv9sRq1gd7WbnNBrxy6ujRanBSXlRLJTA0Ls
	1Rgv0CfRHl4xGH0QBFZR9gPlJUT0BBMQSUlye2h8P9wWfqTOlXVe4Inx0HT7LJx6de89YFhcfYW
	IR1Gbpk7DW7NvPoorqaUn2Rf+dqTcvk1unvGIrrS9xXjpk+Gc=
X-Google-Smtp-Source: AGHT+IH3/ECHR+X0ZDmD28FQe7442RLKdkzCRBCNXrphLKmcrJfe4TDz1Iti0TCXCIb9oxouw7DZAw==
X-Received: by 2002:a05:600c:3115:b0:476:d494:41d2 with SMTP id 5b1f17b1804b1-477b8a9d734mr24173035e9.29.1763636999598;
        Thu, 20 Nov 2025 03:09:59 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b831ad9dsm41876405e9.13.2025.11.20.03.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Nov 2025 03:09:59 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] local.conf.sample: comment out the root-with-empty-password setting
Date: Thu, 20 Nov 2025 12:09:54 +0100
Message-Id: <20251120110954.131290-1-alex@linutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 20 Nov 2025 11:10:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13801

This was not a good default; the autobuilder relied on it, but this
has been fixed, there's now a separate fragment as well, and testimage
has a check for the needed image features. Let's take this out and
be more secure by default everywhere.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/local.conf.sample | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index 3d830d5..5a62de3 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -144,8 +144,10 @@ DISTRO ?= "poky"
 # There are other features that can be used here too, see
 # meta/classes-recipe/image.bbclass and
 # meta/classes-recipe/core-image.bbclass for more details.
-# We default to allowing root login without a password for convenience.
-EXTRA_IMAGE_FEATURES ?= "allow-empty-password empty-root-password allow-root-login"
+#
+# The following will allow root login without a password for convenience.
+# Use with care, and never in product builds.
+#EXTRA_IMAGE_FEATURES ?= "allow-empty-password empty-root-password allow-root-login"
 
 #
 # Additional image features
-- 
2.39.5


