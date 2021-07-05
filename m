Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.14467.1625510194431610454
 for <poky@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 11:36:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aBRxenFZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id h2so24703207edt.3
        for <poky@lists.yoctoproject.org>; Mon, 05 Jul 2021 11:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EVltZaK9hMbpx+8e4c+AbwjUUZqLQH3dRXZ2NrLj5Uc=;
        b=aBRxenFZHgsBVjxwFTngBJUititPHSK0+Mp/oP3VwAkiV9gClt5kz1HM9BkqFXbUon
         MfeRqqH73GpXtzDvrMhha0sQwon/smNxVp0ToeoWmX7EbVRFuWa6sCCOXbNKw0GuWrCa
         5BLWRUTrupdEMxahZM5aeE8pH3fLfntD4myD7i3dv70lrHsfJJdEGVzKnU4dAVA3eWxQ
         k6DzmSM7Ny3XKYUhVWLuq+YbD8wj2Ye5gIJJjFBpU6X3nkyM1+iIcGp+sDMVX6N38eIc
         yEcKsSZHk33AbYHsqYgHX8lBbI273S9roIMlh3Ns1tz/Jk0oUDrjiLxiyzLLpK/kEDuu
         Te+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EVltZaK9hMbpx+8e4c+AbwjUUZqLQH3dRXZ2NrLj5Uc=;
        b=g+LKaqxhXBUrC9dQw1Y9Z/9vE4vCa1uYhMj4EvD8G0T6ZYZZo6W3iWff271kNFULXQ
         ipDQmPTMhNaSyW9My086QcBO9jhfBvhmCJK4NmFQs18iGGkj80UMpSDgfCtT9jBLXaF0
         GD3P9cktdSdBpreyg/UEyvUK6pBJpP9Tgx8QwOZx7X3TIkluGwj3GlYMefGp5U5Mk9Yw
         7FsA5ZN/mHwGT7bVulTAMsTvOJuqCjgZKFDX6W1KbDFnJfM8he6cnuRAl+7x1Eu2bAHw
         sscEqSV6u8kyVCbGemxTwrOzckFbwu2oCladGe0+m1IMfdvzaZYIAZq1gNWLYPQcvF5s
         fHpg==
X-Gm-Message-State: AOAM5324u6cJHEDfdBiY3nsP+xPtyuulD1jHatk/su1L5s5cPk9b5/Vb
	JswVQL8VmrbdIE+aNe5Mc5l+jY4t5G1enQ==
X-Google-Smtp-Source: ABdhPJxW/p2TYOLmF4C1ghGtcDYMCQxdCeRis9f5ZrwMvCX4QUAR+D8xgxdgQVQBQDoBvn1yfYh8jg==
X-Received: by 2002:a05:6402:1118:: with SMTP id u24mr1452763edv.229.1625510192812;
        Mon, 05 Jul 2021 11:36:32 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id h17sm680080edz.69.2021.07.05.11.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jul 2021 11:36:32 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] local.conf.sample: disable prelink
Date: Mon,  5 Jul 2021 20:36:27 +0200
Message-Id: <20210705183627.72790-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recent tests have not shown any improvement over not prelinking,
and without a regression test it is very hard to say when and how
this happened.[0]

There's also a concern that no one is maintaining the code, and there
are open bugs (including serious ones such as [1]). Given that prelink
does intricate address arithmetic and rewriting of binaries the best
option is to disable the feature.

[0] https://lists.yoctoproject.org/g/poky/message/12467
[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index fb14379d28..1794126672 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -148,8 +148,7 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
 # enable extra features. Some available options which can be included in this variable
 # are:
 #   - 'buildstats' collect build statistics
-#   - 'image-prelink' in order to prelink the filesystem image
-USER_CLASSES ?= "buildstats image-prelink"
+USER_CLASSES ?= "buildstats"
 
 #
 # Runtime testing of images
-- 
2.31.1

