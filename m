Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF74BE9D3ED
	for <webhook@archiver.kernel.org>; Wed,  4 Feb 2026 14:46:17 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.21941.1770216373071139605
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Feb 2026 06:46:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S+W73Yt8;
 spf=pass (domain: gmail.com, ip: 209.85.222.174, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8c655e0ee70so733380985a.3
        for <poky@lists.yoctoproject.org>; Wed, 04 Feb 2026 06:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770216371; x=1770821171; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=10WnHYkokd167J4PvEJKLb3LxM3CuWopotyu3PmZ5Jw=;
        b=S+W73Yt8xb7HP4gyH+LmI7lBhVw1xqE5TKP2BB28Ixa4IHZ7dx0O+M/dqN3zX1+JSa
         rSntb8mPCDn1x/lxGvqXnvYjudv6HWVd9oBCrdKmWiT/cBc1aCtgGc1ghAEAzKSZS6Z/
         3OdeqCWmKWKQ3Yh5zTRo5tABcQwQzL0K4cYwKqA9htAfQ+A07IaG9tyLKw3rrNyvbhfG
         5sturYfqqYxyGg3om5dZnL/0zZVeuvCA68WILsz7XwFGENCEuT0PKpadjUbbVnPaDc7G
         Jqnt45D3Pe/Sgka0PewcaAZvAKVbLDK260d7dspJ/5jyKgd/Ed74jLcz+0nO8ZOIQJqE
         N8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770216371; x=1770821171;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10WnHYkokd167J4PvEJKLb3LxM3CuWopotyu3PmZ5Jw=;
        b=VvdqHpT2FTDuhEWCWsfrkuCNGbypMD5iMRnwv8pPISq5+UdBMZzV46kw3lwDzaolYD
         Aeyz87ogdP/JOVPQSJqpN3QI/q3/Ki/Iy4//5xqCh/teaaNNgd6wpYh6f1lF7ZteHJAR
         YPMJAnoPkfcOrLqZK9y8V6672IbfuOESCJGwY1R4dmJkiYfZYhy5eYXNOgp8VO7FhN7T
         aHlb+0IcbSUm9yn1QOSKyrZkP6y2umHZk88Q0HiMOY7CURJE/vUonylTJwWlJpW21dwC
         EHjgUOg1ylG9/fL3HnNw+miMzeyLLk0sCsOaPiCUwOJKRY9chSxyefMjsOOk6WzL7Shk
         9oAw==
X-Gm-Message-State: AOJu0YxdM1h9oG8tQHdEmO60cOvg8J+x9IuZUsrqJZSaI5aCwi8uYsYb
	r/+g/FOMD/OHe61Rji547HQmXYgqGWm40bT29hmBsmwQbe2dc/1Xu36LFU1VHQCF
X-Gm-Gg: AZuq6aIDAnJToZFrZGTx7sSgOCkzg+mMycBkAFV4lkBQyVMafyxJsVrT16hFck5ZXTF
	/YeEjU5cmY3QLNmKMWlLY8g7KFySrSDgbFS4mth9kdNH+NqVqhSk1Vu3xEFA8lcsdZnkA9Fx+Fm
	dbUjvmT6faQzY5xX8VdX4wZWzfUKSnJgTVOLDbaEeUbngY+7gAxHw375sKzwj3I27Fyu8XAiKEO
	cuEoTD6Ek/MI8Kx+ijU+Xlaya6Ru7GQYwT2rGwDBDsXR14YLNNKCYSrGUWXszN7WxsWDdWQSZzK
	5510KQWKbhMvls21WYBlrvngjW1J3vD0JrwXshGXXnQLb+Lo+3rna/IDgzr8JOFfthdy83dkS7+
	z8A0XYn07n9VUAR0yWQDSmlKLoAV+iaYiY0yNldz/hDnw8xVByrXGIclFFAZncML/J9defjOUCj
	W1P2o1bjmd4IsE3G2ry7laDDVjYhPUhX/YcTOGYPZDeupCTivRDDZ5sg==
X-Received: by 2002:a05:620a:280a:b0:8b2:e990:5114 with SMTP id af79cd13be357-8ca2f9b72b1mr369612885a.42.1770216371419;
        Wed, 04 Feb 2026 06:46:11 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ca2fd2d0c6sm192666785a.29.2026.02.04.06.46.09
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 06:46:10 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto-bsp][PATCH] meta-yocto-bsp: oeqa/selftest/systemd_boot: update for standalone wic
Date: Wed,  4 Feb 2026 09:46:00 -0500
Message-ID: <20260204144600.514629-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Feb 2026 14:46:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13835

The systemd_boot.Systemdboot.test_efi_systemdboot_images_can_be_built
oe-selftest invokes the wic utility. If wic is removed from oe-core,
how it is invoked would need to be updated. However, updating how it is
invoked will also succeed even if wic continues to be part of oe-core;
it is simply a more elaborate way to invoke wic which works in either
case.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index 961d4ea31d0c..d727432d311f 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -60,10 +60,12 @@ class Systemdboot(OESelftestTestCase):
         if os.path.isfile(imagebootfile):
             runCmd('rm -f %s' % imagebootfile)
 
-        sysroot = get_bb_var('RECIPE_SYSROOT_NATIVE', 'wic-tools')
-
-        runCmd('wic cp %s:1/EFI/BOOT/bootx64.efi %s -n %s' % (systemdbootimage,
-                                                           imagebootfile, sysroot))
+        oldpath = os.environ['PATH']
+        os.environ['PATH'] = get_bb_var('PATH', 'wic-tools') + ':' + os.environ['PATH']
+        envfile = os.path.join(get_bb_var('STAGING_DIR', image), 'genericx86-64', 'imgdata', image) + '.env'
+        runCmd('wic cp %s:1/EFI/BOOT/bootx64.efi %s --vars %s' % (systemdbootimage,
+                                                                  imagebootfile, envfile))
+        os.environ['PATH'] = oldpath
 
         found = os.path.isfile(imagebootfile)
         self.assertTrue(found, 'bootx64.efi file %s was not copied from image'
-- 
2.51.0


