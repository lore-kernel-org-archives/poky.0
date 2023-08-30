Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C2D4C6FA8F
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 14:16:13 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.14934.1693404964327181246
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 07:16:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=MhBRjeJ1;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9a1de3417acso207946166b.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 07:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693404963; x=1694009763; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=evs+TjeImYiBkSef5ZLvCqtFCo9WoCxxFbqHEzLrA/Y=;
        b=MhBRjeJ1+YEq+0Z7yoa6nnFn1irmAL9/9YnfmQ6FNyUpobu8hhjGNd4Xr/olMf07LJ
         3xgYRmEf/duNj+lIfN8E3b2+9nrSju+5B0Pv7QPQ9cIfAETOicy80kv+avACTLSuJcAz
         ECumt14B4a0KU9aUKUTnyw3hRkfYbl7n+WbJ3Mcn51pqlVJDcWAd3C3YXsb4ActD6eRq
         Fng48ImsPE1GGNiZlLRnk+NXQmII+frr3fo7GVInDpSQzEQgEKilXzqvc4LABy6NbmnK
         hal1QqT+J19+xRQEKYHbRacdrjaSSYi6ULYFL1PLiUlotSJ0xpaLeYlxxIToX9hDkN7N
         6Arg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693404963; x=1694009763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=evs+TjeImYiBkSef5ZLvCqtFCo9WoCxxFbqHEzLrA/Y=;
        b=OpWTb5vrsf2geXnXjWVpGRt8SXRUmovQdn4VjXx7ZqmmS73AyKVUSQVCwAKZ0ilYxd
         dVdYiBmr87rRUd4E6DvcpbMEnochS7tk+Rlenhqj2GlNI21oyeebBJabMzCr2i6lk6w2
         Ztj0sxgzNbZkDkai3gJkY2Vs25dz+AUXDaLqOzQhjlK9t8sfCtipm4hNSXwvNenWQ3FR
         GiEW7L9b5u2Fb8UHLpgdcQfr+hHhE85Lc+iWqaFLNXvu1TWb9j75a+p55ejXMU5gXDtg
         b6fubUAw11QejaxyMNju8iYcrn6hkmDPmCjjfiRqDrZ3ffBNQYhevjrvqTtmZiVE50ey
         J3kw==
X-Gm-Message-State: AOJu0YxjG1Om4w3ZWJpGHKkeHAzm0K5fd7jJHcPVdswgrr0XsCgckECn
	tBQr0/KQX2Nc0WD6C3A61coRbe0ytx8=
X-Google-Smtp-Source: AGHT+IGFlXR18VMuSZZAo46mp3iEpIj4NBZs2Pq2sLjmk4LMrfZ12v36pvMvLqD7R11VDbUoeURU5g==
X-Received: by 2002:a17:907:2c6a:b0:9a5:f038:a4c1 with SMTP id ib10-20020a1709072c6a00b009a5f038a4c1mr1482060ejc.26.1693404962275;
        Wed, 30 Aug 2023 07:16:02 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id q4-20020a170906144400b00992f81122e1sm7233742ejc.21.2023.08.30.07.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 07:16:01 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/2] meta/conf/templates/default/conf-notes.txt: remove
Date: Wed, 30 Aug 2023 16:15:54 +0200
Message-Id: <20230830141555.656242-1-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 14:16:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13136

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


