Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web08.3858.1627740050817488438
 for <poky@lists.yoctoproject.org>;
 Sat, 31 Jul 2021 07:00:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cDHzgCqm;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id l34-20020a05600c1d22b02902573c214807so5531702wms.2
        for <poky@lists.yoctoproject.org>; Sat, 31 Jul 2021 07:00:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=765FqXMhi/8cVF+oQ9pv/umuAIdT6JUWxTh7Yy1D4RY=;
        b=cDHzgCqmXu+IP4sG2+DhwUVlks1+QnBBEzs85VlO+yfaoBspGk4Tk1Qfoa0rjT70IF
         JobY+00SwHgDoejvVIjSYVjBfZuxSjPzH7gsqp/bji9i5QN8Vf1+8r45xd1rCCaDT6Qh
         PA9b3xaVkRg906FB3nhyHUe0gpCmAYSGJJpyYzqpISKkkHeQw+iA6HJ2DMV7/NaqDliH
         +Rhhte8xH6u2teHVLeESniRcG/TOiHsNHe7Xp6fNcf/5myFHlySee99yf8h23ejfate+
         BPgzwRHxJLTOeo5iaia8TeDsOp5tfNGjxy3zMcfn8gPK5Ogkf2uiVjn3FCKTAG30C2sg
         ufbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=765FqXMhi/8cVF+oQ9pv/umuAIdT6JUWxTh7Yy1D4RY=;
        b=sEwtXv+iuUDiTo65gF7fVad4cF0fK6zIQAWg4fpMfdY9Wua0R8HD4qdgNFUikmDAgO
         9XqXofOjPBBEA3bYtU5QaPm5YQzwmW1Hc5RUmQnxfQJ+lC3roKYJunKKHva0185rw8vN
         FQlvvXFfPBODAFYu0EHRb1TYG5JFAWVcSM2SMOZCjZe1Q4aPFHwxMG9mpIRh/I1PTKUh
         sZG5+8MAb+EOEVgR7nZeJzWGdoxlS4pwIZYM8nNgNmO6Ub9HQFcyDyNby0G0zslesi1v
         fWJoEQ27wYo7gyxyXUVxLrhbfc4xR98c6cm4+KKRrj/NhtmyDJfsA/ZKQZvCXIWdwgqx
         ot1w==
X-Gm-Message-State: AOAM531fDdsNUVUfVVPwLVmsS9o0lPjnNYP/SAcyqYr8voPgHt9z0Vzv
	9CGLtIV0Ywf/ghJoI7psZIZOp4sYVko=
X-Google-Smtp-Source: ABdhPJzpiGdudTvAlyYJJMh48/NjKuOFe6cPBUimhLTTmyYUmgeR1BD+UMQF6Sicql142SMyLjlkOQ==
X-Received: by 2002:a1c:7515:: with SMTP id o21mr8359859wmc.65.1627740049380;
        Sat, 31 Jul 2021 07:00:49 -0700 (PDT)
Return-Path: <alex.kanavin@gmail.com>
Received: from localhost.localdomain ([2a02:2454:2a0:cb00:eb83:2e01:3dda:5d46])
        by smtp.gmail.com with ESMTPSA id v15sm5104587wmj.11.2021.07.31.07.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jul 2021 07:00:48 -0700 (PDT)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] local.conf.sample: disable prelink
Date: Sat, 31 Jul 2021 16:00:44 +0200
Message-Id: <20210731140044.765794-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Recent tests have not shown that prelinking works only when PIE is not
enabled [0], and as PIE is both a desirable security feature, and the only
configuration provided and tested by Yocto, there is simply no sense
in continuing to enable prelink.

There's also a concern that no one is maintaining the code, and there
are open bugs (including serious ones such as [1]). Given that prelink
does intricate address arithmetic and rewriting of binaries the best
option is to disable the feature.

[0]
https://rlbl.me/prelink-1
https://rlbl.me/prelink-2

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=14429

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/local.conf.sample | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index 53766d1a9b..4f5c32af3f 100644
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

