Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2562EDE9A8
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 11:25:17 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.9518.1694690715463464682
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 04:25:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=k0OvNtVV;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-9a9f139cd94so117995566b.2
        for <poky@lists.yoctoproject.org>; Thu, 14 Sep 2023 04:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694690714; x=1695295514; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=evs+TjeImYiBkSef5ZLvCqtFCo9WoCxxFbqHEzLrA/Y=;
        b=k0OvNtVVz+NRLrrDUYRFEmPSvOPHuU1mpBOJqe9FAWAvbyuo/3tu0TM6Ppyq0A6xuV
         Mp1k+CW2IEFtg+s4tSXYkALVhYqAml3Mt37GI79BiG8Vf36sjb+TNZgpVOw0yZ0wXhUy
         wp3aZw1HcV3Xn6mvSPuKGPXveRr2uRM6Y/Jg5u766nfxTf9VZYoZfrHSb9pycCtkDBDD
         zbx6vS4VY2U75RuHL/Z49dPHOl0N7HmYOHWslztGfOmsepYYn1OLuKlocJzZSV5rY8Hp
         2tGqjcdX+Y3sI/8n27lGP0cYdnwB8LYCPAvh4lTruFnnl6nFLupzuSfrq9RrR2XPbm8+
         AFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694690714; x=1695295514;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=evs+TjeImYiBkSef5ZLvCqtFCo9WoCxxFbqHEzLrA/Y=;
        b=mfqeJFjvEEYVa80Dj6ZpIfqgmOwxSj8O1T6o4ls82xAXE4LXRltwCYRVg3avW93n8U
         yM5qsB1A2IuwQFRnCv7D0PV4cfyres/xkh7DTrBQQdLWrrSy6kKexAHtnEr8QFKwXvxQ
         e5JC0o8M9ZzFSqQs4Vp4Q9aQsUtXlNpQ8WyfBP+mApxT7tQkb3csN0h9P0mUKwRd7gPy
         InUUa1wGalhdFlqpp2K7yVQILtOZzqHUKSPFkqAYDEezyCGg6QZLGvNSuwnHEODUQCDN
         ObfslovhRP6c4rZemkjGJeXPiO923O2zYOrAAKNZ77d6paV3mnmwUR1n8QX7Q33Ux/Ji
         JMog==
X-Gm-Message-State: AOJu0YxqBCGvDKA33bZuQ1PV82dBAKM0kfJrlfN8aS/gDdNj7UzAC77v
	cvMMjbnYDQpoH79kDRV7vfc711EiyJQ=
X-Google-Smtp-Source: AGHT+IGPLwuiJ4+X3iTBOhwt9mLiuk2sWP69HnbqNJAh9oREX4XUcpMukHJyLyVnOgDJB9FVryP6ow==
X-Received: by 2002:a17:906:2cf:b0:9a5:cab0:b050 with SMTP id 15-20020a17090602cf00b009a5cab0b050mr4076017ejk.13.1694690713512;
        Thu, 14 Sep 2023 04:25:13 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id y13-20020a170906470d00b0098884f86e41sm858587ejq.123.2023.09.14.04.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 04:25:13 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/2] meta/conf/templates/default/conf-notes.txt: remove
Date: Thu, 14 Sep 2023 13:25:02 +0200
Message-Id: <20230914112503.2214003-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 14 Sep 2023 11:25:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13160

This is present in the poky repository, even though it should
not be:
https://git.yoctoproject.org/poky/tree/meta/conf/templates/default?id=ddf3b3ecd4b1680dc0dedfd4eaebcf3441b14ca7

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta/conf/templates/default/conf-notes.txt | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta/conf/templates/default/conf-notes.txt

diff --git a/meta/conf/templates/default/conf-notes.txt b/meta/conf/templates/default/conf-notes.txt
deleted file mode 100644
index cfd1f1977bf..00000000000
--- a/meta/conf/templates/default/conf-notes.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-
-### Shell environment set up for builds. ###
-
-You can now run 'bitbake <target>'
-
-Common targets are:
-    core-image-minimal
-    core-image-full-cmdline
-    core-image-sato
-    core-image-weston
-    meta-toolchain
-    meta-ide-support
-
-You can also run generated qemu images with a command like 'runqemu qemux86-64'.
-
-Other commonly useful commands are:
- - 'devtool' and 'recipetool' handle common recipe tasks
- - 'bitbake-layers' handles common layer tasks
- - 'oe-pkgdata-util' handles common target package tasks
-- 
2.30.2


