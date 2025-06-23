Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E05F9C77B7C
	for <webhook@archiver.kernel.org>; Mon, 23 Jun 2025 16:55:19 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.39.1750697717569893371
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jun 2025 09:55:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DaVh2DNJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-451d7b50815so34871385e9.2
        for <poky@lists.yoctoproject.org>; Mon, 23 Jun 2025 09:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750697716; x=1751302516; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8QNBIDnclFvNxGMkYB6a0eo16szXR4WBVSWq5h9LayA=;
        b=DaVh2DNJABTMI91zaOf1HNUHoMw/Sft4v9DeehmiLDAojQP0F1o0koXyJ2HJQ2dsbc
         O64qe0XAWjNsd7GQ3X1LO97rABQxWuhLR84EO/NfMVfjSSlP5Ak3wsC6PkUHy/SOe1na
         IVNh/0iiaxN1PD9QHjulr6M37TC2LDysDaOrLhl25c+AJVN/k+upJUpuHlSryAFQAuFi
         Hxc8pBTTAWscGVIuYXNBHbxLpMgZVzH6PMWRqu+ryLNEEGsIzuJ3fvLqYr6zEYZ2secZ
         SUi+X8A5wuvSuzKLsyTNkidf1ZUO9xvMktpdP7C5XiPo7siwBfs6i1WTteclhQsZn57X
         ydhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750697716; x=1751302516;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8QNBIDnclFvNxGMkYB6a0eo16szXR4WBVSWq5h9LayA=;
        b=ff9igfzNuqI8TgU9Vo7ZkEEYAy3xqDfB799qe+FvJoKvKxIBpcHxqZiRVZcBe14Nbd
         zH07iWgs1Mj1PorgeOKVz9FImgHvQ+n/kpem7/Q09eskYaybOK7YdnDVK1qfAql3P3gw
         rw6MzisPoz/sEOb8s4e0oFOn7VT6oRrrt9VlDc/aO4SB+uztFhZzbBjLagssi7vnKM9F
         Io0D93z3ooTdlXgrXCKmOScc1A+cDlNp5EELw39iNF37z0QXSPmp6lT3DU28hsAypNMt
         g+7moP7S29dNIf48QBh79uX76jOI3y2gw/Vx7YSj0ApV0WNXye6Kfem6qgAfZnQNqnbT
         dHvw==
X-Gm-Message-State: AOJu0Yx+x1bjcjraPrF5x0p39MIenpBCI7GYriyMz9D+KrZLTKLjqkXR
	AxChFt2i44pSygYCpGA/dsPBNAdI/CUnPCnXxZtjdElGUXo8tPMD9BuDk14xJg==
X-Gm-Gg: ASbGncs1N53uWZv7v9cc5twUO0s3BwvKLKCjd0ZU9xRMeEZBwKF3MAvlFBXo7+d8GHm
	0Ru5gTYXpqlRhOiNbSc+MekD9Y90CGSEr2hy3jmdFqTolq3KG8JuDhfJX8TPYQ4CAxwXwHqiFdj
	dW/ud872eGo+VhXa5iLYFUAonoEY2gyrrz7arFtbdjoLwNkLP1/4TQKFNzAyqY2PcOvKv30z3fe
	FlARdD9ToELb7h62VqfwZp4QNDutmvh9u3eC7SnDCmmfGDUatvWl+NY37+gv6EeG9EFZGd002Oe
	0kvnmLCe3taoUb5ogjAYGwrPODKdLjEZE66lUQ91E2vqX8prfNy8+11IffVKZxgY5+dSTRdvXeD
	GJMcX77/z/9Ds/xTV7CLo3rg=
X-Google-Smtp-Source: AGHT+IF35VxIAXqKzcQ25y1rQ8CNj34YOcJZgIyyiv1Vvg2sK5yXSleWPfrq72q7WQuwfol/nBtLMg==
X-Received: by 2002:a05:600c:4e8a:b0:450:d3b9:4b96 with SMTP id 5b1f17b1804b1-453659c9ca0mr113052375e9.13.1750697715618;
        Mon, 23 Jun 2025 09:55:15 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453647084a5sm116227665e9.38.2025.06.23.09.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 09:55:15 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/2] meta-poky/conf/templates/default/bblayers.conf.sample: do not assume integrated poky repo
Date: Mon, 23 Jun 2025 18:55:06 +0200
Message-Id: <20250623165507.1633860-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 23 Jun 2025 16:55:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13664

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


