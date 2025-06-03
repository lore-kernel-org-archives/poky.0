Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CF3C5AD49
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:35:48 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.9047.1748950544121040364
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:35:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gbTDaiE4;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-450cd6b511cso33361555e9.2
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950542; x=1749555342; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpca4nPeorJFfYVK3un01I+3kusD0S9xCz3ZzXrg9C8=;
        b=gbTDaiE4zhHC8biliGEviMPNRM9CzgV4mbXxw3Y7uyAd84FsIXkUjtT5kq+NK9BxNL
         xfBqqhikkB2pO7cwVleYc3eu3qjoHnrUZS7nLa9O2Klm0qzz753nXxjOouufGHnJjRrT
         2yvmPHffmfUpOb9+ZPS4IAVfQg7Nu6dcpoix8wQK942XyUensEtZ8qMmbqFdctFjM7ri
         p/q7aYnuZTPDPFtQmlbiVnRbw9C36DT2fpDZ4RstfDbF+WKJc9Nj5j9KKLB4vU3U8a6c
         mthOoW8ZJAQNYpYfLdML71II5u1uN5KeTu8CtZQMTzgC089076N4AGku18TSE+XGcaLd
         6TDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950542; x=1749555342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpca4nPeorJFfYVK3un01I+3kusD0S9xCz3ZzXrg9C8=;
        b=hlGKHdP9CWgyyObwYgV5XeayHcHCH/UAW4FKBWclH+EUw+vRCaorSEh8xnbkwsD4od
         bNHX2I/7Ob6oDokvmm9uTjAnttualW9S9Ol0facvHJZsu7yWvE0NjnbilQOb+sFSK1sf
         2OJn9wpR24J7jrs9xPAQLfoRlvd+MsPj7WkfL9HJ5mTkVwE3sL+Rnw76N9RychTbm4fk
         13asU6d1OlomLfeg3NRmpY0uecjfNRnHQ2LTO0hvtHfEnyCVO/F314BCEGSmE79EoyWS
         xTQAGPHtsiMtCbAuY179FMrl34DFOOurSwy9xjDIWo86MfVQozDO0bB8ONmjl5vVzlOi
         n13A==
X-Gm-Message-State: AOJu0Yyc/il5myBb4Qm2LEiKPxbFMgUbAqZfSygM2EicNqO1TccuxIt7
	1SMXe5Y3F2ynfgzOL4AtkmRxwFKk6Zy0hZrOBWB5j1Mdo7EPDH8qi2YIe2yGqw==
X-Gm-Gg: ASbGncs98qMfmAvIUYxjM0gp0qn87FUibYEGTGHaW7GF+2lPkBYyf2103XOojYFXpV+
	V/+X03IelqyvMU92TlyOXoCOH9S0Yx2sqhkwUDtKpX5od70EYMYfQE3BDBX1z9Hsm6y4xcshrie
	QrqYEwbSC+7NV4WUiBUrsKlquPesU8NQoWYVOeC1g9FJg9p++Ks9qNM6UF629X95Pml+e5fNXvX
	K/mCoBSGpCFvldExKVTzaMQpYZCHBun/td9B195KqSiRDC7Vh/hqzWK747r62pyilYAP2OQRIin
	6Jsnt2ja+CDZb1WLNDwtQZllDhPAYeD8W2s6R9rcd0AA45cmCY+j24oAFtjPXh3oF0AwcijVq60
	qa0+AJJgn/v7p
X-Google-Smtp-Source: AGHT+IHDaDrkNo3BaI9G3uIBO6vdAGt9qystcocfQ+1uPgp9DHqYqdT/+5FZI1ov70GnFsFMxjDQzQ==
X-Received: by 2002:a05:600c:8119:b0:450:cc79:676 with SMTP id 5b1f17b1804b1-450d6544787mr138163895e9.20.1748950542228;
        Tue, 03 Jun 2025 04:35:42 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d8000e3esm157818315e9.22.2025.06.03.04.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:35:41 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 3/3] meta-poky: add fragments for poky/poky-altcfg/poky-tiny distros
Date: Tue,  3 Jun 2025 13:35:34 +0200
Message-Id: <20250603113534.3103020-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250603113534.3103020-1-alex.kanavin@gmail.com>
References: <20250603113534.3103020-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:35:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13633

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


