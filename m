Return-Path: <simon.eu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 527FEC02183
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 08:06:57 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.16265.1736928416654649827
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 00:06:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SPdc+w8n;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: simon.eu@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-437a92d7b96so15934025e9.2
        for <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 00:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736928415; x=1737533215; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gMzY7CbB70ozUg9vYlTRPMiTK2yspWkYCX0iHhZBMMw=;
        b=SPdc+w8naQ3aICxJIbewC4B5fpcQrZtC4cFTAiQn8bmZhMQrPzpJpTrsdNsC+/4zLL
         v6M08hR+Pop8dtKOMYgWDrG7Tz1TM1R7piEAQNWcNBtZoAqQI38GcJVHphUmwA8tNYm2
         UhNL/au/1KcTvt6IPmyjIhBVf/H8PwRQkL6Ck8p4Olna+Wld55yfSa/vBRPF+mkv6CZ/
         0W/QcLYY2ciLwH7TfzJOdyDyWWp272DR2cNZOSpRE270yX/njwx8bMV56ztrRoOr5J/+
         2j7x6jM60ilKs++9kgcBcQo6nf9DeUV7wf1rOPlasYJsTzPkOe2Oi8kmdfqizxvyPioN
         8qAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736928415; x=1737533215;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gMzY7CbB70ozUg9vYlTRPMiTK2yspWkYCX0iHhZBMMw=;
        b=BlVkwvhf68t1ByoY9B8PW936nbo6lIffYFWqUrqqv2iAo4UR3YjRdgaNyRvbrqIWeV
         ehuIQ9T19TD75s7XXLxowCu1JQFPiQAijKEjgts+65Zk2ioZCGlyN27CJFPgGAKlVpkM
         oCSzyXqHi4uVZtjG7cHF2mAPmbn6TjpQowfZq4Un9VEos5rN4veplZXAHtHsG6lHxRJU
         X4yVlmDnzPJxnsRT+xgYHqyYnWGPswA1P2gnZnGfFZwMACtQNLVN3UbWuKDKtBmARpTq
         FjufU4RPW/mK7794t2SYl/NvZmmRXAn7+NQFLhKk4qfAIlxwgyu+JUka+mus9Lrk5t/V
         6iEg==
X-Gm-Message-State: AOJu0YzIq/WR9BR/Ha2LBuQjacnlbxOd8nB42XpNs1hIZdkiKvVB793W
	eyNI1PdMYtPum0Eojqi91QfOYJnmuNcvPIXCeKTeVZvu9zhHMoaQ3FO0tw==
X-Gm-Gg: ASbGncubcpG/gDOGdyzYosTx0YzJRul0ExFFxMW2XXE60KRW8Mft/ImXVY7TcCYPyIj
	DtRWvIYD37affYjITHKNx7ISRqq7hsgUd+DfbE4N46QKkgzHgMEhmrmkbl03PiBX2J2AUKlek98
	D7Q5RbftC/G9A/ni5FoGWhq14dTyoa6D/CjjDe+lWiDsUUPtSf77gyeCDZtFhpuko3e6Ighynm5
	73qlRUAhr27qwibvypbydgjS2Xq6tYFcEOnsqb+JfbeeTxjXVHOkNXSBPSy
X-Google-Smtp-Source: AGHT+IHgYvREZmG2NbdZ411otpfqpxG+ENBTZAwwLYR28J5HA4gfoKL/9Ki3go1Ey3Rci6YpZAEBmQ==
X-Received: by 2002:a05:600c:1e09:b0:436:e751:e445 with SMTP id 5b1f17b1804b1-436e751e61fmr265824775e9.5.1736928414425;
        Wed, 15 Jan 2025 00:06:54 -0800 (PST)
Received: from simon-T14-4TB.. ([46.140.188.244])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-437c73e7140sm14606245e9.0.2025.01.15.00.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 00:06:53 -0800 (PST)
From: "Simon A. Eugster" <simon.eu@gmail.com>
To: poky@lists.yoctoproject.org
Cc: "Simon A. Eugster" <simon.eu@gmail.com>
Subject: [PATCH] grub-efi-cfg: Add GRUB_TITLE for custom GRUB titles
Date: Wed, 15 Jan 2025 09:06:42 +0100
Message-ID: <20250115080642.26598-1-simon.eu@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 08:06:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13508

Until now, the default title of a boot entry is its label. The label is
a variable which determines the script to run during an early boot stage
and is not necessarily human readable.

This patch allows to provide a human-readable title for each boot entry.
---
 meta/classes-recipe/grub-efi-cfg.bbclass    | 8 +++++++-
 meta/recipes-bsp/grub/grub-bootconf_1.00.bb | 2 +-
 2 files changed, 8 insertions(+), 2 deletions(-)

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


