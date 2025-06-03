Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C728C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 11:35:48 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.8952.1748950541486186679
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 04:35:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EnWvkLs7;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-451e2f0d9c2so8534985e9.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748950540; x=1749555340; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8QNBIDnclFvNxGMkYB6a0eo16szXR4WBVSWq5h9LayA=;
        b=EnWvkLs75eq5+gY2y3hN7yi3aRDaLQARxks9lm8Ek0T7YSW5YiUMXsBJbehGexlBma
         Hbq/xkyAczmBKJ4ciHZ53i6w8ieBDzkVVjGpNtib/qCfkwnOBobKalIxJa0wU8R6uQBJ
         a0427enwt8FT76n3nYw0fGVXNhCyaRkkXRfKVtt6pK3hkES6OhmQjpx455/+113/4UlF
         6JZg4ZSNWf4aDwkpWLNYfl8JiOISzuPm8wjsZPuflgAnumAEBtiQqWUNA01qdOXL9a3u
         Djupj/0lXtfL0EetXhgZZPzOwkf1APHQm4uDEBHH2i/E+5lhng2xF9lXl6M82FcitY76
         QobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748950540; x=1749555340;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8QNBIDnclFvNxGMkYB6a0eo16szXR4WBVSWq5h9LayA=;
        b=vB4w8YP5gA7om46tJjg01Hn9wD//faJdGgCWe4HyEQHHfqheyIbEEVN/A6dGHcLafH
         DLxOW9Khsl204KJYB3ocgpilFHgz0uVyfZcesAjNDEeDZaZpJ8JkNuBbePY7CEFA7L7+
         iFbt2Zf6vq/c/u82AvzNJwDOYYfJiic7yHM+PXTeCDFAl2fU6c++vetifGLYl+UlGmjN
         mJ9m/HroFJP/Ee2w9yTLgKrerOkM5LZpkifkVSs3ePFvC96l3D+oPGxfGi+/K42Rrkzc
         gH8RV6w+JwfU9YkE08HUbEh4P8fMrX7dTNuf32M8qa2O5WN7EV0ZX2fHHYwWunjrhDJ9
         JG7g==
X-Gm-Message-State: AOJu0YyslgQ2kybqPNDoySPaFWyJXuiHEsJZts8fumcYwssilUbSoy19
	49xJzeXxPUCtW7LAVB0/u2YyuDclCbfOt54paPKkpl5+BbaP0sfD2EarN4wxWw==
X-Gm-Gg: ASbGncsLs68IcsGl/i1QhX2fOSiM/kOkaLwX53BtiAsr1xGmm7hN5FnOsOPUBSi6Dc/
	Eyk8VRs6lcayrwH3BdlqDVdyXWrG4bkRpNdwMZhVicwtmZE99HSeSNPkg+5etdcl5uNFkemN54/
	/NZHoV7mneWsQ2tMvQypMH29OffGc8iDQDsJjkUh+2RZoxjVFiF0GYw5l2dhqY8evcNyFI3VCa4
	W7Inqq9kaoEexEIKDKkYYhDuotADKuFa3THo3R0sT/puHmBI36jn6Nw6PqtR6o8zqQi/IzSiZKD
	STRhxUGAXMTCC7yksle6zTkVtg+xa8W4Ncka9RwUKfd4EGpSLKteQLPWfAVbFb8XsJLFc0zATqJ
	ze4A2HGj8u3bM
X-Google-Smtp-Source: AGHT+IHZe/hTDRAeD0QRKSCQq130xV/5bXi2ybXNMpueMsuuqy7L62ycxP3AK6gI54dWNtsqNaBeyg==
X-Received: by 2002:a05:600c:1e0d:b0:451:e260:353d with SMTP id 5b1f17b1804b1-451e65ab8d5mr21367275e9.8.1748950539425;
        Tue, 03 Jun 2025 04:35:39 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d8000e3esm157818315e9.22.2025.06.03.04.35.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 04:35:39 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/3] meta-poky/conf/templates/default/bblayers.conf.sample: do not assume integrated poky repo
Date: Tue,  3 Jun 2025 13:35:32 +0200
Message-Id: <20250603113534.3103020-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Jun 2025 11:35:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13631

From: Alexander Kanavin <alex@linutronix.de>

The list of layers was written assuming the template is used with
the 'integrated' poky checkout, where content of meta-yocto is
'overlaid' on content of openembedded-core, and the layers are
all in the same top level poky repository directory.

This doesn't work when oe-core and meta-yocto are cloned separately,
where relative path that starts from oe-core would have to go one
level above oe-core and then go into meta-yocto, assuming the
separate repo clones are in the same top level directory.

This requires a custom tweak to bblayers.conf when it makes its way from
meta-yocto into poky that would strip the ../meta-yocto/ part in
BBLAYERS. As there are already numerous other tweaks of similar
nature, I think this is feasible.

This was prompted by
https://lists.openembedded.org/g/openembedded-architecture/topic/layer_layout_poky_vs/111010762

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/bblayers.conf.sample | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/templates/default/bblayers.conf.sample b/meta-poky/conf/templates/default/bblayers.conf.sample
index 8b1cbdfc5c4..d34b552cb71 100644
--- a/meta-poky/conf/templates/default/bblayers.conf.sample
+++ b/meta-poky/conf/templates/default/bblayers.conf.sample
@@ -7,6 +7,6 @@ BBFILES ?= ""
 
 BBLAYERS ?= " \
   ##OEROOT##/meta \
-  ##OEROOT##/meta-poky \
-  ##OEROOT##/meta-yocto-bsp \
+  ##OEROOT##/../meta-yocto/meta-poky \
+  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
   "
-- 
2.39.5


