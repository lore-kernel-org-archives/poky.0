Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10C25C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 12:08:21 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.6587.1740485291131883632
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 04:08:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=azNnbwtu;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-439a331d981so47833945e9.3
        for <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 04:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740485289; x=1741090089; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpca4nPeorJFfYVK3un01I+3kusD0S9xCz3ZzXrg9C8=;
        b=azNnbwtu7yyAWeNKkmgzu/Sk3naYzDkAnOv3DFp6duGkAMEe1HECqBbNm7nkwjYZVM
         d0uF+MHC1wwvfcvTx9iG2DOpxcWwXxwNqr6mhij9Lj9vd4Ie6xB6nmhEinjU1bPlPICZ
         RFtnpz1HYyGfU9ODu5w6XFUTNpqa56Mk5TVtYdf4qNmZ3z1/THavOT4+wOymC//dE1uI
         EE9TKa7442/0UtkBpnVaBtJVekM59JYc8UeC1ScVLQniW2VfKSrbmd6U65pATlyCve4T
         mbWpl9mFVoryT1dxF1dkK2ybQxMnpC0LttRkXgg2Rvz6sfR1zOqnyvCHrE8ygcY4/E/j
         JHAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740485289; x=1741090089;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpca4nPeorJFfYVK3un01I+3kusD0S9xCz3ZzXrg9C8=;
        b=Z+jt0D1lpb+ivGumFVcDnI9bhHEqgydm3Ox2ZtJaKUBXHT/696IcCoA6alQLcjHPxv
         ZoWV68iDwa2WGlVPmbIhpnKPJ+iFyPXZ6wrzmk58pdFsptKlp2mbcizgHHZnt2pkBcyK
         FAFZXNUGyEWFHedQmGYpf0hFf2fsySunIdAx8DTZUi30hfQN2cpX5XOrMQzGjSSI4W4I
         Ew6bM9YnCuK1RdfezmpAaOBDDRNguU0+g4hn2wCbrx3h485cXEQ3zub+vBqcyM4WiAK4
         26tw8j+TT5m7AefVhK/zKi1L4VXVG+o4Z3b75VfGC8hmGEFUZe2z7vBLYRrshiUFOWke
         TVCg==
X-Gm-Message-State: AOJu0YwvFwNExuI0PZKYaFBk0W9UJrEsNoHfesfLtOddBJB+WaTPoT9u
	Hgf+7jkK4jCfr31u5r9itK4wzKD0oU6NEiCSa5LwsynGM4TOtCd186N3Ew==
X-Gm-Gg: ASbGncssEKYedqWtw/G24RuxGGEFrwjeG7dDjPjxeX1mVZ/pzHsm9ZlZvKPRWGc1Yuc
	W0nyM+DlYKcDLzoCGME0A+1wsWFRTOeMUb7LTqkPzifSRADVIHhrOyVrBXTA7RQmUstwH1fWIbP
	torelt05+QkK7jB089CejMEmzCOag2y9sLNtZxeWqKzWdJeePEtZ4CSCTdebDYtolyIawnlfsc6
	oZAdvlJ+8vzvTkeomrxs4dBeiOs4BGlGVykegg6gQAdQ4t0XJJtT34M4hVvCUfu4rWM0G+XS/sC
	Csv+yI8Z2udah1MwboK8uOaPzHggq27c6F0v3VYlo6ejkfmxPbJ2Rs8edeZxkXc=
X-Google-Smtp-Source: AGHT+IEahzaIAiji3pxFTt0ZTwux7JznbnT7vOOI2nbTcQ5/6F3GATYNzqJJTWsn1tem8N9Tjd5J4Q==
X-Received: by 2002:adf:f50f:0:b0:38f:4acd:9753 with SMTP id ffacd0b85a97d-38f6f0639a8mr8414560f8f.32.1740485288942;
        Tue, 25 Feb 2025 04:08:08 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86ca9csm2068089f8f.22.2025.02.25.04.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 04:08:08 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 3/3] meta-poky: add fragments for poky/poky-altcfg/poky-tiny distros
Date: Tue, 25 Feb 2025 13:06:35 +0100
Message-Id: <20250225120635.171931-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250225120635.171931-1-alex.kanavin@gmail.com>
References: <20250225120635.171931-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 12:08:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13542

From: Alexander Kanavin <alex@linutronix.de>

This is a building block for bitbake-setup official yocto configurations.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/fragments/distros/poky-altcfg.conf |  9 +++++++++
 meta-poky/conf/fragments/distros/poky-tiny.conf   | 10 ++++++++++
 meta-poky/conf/fragments/distros/poky.conf        |  5 +++++
 3 files changed, 24 insertions(+)
 create mode 100644 meta-poky/conf/fragments/distros/poky-altcfg.conf
 create mode 100644 meta-poky/conf/fragments/distros/poky-tiny.conf
 create mode 100644 meta-poky/conf/fragments/distros/poky.conf

diff --git a/meta-poky/conf/fragments/distros/poky-altcfg.conf b/meta-poky/conf/fragments/distros/poky-altcfg.conf
new file mode 100644
index 00000000000..f89decb8b75
--- /dev/null
+++ b/meta-poky/conf/fragments/distros/poky-altcfg.conf
@@ -0,0 +1,9 @@
+BB_CONF_FRAGMENT_SUMMARY = "Use Yocto project's reference and testing distribution 'poky', with alternative configuration."
+BB_CONF_FRAGMENT_DESCRIPTION = "Poky is a distribution defined by Yocto project for reference and testing purposes. It can be used as a starting point for product development work \
+but it is recommended to create a separate distribution for shipping products. \
+\
+This selects 'poky-altcfg', an alternative configuration that is mostly same as poky, but makes a number of changes: \
+such as systemd as init manager, and an older LTS kernel (when available). Check meta-poky/conf/distro/poky-altcfg.conf for details. \
+"
+
+DISTRO ?= "poky-altcfg"
diff --git a/meta-poky/conf/fragments/distros/poky-tiny.conf b/meta-poky/conf/fragments/distros/poky-tiny.conf
new file mode 100644
index 00000000000..fae7621fe77
--- /dev/null
+++ b/meta-poky/conf/fragments/distros/poky-tiny.conf
@@ -0,0 +1,10 @@
+BB_CONF_FRAGMENT_SUMMARY = "Use Yocto project's reference and testing distribution 'poky', with tiny systems configuration."
+BB_CONF_FRAGMENT_DESCRIPTION = "Poky is a distribution defined by Yocto project for reference and testing purposes. It can be used as a starting point for product development work \
+but it is recommended to create a separate distribution for shipping products. \
+\
+This selects 'poky-tiny', an alternative configuration that is intended to define a tiny Linux system comprised the kernel and busybox. \
+Poky-tiny sets basic distribution policy to ensure a usable system while still \
+keeping the rootfs and kernel image as small as possible. \
+"
+
+DISTRO ?= "poky-tiny"
diff --git a/meta-poky/conf/fragments/distros/poky.conf b/meta-poky/conf/fragments/distros/poky.conf
new file mode 100644
index 00000000000..8b9d7226a2f
--- /dev/null
+++ b/meta-poky/conf/fragments/distros/poky.conf
@@ -0,0 +1,5 @@
+BB_CONF_FRAGMENT_SUMMARY = "Use Yocto project's reference and testing distribution 'poky'."
+BB_CONF_FRAGMENT_DESCRIPTION = "Poky is a distribution defined by Yocto project for reference and testing purposes. It can be used as a starting point for product development work \
+but it is recommended to create a separate distribution for shipping products."
+
+DISTRO ?= "poky"
-- 
2.39.5


