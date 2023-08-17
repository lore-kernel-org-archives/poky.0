Return-Path: <jtilahun@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2503FC2FC14
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 04:54:57 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.180058.1692248095138787882
 for <poky@lists.yoctoproject.org>;
 Wed, 16 Aug 2023 21:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@astranis.com header.s=google header.b=Hb/04HZw;
 spf=pass (domain: astranis.com, ip: 209.85.214.175, mailfrom: jtilahun@astranis.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1bcad794ad4so49216945ad.3
        for <poky@lists.yoctoproject.org>; Wed, 16 Aug 2023 21:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=astranis.com; s=google; t=1692248094; x=1692852894;
        h=mime-version:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HKYzx+QS0iWlLnkXS02SgeowZyQwPPMvDBsUvMT1UKY=;
        b=Hb/04HZwR09ObLp833ZZbNQV1w/BRYD10VB6E686g8XQyQdtNaJ4z2BY2CZiE4enRa
         DnmEprT5a5u9W+a914cfWOnGiXdiftiktWK9KtdXX5Q/Rxy4/F/qvdTAN/Pr6g6Uq5aP
         7UAuAEjmRLszAUyu0BOFuVEYJE7ALnaiSumqWuQdx685zQrRUFe/DzeR24oMPJw060Go
         QzDWTmm+w2kMJl42d6c4f3WiUZ9KXmqCUnnXSrxcNDAze5KF/Tkyt6RI39EFmJOK/PcU
         zrUbR2uC3qeSOov5mzRIhFQmDpIJGNKtwLn77TIyPNmgOiM11RhLQsg8eISv6RO/v6oN
         xCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692248094; x=1692852894;
        h=mime-version:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HKYzx+QS0iWlLnkXS02SgeowZyQwPPMvDBsUvMT1UKY=;
        b=fWbDPUtPg/DqfGNDoJuFO7K4NTJB+CtOWB2mzYZGRwYDc7m4cW4mauc4ptd2Q/O5c9
         8ZQqGHV8MVr6QNQw0PTkj+vS8DCnWe3NWe7IBSQJ/EzSnjGWglIeMB4k+ksEBAxusXdC
         kP6D9XA/NPc6SH9jL+vOS2qGrk74wR86Y5fPAF3iHWsDeBzxM2FeQHAxNe8093WXyS1y
         G/FdrDd7Yn8lxGJLW74Lcm5Bb+owUUdkXHUv+INPJ0a09Gl6FsU0hAxBUa1+qBGu0Oun
         Q6Yq/LYGBaPIEP+cxDV03SpPyXHI5oDK3gXMej8TzwC9RfveP0vAz9dSVa5u32YKZmGd
         YpSA==
X-Gm-Message-State: AOJu0YzChC7OLo3Llitp4QXYUS25Nmm8Tt/npG2jHhqJLgok/BvT9F82
	oa6uizvzFjGusHR/Cv6JwML4ObL6dkjHmRnJu85xqdcM7WCFfw1Kl15fH/VXvnCrvsXPBclZ/dj
	YHWAnqXU33soII87RowuPhKC9ayZ872u067jw65OgpfgWt1lDjj4aRpA8u+dwy2la7WpNq+uwuk
	reF+CBZmcFDRQ=
X-Google-Smtp-Source: AGHT+IEeip0MEva03yihySB4VmAQM43YRS+tgpjAIXLeLJO7RLxevyIRnXwNMXJbB+9Hf1WT9XqnKA==
X-Received: by 2002:a17:902:ef8d:b0:1b9:dea2:800f with SMTP id iz13-20020a170902ef8d00b001b9dea2800fmr3584709plb.8.1692248094154;
        Wed, 16 Aug 2023 21:54:54 -0700 (PDT)
Received: from JTN86G3.attlocal.net ([2600:1700:43b0:1fc0:8c29:b286:89a3:8069])
        by smtp.gmail.com with ESMTPSA id e10-20020a170902b78a00b001bd41b70b60sm14034381pls.45.2023.08.16.21.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Aug 2023 21:54:53 -0700 (PDT)
From: jtilahun@astranis.com
To: poky@lists.yoctoproject.org
Cc: Joseph Tilahun <jtilahun@astranis.com>
Subject: [PATCH] scripts: use the monotonic clock to compute time elapsed
Date: Wed, 16 Aug 2023 21:54:33 -0700
Message-Id: <20230817045433.495995-1-jtilahun@astranis.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 04:54:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13128

From: Joseph Tilahun <jtilahun@astranis.com>

The monotonic clock is preferable over the system clock when
computing the time elapsed.

Signed-off-by: Joseph Tilahun <jtilahun@astranis.com>
---
 scripts/oe-pkgdata-browser | 4 ++--
 scripts/runqemu            | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/oe-pkgdata-browser b/scripts/oe-pkgdata-browser
index c152c82b25..727803ba93 100755
--- a/scripts/oe-pkgdata-browser
+++ b/scripts/oe-pkgdata-browser
@@ -29,10 +29,10 @@ FileColumns = enum.IntEnum("FileColumns", {"Filename": 0, "Size": 1})
 import time
 def timeit(f):
     def timed(*args, **kw):
-        ts = time.time()
+        ts = time.monotonic()
         print ("func:%r calling" % f.__name__)
         result = f(*args, **kw)
-        te = time.time()
+        te = time.monotonic()
         print ('func:%r args:[%r, %r] took: %2.4f sec' % \
           (f.__name__, args, kw, te-ts))
         return result
diff --git a/scripts/runqemu b/scripts/runqemu
index 0e105a918b..d3c0b3fc38 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -1252,9 +1252,9 @@ to your build configuration.
         if self.snapshot and tmpfsdir:
             newrootfs = os.path.join(tmpfsdir, os.path.basename(self.rootfs)) + "." + str(os.getpid())
             logger.info("Copying rootfs to %s" % newrootfs)
-            copy_start = time.time()
+            copy_start = time.monotonic()
             shutil.copyfile(self.rootfs, newrootfs)
-            logger.info("Copy done in %s seconds" % (time.time() - copy_start))
+            logger.info("Copy done in %s seconds" % (time.monotonic() - copy_start))
             self.rootfs = newrootfs
             # Don't need a second copy now!
             self.snapshot = False
-- 
2.25.1


-- 


________
This email and any attachments may contain Astranis confidential 
and/or proprietary information governed by a non-disclosure agreement, and 
are intended solely for the individual or entity specified by the message.

