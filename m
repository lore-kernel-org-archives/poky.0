Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC402CD98F1
	for <webhook@archiver.kernel.org>; Tue, 16 Jun 2026 19:16:59 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.5792.1781637414881020590
 for <poky@lists.yoctoproject.org>;
 Tue, 16 Jun 2026 12:16:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=V6B/ryTo;
 spf=pass (domain: gmail.com, ip: 209.85.221.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-45eec22fab7so2231291f8f.3
        for <poky@lists.yoctoproject.org>; Tue, 16 Jun 2026 12:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781637413; x=1782242213; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UYjzQMI7Tc7SUA5GtpZUvKf3I4zASYpSpKDLmPA1sW0=;
        b=V6B/ryToxtbHol3yy7292TLNeDDc7PksmTJDYAfCvmBRzxFVN6AKIjxmPoOac6kbTp
         z+X1sQvWJGNrbsPCIl/AjdCa4eh0VsAfaadv4ho3dkwrV3olaycWkd4Meeth+NOodfeG
         w8MhGu1oUwX3B+PDp9FXzmUgO9BZFLihCMPZusUiqEDIKcVCDjfnZZk3vDhppaHC1QvB
         Ugz4sipgZ8cbkT02hwPaVlY05AcWYadNb/yMtrcAG4dBUq7aTTPEb+YVpSxcJQ7Rw95I
         cPIKz7PqcRwN+4OuMX4gtmek2zJl+fSoIQiwV4XFHGfu8FywfVexjHT2nESaEMFJmjvf
         yDIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781637413; x=1782242213;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYjzQMI7Tc7SUA5GtpZUvKf3I4zASYpSpKDLmPA1sW0=;
        b=bLYYlXIGIz8IMla/d2dJbya6NcCa8sP/y/AMv2zQEzaIyF9jhLInZx/QO6DyXZR9gv
         pplfQLnL/gmf+uHmH2gi6jl/q6UjuBahFUOoqgqFi8QwRVf+3IyIEyq8mKTJpL0NC5kn
         AyM9gtPgvMPe4N/ntoEWSIHjn0GTupws5GXmQdNO5aMZ+1XvtBfdRN3ifGyrqTLQdCZv
         pWlDhEs45k4br8Mguv53hmOk7sx4z+mpBrxcSeWACw3NnmoN0+f5i/BxZ1h565WA2oq/
         WB/LrqI2UPdb+ebuFyl5ZE48g9FeVUD7j2N26YyMfymPvBd0UIelpKXix6EoP2lCFFuu
         6jPg==
X-Gm-Message-State: AOJu0Yw50y4Eee0pgJd1utW79radjD2uCnBp2i5CX9jXKQ1ErdrrstU7
	rYKGknuRbW0t9S5nG+8aksHh2iAkcF99MydI4sP5y85XKn9nDryjzFG1FZsUZCLQ
X-Gm-Gg: Acq92OEtrJxsikLNVhiagiDFMhSmavUu6qd5g8ZT99CJhsoEG6nvonoC6IrCq3B36NH
	5q16UQhwzIhyWs7AyrHWaljF7trGgy+/WvUe8/3lSpK40T3uV4f9OokRpqrU8Nr0VNN6WWRH2pk
	9C/5IR7UvVdchDqVynzaeI8/k0Vi2z87y7RHCpwbozHQFtqHdxSjtbL13fgCibpW5CJuKdzYKJG
	Y/+JmvyhKfozo6B/KvAbNtFYH9ndB7EsC2cttCfBsR6Q6YUJetKwI2af0HiRhHAPRMVZebEHxES
	DKxSmEY6Xe/3F3d0ff9DqA1cBbXnV5nlbc1WO28GAMlSYHqcpzvkLVyECMiQuzwn91qMK1xeuQt
	8iHk9EUthDer+sX2R6Ol5N4DQG7WIzPaZP6dl+5kbz+DjhQbXseaczydp9n1AKjJok6dmw4qN+B
	1PIrVPsbU/28QrjdiMSPvO4HEUxCFNWtBcAnDWMx3s8f+DD2h46vsXU2Z2ZOs=
X-Received: by 2002:a5d:5d88:0:b0:45e:ed7e:f8fd with SMTP id ffacd0b85a97d-46235e98d62mr1334551f8f.2.1781637413046;
        Tue, 16 Jun 2026 12:16:53 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2ce361sm44874349f8f.31.2026.06.16.12.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 12:16:52 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH] beaglebone-yocto: enable thumb
Date: Tue, 16 Jun 2026 21:16:47 +0200
Message-ID: <20260616191647.2014612-1-alex@linutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 16 Jun 2026 19:16:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13925

To the best of my online research all armv7a hardware supports thumb
instructions, and so this machine definition shouldn't set a tune
that doesn't have it. Removing the line falls back to the default
from the .inc file whih is cortexa8thf-neon.

The immediate reason to do it is that latest version of gstreamer
has thumb assembly, and thus fails to build if thumb is not enabled:
https://gitlab.freedesktop.org/gstreamer/gstreamer/-/work_items/5164

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 676e057..b3c15d5 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -8,7 +8,6 @@ MACHINE_EXTRA_RRECOMMENDS = "kernel-modules"
 
 EXTRA_IMAGEDEPENDS += "virtual/bootloader"
 
-DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/arm/armv7a/tune-cortexa8.inc
 
 IMAGE_FSTYPES += "tar.zst wic.zst wic.bmap"
-- 
2.47.3


