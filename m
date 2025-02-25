Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18923C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 12:08:11 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.6586.1740485290080824052
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 04:08:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PhKq+Xt/;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38f29a1a93bso4351099f8f.1
        for <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 04:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740485288; x=1741090088; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PhqiKetVoub6/ZWkLroD9f6MHBI+j90NGh52XHCgz/s=;
        b=PhKq+Xt/xgCDe6gOptwgYwTO7AOy6m/Kjexo3ULOj8e6T9MIJksz4iWm/HcfowM7u1
         aJU86tTT4X86Dhck7lB8M0/WAsdxDQoLdvNwUi+vfnVCLRS0SSesw4svdtexzptSerFh
         th+kNNXf1FJu49q5oD3SlO4flhM8HeQOk/7KAGUR0R3YjGU/tPcwAsNS3xhvIWmAi3p+
         Ij/yMI3DKCsutaB108F/e4pdK+VIvmC+DaTs3rbE3R9S1Jfekj4+9wIurg80QBbGz+T8
         X38ZAG0sS/hxkHV1T80Gge0mikUqBtmRPIkepe5waJJKRrz1WpX0d2ovhi/Y3PR+q14R
         dJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740485288; x=1741090088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PhqiKetVoub6/ZWkLroD9f6MHBI+j90NGh52XHCgz/s=;
        b=WZknB7WfP+WjQQS72bfiSC/O+ORT4NiZ/J8AZSYnGUISUen9m24a/4Xg60uR+oqkuo
         JJ+HsnRmm4ZDI7Oj/23/fePfIiBn3eu5AyUpC3E7vXgzCfGBfYAkPSYOSKyZA4s0+bIO
         Og188yNDbgteh99vivtf2PBndBgWtWXC1tOukz5/R903QJkS4o6bCfnALVAOV5DtI/IL
         34KPFUpvZD3zp31P0aARSen6GupRVH3cp23zAHkdavqN7xYjT4C8idC26SdrLhyNcPIf
         04pnBCrgm4To1dZWgbnt+y6wbODk0RcWS1ibZa5DGAp1tcge8lymGDn5E5pI3nM7zEtH
         ZPxQ==
X-Gm-Message-State: AOJu0Yzg1ph8ZGKYJ0J2iyzjPypqtBxAIafIrEPnw2zT6189xJgAPjKu
	LL8tZ3kNyFwoZmNC4QeCcGosCf4iH2/Z1G/lA3w+pyd3VNVjk4FfBAQkyg==
X-Gm-Gg: ASbGnctfUdHb/Me4fWXzH8FTVh7vetUnEjAMnXvdq7Z/dG5UQUNs9auZ5q0XetY/oDy
	dFejm4I4PJ5uzTWAVS08rkfs3Zt3PmcDI8GsiSH6Dol6F2w1ZXL1W49QCt7aW+EaY+ZLQbMm4zq
	snwyL9J0aoU/F+9U9j/V/0rG+NZj3uXya++XicTvCUBKNecKidr9W9qFv4NfuNYqryZe8WmRmYd
	2OKU4n6b6dnFSnL8XV07CZqFqGlur3Dv3FcoEvaU817hvTIiD9Tpxp9UO5DjTadrmUYlRKbyc1G
	gtine56Rb+IYpe5juUce1+fXl76w5i4U5wglAK9YXAsZKnRLAK8zlULpGxBKRE8=
X-Google-Smtp-Source: AGHT+IE0yxBcrCFT/w4PU1NAR6U5XtNk4KyjoB9ZhzsvVJXSzyNjaNqO8ZxwMPAF7z99f+mG143/xg==
X-Received: by 2002:adf:ea50:0:b0:38f:37f3:5c9a with SMTP id ffacd0b85a97d-38f6f04eedamr12224530f8f.31.1740485288251;
        Tue, 25 Feb 2025 04:08:08 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86ca9csm2068089f8f.22.2025.02.25.04.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 04:08:07 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/3] meta-poky/conf/templates: add a blank template
Date: Tue, 25 Feb 2025 13:06:34 +0100
Message-Id: <20250225120635.171931-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250225120635.171931-1-alex.kanavin@gmail.com>
References: <20250225120635.171931-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 12:08:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13541

From: Alexander Kanavin <alex@linutronix.de>

The default oe-core/poky templates have a number of settings
(such as distro and machine) and are thus unsuitable for
building up configurations from fragments. This adds a template
with an empty local.conf, so that it can be used as the starting
point for fragment-driven configuration.

There will also be a blank template in oe-core; the difference is
that this one includes poky layers and the oe-core one does not.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .../conf/templates/blank/bblayers.conf.sample | 12 ++++++++++++
 meta-poky/conf/templates/blank/conf-notes.txt | 19 +++++++++++++++++++
 .../conf/templates/blank/conf-summary.txt     |  1 +
 .../conf/templates/blank/local.conf.sample    | 10 ++++++++++
 4 files changed, 42 insertions(+)
 create mode 100644 meta-poky/conf/templates/blank/bblayers.conf.sample
 create mode 100644 meta-poky/conf/templates/blank/conf-notes.txt
 create mode 100644 meta-poky/conf/templates/blank/conf-summary.txt
 create mode 100644 meta-poky/conf/templates/blank/local.conf.sample

diff --git a/meta-poky/conf/templates/blank/bblayers.conf.sample b/meta-poky/conf/templates/blank/bblayers.conf.sample
new file mode 100644
index 00000000000..d34b552cb71
--- /dev/null
+++ b/meta-poky/conf/templates/blank/bblayers.conf.sample
@@ -0,0 +1,12 @@
+# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
+# changes incompatibly
+POKY_BBLAYERS_CONF_VERSION = "2"
+
+BBPATH = "${TOPDIR}"
+BBFILES ?= ""
+
+BBLAYERS ?= " \
+  ##OEROOT##/meta \
+  ##OEROOT##/../meta-yocto/meta-poky \
+  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
+  "
diff --git a/meta-poky/conf/templates/blank/conf-notes.txt b/meta-poky/conf/templates/blank/conf-notes.txt
new file mode 100644
index 00000000000..cfd1f1977bf
--- /dev/null
+++ b/meta-poky/conf/templates/blank/conf-notes.txt
@@ -0,0 +1,19 @@
+
+### Shell environment set up for builds. ###
+
+You can now run 'bitbake <target>'
+
+Common targets are:
+    core-image-minimal
+    core-image-full-cmdline
+    core-image-sato
+    core-image-weston
+    meta-toolchain
+    meta-ide-support
+
+You can also run generated qemu images with a command like 'runqemu qemux86-64'.
+
+Other commonly useful commands are:
+ - 'devtool' and 'recipetool' handle common recipe tasks
+ - 'bitbake-layers' handles common layer tasks
+ - 'oe-pkgdata-util' handles common target package tasks
diff --git a/meta-poky/conf/templates/blank/conf-summary.txt b/meta-poky/conf/templates/blank/conf-summary.txt
new file mode 100644
index 00000000000..7528c297947
--- /dev/null
+++ b/meta-poky/conf/templates/blank/conf-summary.txt
@@ -0,0 +1 @@
+This configuration is empty and is intended as a starting point for adding configuration fragments.
diff --git a/meta-poky/conf/templates/blank/local.conf.sample b/meta-poky/conf/templates/blank/local.conf.sample
new file mode 100644
index 00000000000..41eea8506df
--- /dev/null
+++ b/meta-poky/conf/templates/blank/local.conf.sample
@@ -0,0 +1,10 @@
+#
+# This file is intended for local configuration tweaks. It is intentionally
+# set up empty, so that configuration can be constructed from fragments
+# using bitbake-config-build tool and by setting MACHINE and DISTRO here.
+#
+# If you would like to publish this file (for example as a bitbake
+# configuration template), it is recommended to create fragments
+# from changes made here; the only settings that can remain are
+# MACHINE and DISTRO.
+#
-- 
2.39.5


