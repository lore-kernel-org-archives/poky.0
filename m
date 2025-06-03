Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D79BC5B555
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:35:48 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.8954.1748950542765416701
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:35:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LFTf1q5f;
 spf=pass (domain: gmail.com, ip: 209.85.221.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3a510432236so1186071f8f.0
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950541; x=1749555341; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PhqiKetVoub6/ZWkLroD9f6MHBI+j90NGh52XHCgz/s=;
        b=LFTf1q5fkSEwnW5tHbP1CRLH7oRMVO1pgs4MWerwCzoG1MFw2IEUX741ECLFIY8eaV
         YlMg8wDwyeKWH2mRjov9W4a4Y/2FuKPaDQ45HhGdnm8Aeu+xkwNokxEZN30GHvIDAE2Q
         sKjJPDihnWfGP5WrYyuGNq4tco5VlxtKkaXwhsAeI6RcU+2ppHQBMc38gMUHau0U+SQl
         9rcYWgHJ5ZbCIu8qPFoY8v7JHfMcnrYL+N8/TgTEnKYQrE2xDDuSQYKVXeN6gY8wLaH+
         asfWj0+lrlGksecUhrWCYhfj2dUGpRghOSR2B3g4tcrssHg1JmWIE5D6Xn4WFy3BbsjG
         R9RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950541; x=1749555341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PhqiKetVoub6/ZWkLroD9f6MHBI+j90NGh52XHCgz/s=;
        b=jM71/54o47+WRFdW6g44kdZQV0xdZwrv0wGXcssvTcF6krjcaITvBpFTdFmWUIfJ+m
         oxfXUl0TB8twVs9agUE8XfebdDWZItc80IS7Jcn0fyQ74B/IoNRrY1UY0lOWXG+yE26L
         tMmBx3v6qF9zlijxfjhIhcfXheORpTSPdu86E5CkV4jwhWfMGGQBld5bvDc8X7yuglC1
         i1IBGN/8eF+YqnffosQiwM0QgMQc2a8GdSZDRbCBRzOlAmpk2ybET2DoBkCEfSdTOLG8
         RtrGqqyy5O8cmvi7BU36eHVT/szC9b+MzAPC2o9RhDIiIGrqfWTPyXx5aIURd4+oyB2R
         6JqQ==
X-Gm-Message-State: AOJu0YxuLwrvb6ZfoAHaiq1RxsqMZVQILlXBwZri7JSlphAGANLbouu4
	nlnQQ0qP/wnNWOKQet3piMgMiJQW7f8HEj02W+MrANF0a4P2l0n2b2kweoitEQ==
X-Gm-Gg: ASbGnctIKnFbcD0KtOnoPr6VuSKeVdlcmL5pFPtogXAoV70I7vidzFEbNxGpvqbJyJo
	BVWmqbQOP/I8Mymtak0Jteyq3LYqAvHBEEq7y1l2LGrP4JQctjsWJYtA+SnSbZX4blq4QXzSRdp
	lkIqdPIXShqY7RrOq1mSQjqo2LYlHzuBxx+tV5KsftuHeoXMUVKk1z50l41p7mLtahgAiyVucdf
	FyRhd7Tf9tJInqdmKjvuBSyHIs5zAsheteooXwqtVNu+Gf7G83lrH0TAsPbfWQxmUICAqNGHM6O
	IPWpecn9jQXTARMfo4CpYtkTXAEhh3iQE3enl0FssWw0nIyXkWAm4yG/8UDXROtfpBsQFy7qtev
	sKob28kyggB10SOW+lAplh3k=
X-Google-Smtp-Source: AGHT+IEwYZL0ltfbJcaJMYeNSW+0w0ph/5Q/X4r/l4nsp3m+YhXmtA4+3Bz7zT3PrXgBEfhc+bOmPQ==
X-Received: by 2002:a05:6000:4023:b0:3a0:b1f7:c1da with SMTP id ffacd0b85a97d-3a4fe3989b2mr9081398f8f.46.1748950540939;
        Tue, 03 Jun 2025 04:35:40 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d8000e3esm157818315e9.22.2025.06.03.04.35.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:35:40 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/3] meta-poky/conf/templates: add a blank template
Date: Tue,  3 Jun 2025 13:35:33 +0200
Message-Id: <20250603113534.3103020-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250603113534.3103020-1-alex.kanavin@gmail.com>
References: <20250603113534.3103020-1-alex.kanavin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:35:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13632

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


