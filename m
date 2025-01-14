Return-Path: <simon.eu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81DE9C02183
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 16:11:36 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.49223.1736871095883267751
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 08:11:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a4FGlkPR;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: simon.eu@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5d647d5df90so9601852a12.2
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2025 08:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736871094; x=1737475894; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Luq0vCQc83tnqnbmGHyb9ak55+BsFY3Df/Vuh0TiNhA=;
        b=a4FGlkPR1XG4USM8u3wmsYiwrOQOrM4RDiwWGqmeOkuz7o1hT4wCNyCWYzrGAjk4yn
         LsUddZZ0EkDdl352TXr6YEOl9T6SlCqvpUWyEBl/04Av4JccHsibo8DP2TqujoSJaelU
         /1CrR7/fr/M3RCuCLbI93b8ShM90Bt3F1suSOFVG9GsUqWWtcXPgQHpzgSYrGmZcn/Y/
         l5KAdDaZoDjuto+zHsNdaik6Bj30+HFv8kFHNYcDyzKgR+0OxsEXhJ/RHF8PSykKXpQS
         ec+1fR/bDChmnd1QFqeFSTZN390RadjL4X4P9IrdGnoGC8HKruY0P5Bl1mYKs3A5kd66
         r0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736871094; x=1737475894;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Luq0vCQc83tnqnbmGHyb9ak55+BsFY3Df/Vuh0TiNhA=;
        b=eTjVKpVWdFGJu9tprs0qzi6ATx18ejdFHiSYp/UhPTK1y52DXTmvfQiNOLVusGJbcf
         66jS/UGvTyElvbo3P1+m9s+GezD4cVyZhApoNdYwWFw8FOcMW6SyJ54Q9ZaD3oIGWpxq
         dCNDhW/zpMQkOPBhsV8YGu/7dvK3PxioGlstjARvjAXsuodv6qTw8GkYpIEmSGl3ISlI
         1f1qXTPax+oKkR3pontM3Y5CX+1ct+hwfavNMLcefBClUPhitwnwUw7G7FuWKhJVTerG
         ljGIJZhNSh+LWLsRXG3GR1DIB6P14OPiP4yBZSV5Sr3vOSA/LLGNX/AUfDJGmesMpZhH
         Ifjg==
X-Gm-Message-State: AOJu0Yy0HLtkItpeTrZijoVpTNV0ExKSMBNI999VXf1VCQpdIav/C/PL
	jfOjdnhtfyeWIfGd3OdZr5W4Dcrf0QKsSzFTJBYp/WugaJVGThVWjlNMqg==
X-Gm-Gg: ASbGncv81RfFBdV4iJ5I2oXcFV2nLQCSaylEjJrvQUs/nTKvk5nQKspkKGPMOTJjoX1
	4ioX1JFu7mZOaVdCMlvJRP+J0U/R4ZqONprK+yEIASX8NhfdYczRBiLbrRE+sRwehpvGHGYMaOP
	eZAXG9rZYbu8ujN4H7SF1/A07eoLFqAD7iTCUEEmVhoIan1KlZyjXLXH9f0UWoMvToz9ctJFVFx
	yU4VS9z025koatIdGg1sOCMVlcVI0oWNIkG9mu6Q0Mtk21HviPt/murly+0RKCSBdcA/i8TYsY7
	HxfNZBPz0LHHGQgbmi+Reg==
X-Google-Smtp-Source: AGHT+IFu+4DsjJEhmq1k2UR8l58bdtWaEeugE/EMGs8wK720vNm/athvQH9LYqVXykLBynKBcSc7yg==
X-Received: by 2002:a05:6402:40d5:b0:5d9:f21e:ff5 with SMTP id 4fb4d7f45d1cf-5d9f21e18a0mr4992133a12.16.1736871093625;
        Tue, 14 Jan 2025 08:11:33 -0800 (PST)
Received: from simon-T14-4TB.. (mob-194-230-161-69.cgn.sunrise.net. [194.230.161.69])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d99046a07bsm6419098a12.65.2025.01.14.08.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 08:11:31 -0800 (PST)
From: "Simon A. Eugster" <simon.eu@gmail.com>
To: poky@lists.yoctoproject.org
Cc: "Simon A. Eugster" <simon.eu@gmail.com>
Subject: [PATCH] grub-efi-cfg: add GRUB_TITLE for custom GRUB titles
Date: Tue, 14 Jan 2025 17:11:13 +0100
Message-ID: <20250114161114.2731934-1-simon.eu@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 14 Jan 2025 16:11:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13506

Until now, the default title of a boot entry is its label. The label is
a variable which determines the script to run during an early boot stage
and is not necessarily human readable.

This patch allows to provide a human-readable title for each boot entry.
---
 documentation/ref-manual/classes.rst        | 17 ++++++++++++++++-
 meta/classes-recipe/grub-efi-cfg.bbclass    |  8 +++++++-
 meta/recipes-bsp/grub/grub-bootconf_1.00.bb |  2 +-
 3 files changed, 24 insertions(+), 3 deletions(-)

diff --git a/documentation/ref-manual/classes.rst b/documentation/ref-manual/classes.rst
index 761be7b545..460f94b232 100644
--- a/documentation/ref-manual/classes.rst
+++ b/documentation/ref-manual/classes.rst
@@ -987,10 +987,14 @@ introspection. This functionality is only enabled if the
 The :ref:`ref-classes-grub-efi` class provides ``grub-efi``-specific functions for
 building bootable images.
 
-This class supports several variables:
+This class supports several variables.
+The label specific override names are ``grub_LABEL``.
+To specificy an override for the label ``mylabel``, the override name is ``grub_mylabel``,
+for example ``APPEND:grub_mylabel = my-appends``.
 
 -  :term:`INITRD`: Indicates list of filesystem images to
    concatenate and use as an initial RAM disk (initrd) (optional).
+   Can be specified for each ``LABEL``.
 
 -  :term:`ROOTFS`: Indicates a filesystem image to include
    as the root filesystem (optional).
@@ -1004,6 +1008,9 @@ This class supports several variables:
 -  :term:`APPEND`: An override list of append strings for
    each ``LABEL``.
 
+-  :term:`GRUB_TITLE`: A custom title for each ```LABEL``.
+   Defaults to ``LABEL`` if it is not defined.
+
 -  :term:`GRUB_OPTS`: Additional options to add to the
    configuration (optional). Options are delimited using semi-colon
    characters (``;``).
@@ -1011,6 +1018,14 @@ This class supports several variables:
 -  :term:`GRUB_TIMEOUT`: Timeout before executing
    the default ``LABEL`` (optional).
 
+For the label ``factory``, a custom GRUB menu entry titled "Factory Install" with the additional parameter ``factory=yes``
+can be achieved as follows::
+
+  LABELS:append = "factory"
+  APPEND:grub_factory = "factory=yes"
+  GRUB_TITLE:grub_factory = "Factory Install"
+
+
 .. _ref-classes-gsettings:
 
 ``gsettings``
diff --git a/meta/classes-recipe/grub-efi-cfg.bbclass b/meta/classes-recipe/grub-efi-cfg.bbclass
index 52e85a3bb0..9a5cb99c52 100644
--- a/meta/classes-recipe/grub-efi-cfg.bbclass
+++ b/meta/classes-recipe/grub-efi-cfg.bbclass
@@ -23,6 +23,7 @@ GRUB_TIMEOUT ?= "10"
 GRUB_OPTS ?= "serial --unit=0 --speed=115200 --word=8 --parity=no --stop=1"
 
 GRUB_ROOT ?= "${ROOT}"
+GRUB_TITLE ?= ""
 APPEND ?= ""
 
 # Uses MACHINE specific KERNEL_IMAGETYPE
@@ -91,10 +92,15 @@ python build_efi_cfg() {
         if not overrides:
             bb.fatal('OVERRIDES not defined')
 
+        localdata.need_overrides()
         localdata.setVar('OVERRIDES', 'grub_' + label + ':' + overrides)
 
         for btype in btypes:
-            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (label, btype[0]))
+            title = localdata.getVar('GRUB_TITLE')
+            if not title or len(title) == 0:
+                title = label
+
+            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (title, btype[0]))
             lb = label
             if label == "install":
                 lb = "install-efi"
diff --git a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
index 783e30bf38..7ed0877726 100644
--- a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
+++ b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
@@ -22,7 +22,7 @@ python do_configure() {
     bb.build.exec_func('build_efi_cfg', d)
 }
 
-do_configure[vardeps] += "APPEND ROOT"
+do_configure[vardeps] += "APPEND ROOT GRUB_TITLE"
 
 do_install() {
 	install -d ${D}${EFI_FILES_PATH}
-- 
2.43.0


