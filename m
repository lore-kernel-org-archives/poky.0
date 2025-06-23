Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E16EAC7EE2A
	for <webhook@archiver.kernel.org>; Mon, 23 Jun 2025 16:55:19 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.40.1750697718261043601
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jun 2025 09:55:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Zk6EChFi;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-451d41e1ad1so30775215e9.1
        for <poky@lists.yoctoproject.org>; Mon, 23 Jun 2025 09:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750697717; x=1751302517; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PhqiKetVoub6/ZWkLroD9f6MHBI+j90NGh52XHCgz/s=;
        b=Zk6EChFiVflTALhndh57tS/rtDcCSVrcbYs5xzQQ5as0JY3fo1dKQBICZ3sRCYttR9
         uMM1MH2VQqW5tSATJppNJwWmZD45r1xu9T4fBMMCPbqyDX4uwfiK+Tng/e7aWMVuOjTF
         0wvnkpkWE0S5G4x11Awx9+YZOM4mHd9Zwb3lBZ+EXnV3Qggq5pcKNF2QvDbNWgUQQbeG
         iOPbifUUNxeCSXjcPpwvLEbfCJbNI/2AV35fi4RSF70x9GTcTHA+vLtke8SBBwrx8owO
         mGM4fS4/FtAzpUgpwAf76bUrn1dClpbLNeAnBG8IZCvtOfPIeup6QL5SVNoxcM9R7NgG
         pb7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750697717; x=1751302517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PhqiKetVoub6/ZWkLroD9f6MHBI+j90NGh52XHCgz/s=;
        b=d/KNP4h5H8PVicnxyB3764bddzDFFDtsdjdQ8Pl+3pqesUiXAoN0HAtDcDViMpeiPP
         kSJqUZTdGMOkcIT3YIzbLsXr32BtpyrDneV6ofVvrUfvAjqQiAlT4zIFXZSDZVfcNLEI
         kKE+zmkLD/+BNTIFrW5YuhQeXaEHTeMVC2YEhcOuNBQoUwSbO203lwb0LOmbr3cYerVH
         yp5yALaBIz8dP2jHRIdtKZgImhKweAj8ii7A42CYZMJdAIvSUG+pl1cX0819m24mhpj7
         /XcaMaFBZLsiWSiT4/oAkwvN1qWxPgaXEDZycIz52YFjeoGNl7Kq1BlFcJ5O82e6eqcR
         Me5g==
X-Gm-Message-State: AOJu0YyrIIyJfWgnZlO5p8yfh4F2mDT0EXn0MaaXsL72VnWW1+tHdOB+
	keZoPbJrn2eygisawa5AOz6v3sD2VPYLPnmFFMi2xvK96pq0zwSieWRVRG8f1w==
X-Gm-Gg: ASbGncsl5bub9SMHF/0YPn+CmXMAWgIVFi5NgMu7iFqap5RUHtiOOS48s5Ow5Uk27An
	lhxoiQMO5Kzokt497JCFzlcd/5cFJFVD+IENLWfhaK9eXZjRL3ImePvfs0Y5ayj0jxN+/3VRZ2z
	UyY+zgAehSnGt8TB7Iae8dhn1gSzRV8QpHw09XxAw42tOKNUb5mPuirkqcUm1IiL7otbrBL6sk2
	eUE1Yk+9C+O3njn5YxK0dI4ndsr5GxmyXc1b4XybfKBAw0vYtEowmb5NjwKQH/HnI1au5zvUTOx
	aICQBZiPKgf7op9R/3tFnHQ6E+giHucVrLrKJEQwpsLeH8LvzXdpqMC41o40Pj/pikoFUb46Kkf
	LR3gpgmdNf7Xm+SFPjyXbwRM=
X-Google-Smtp-Source: AGHT+IForbP4GgUD/8kwe2c9V7R4M4O8XbqmGbeGoLmhvtdRKCPXUwXYWomH8ObbRcXe7eAYSLsCGA==
X-Received: by 2002:a05:600c:1910:b0:442:f482:c432 with SMTP id 5b1f17b1804b1-453654c931amr131586445e9.18.1750697716253;
        Mon, 23 Jun 2025 09:55:16 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453647084a5sm116227665e9.38.2025.06.23.09.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 09:55:15 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/2] meta-poky/conf/templates: add a blank template
Date: Mon, 23 Jun 2025 18:55:07 +0200
Message-Id: <20250623165507.1633860-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623165507.1633860-1-alex.kanavin@gmail.com>
References: <20250623165507.1633860-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 23 Jun 2025 16:55:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13665

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


