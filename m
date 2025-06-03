Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32FB7C5B555
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:36:08 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.8965.1748950566873218712
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:36:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bN30gK7q;
 spf=pass (domain: gmail.com, ip: 209.85.128.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-442ea341570so37906345e9.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950565; x=1749555365; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KxvmG0uXJ33Tnc3vW3kleVS757GYyB4r0ST7PQhsCf8=;
        b=bN30gK7qwSMpSZGPe4kSgPwjiCSzKuYZBvaqliU0xfII4E3UanN8Pisr8KY9wv3Mnv
         inUWqbDswbZXubMxvG+gVvvEKfuU1ilL9NPEydDKACPtRna2M6cvvjZDzH2RA9uSmkMN
         tcOWwIiC9EPOv3UCng7g6VK4BveMjstszES+mPZxPMMGc4w90O/pk/e1Anj58QONLOLr
         cbNDVkNlQPtulNS7SlYTiVTLtWeKjN0/QkOlNf6z9fZ+PV1j87e5CAtZ9ZibikSOwFKi
         9KWs9JKpgvPdg9ST8L50NpWl15kZWL8RfJiz1hOWZIfdl3WL4vpKcOHIVLGEMatqaqOi
         RYJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950565; x=1749555365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KxvmG0uXJ33Tnc3vW3kleVS757GYyB4r0ST7PQhsCf8=;
        b=n7npYXCOy0wN71dIhMRCNgwwvvPVKfA+OAmTG51y1kLBy31mH5aPmVstu4zNGEYdPD
         tCqqs9qTIz4jDPnEHo7fz0N0m8NJx/RX0de3EvY9t/mGRLgZY9w7o3MZN57ICrDjKB1k
         D7z5Hy4+DctGtlT9ZOOTEW3OeElvxQJjkkE0QXj7h1On45vZXe/OH02zJrUDgLGUh0IU
         UqcVC4PJR5koXX8GC8t6JHwFHMEVIx537MOI0rgUp4kxviXYWnW4Ygzx68kyKBCkyQBr
         GKQ3TBHOidli3PmfbaEfRuP9+AnVwJrYntuPSD1fFq+4rIbyyBfefidrzSyUdEP/iyJt
         5/tA==
X-Gm-Message-State: AOJu0YzfM05GY1YP82t3HFzua2Q5P97Two6zMnwXvg1jdUL1B35jBhK6
	kpA8kM4zV2Mr53fvSbieUgq3l8QQBIO0igx3ST7pyQwI6/H5Y+raQbzoS0m1ZA==
X-Gm-Gg: ASbGnctRLs0lcj0gFY2xLjoyjKFiLaW+QpDDpBFpmpMi4zvyT1sFMHogqcFbcurThrB
	iVgvkvkAiOVN5g7Atp3nJn+W4+TTNjSjdWHHw5357M6xl8k5erAwWX2/EHtt+lmfqruZjMlkOh9
	Ixe3TLIYP3adY4f6LYqJfn6PjQ67eod3gWUXTbRSlxJGewchRA2qM6SOUPc0XkwXbstkJrG009p
	aI6gZn+nxk/fwG1ZzYFaLEf+t0B4TOohjV0O4vKvAXhXK9gM992aDBmY/X+kYi/1I2dH5i3U/vS
	vtxTFSf4tiY9ZCJhfWzZLwcJNv7uCkrkd87hR986iYc8iI20eFcKG7PabA/LLnMyGJRy+K2cHWd
	cgeW9MZmgEgIs
X-Google-Smtp-Source: AGHT+IGk4U6kdl5kFF1wuHii1qZH5ynNxGBYahy91FrXXsD/zvLb3zzN/t9FURwkCj5mJGjeT7z5Gw==
X-Received: by 2002:a05:6000:4312:b0:3a4:eb80:762d with SMTP id ffacd0b85a97d-3a4f89e248fmr12692383f8f.56.1748950564959;
        Tue, 03 Jun 2025 04:36:04 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-451e58c348asm16707585e9.3.2025.06.03.04.36.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:36:04 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/4] meta/conf/templates: add a blank template
Date: Tue,  3 Jun 2025 13:35:55 +0200
Message-Id: <20250603113558.3104618-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:36:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13634

From: Alexander Kanavin <alex@linutronix.de>

The default oe-core/poky templates have a number of settings
(such as distro and machine) and are thus unsuitable for
building up configurations from fragments. This adds a template
with an empty local.conf, so that it can be used as the starting
point for fragment-driven configuration.

There will also be a blank template in poky; the difference is
that this one includes only oe-core and the poky one
adds poky layers.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 .../conf/templates/blank/bblayers.conf.sample | 10 ++++++++++
 meta/conf/templates/blank/conf-notes.txt      | 19 +++++++++++++++++++
 meta/conf/templates/blank/conf-summary.txt    |  1 +
 meta/conf/templates/blank/local.conf.sample   | 10 ++++++++++
 4 files changed, 40 insertions(+)
 create mode 100644 meta/conf/templates/blank/bblayers.conf.sample
 create mode 100644 meta/conf/templates/blank/conf-notes.txt
 create mode 100644 meta/conf/templates/blank/conf-summary.txt
 create mode 100644 meta/conf/templates/blank/local.conf.sample

diff --git a/meta/conf/templates/blank/bblayers.conf.sample b/meta/conf/templates/blank/bblayers.conf.sample
new file mode 100644
index 00000000000..c985f4f2420
--- /dev/null
+++ b/meta/conf/templates/blank/bblayers.conf.sample
@@ -0,0 +1,10 @@
+# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
+# changes incompatibly
+LCONF_VERSION = "7"
+
+BBPATH = "${TOPDIR}"
+BBFILES ?= ""
+
+BBLAYERS ?= " \
+  ##OEROOT##/meta \
+  "
diff --git a/meta/conf/templates/blank/conf-notes.txt b/meta/conf/templates/blank/conf-notes.txt
new file mode 100644
index 00000000000..cfd1f1977bf
--- /dev/null
+++ b/meta/conf/templates/blank/conf-notes.txt
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
diff --git a/meta/conf/templates/blank/conf-summary.txt b/meta/conf/templates/blank/conf-summary.txt
new file mode 100644
index 00000000000..7528c297947
--- /dev/null
+++ b/meta/conf/templates/blank/conf-summary.txt
@@ -0,0 +1 @@
+This configuration is empty and is intended as a starting point for adding configuration fragments.
diff --git a/meta/conf/templates/blank/local.conf.sample b/meta/conf/templates/blank/local.conf.sample
new file mode 100644
index 00000000000..41eea8506df
--- /dev/null
+++ b/meta/conf/templates/blank/local.conf.sample
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


