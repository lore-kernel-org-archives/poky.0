Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2AABC001DC
	for <webhook@archiver.kernel.org>; Sun, 30 Jul 2023 17:34:11 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.77142.1690738445264859902
 for <poky@lists.yoctoproject.org>;
 Sun, 30 Jul 2023 10:34:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=mJRboFMz;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: alex.kiernan@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-31792ac0fefso1092971f8f.2
        for <poky@lists.yoctoproject.org>; Sun, 30 Jul 2023 10:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690738443; x=1691343243;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eggcCBB7RWBHvmistwTlEJxCg3Ql6sFT/KEH3BgMup8=;
        b=mJRboFMzkWXvJGIiB8rbRgYQc8YZgipCgbi39tuU+Pf1JEA7BvYK2AA4Rnnd0YaaLv
         Rj/ZJBDP5Z2j05EeWW/3yK9fwbr2e0ElOrlarj8iRtDsLuBU3gEzG7b8vr99FYtB6Pr/
         AHqzebOUd0zNVgNzOqcnkCYbfpXsuwIwE89MGjo56mUtGD3UB9aTPKztN/LH6s1hlCs8
         6l/2tuKKgfm81IjkayvXdmn0yY36DtRKEwNs9zpo5HL+zgpVlCAvzUOEvn9EbwK6YuNi
         NOSZVdh5Lk2AjzubnF1Q99zZxb/tZDrz+vAj6f9eyQdNq5wtPQxoHcbicF+MkyftQXEz
         pIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690738443; x=1691343243;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eggcCBB7RWBHvmistwTlEJxCg3Ql6sFT/KEH3BgMup8=;
        b=DJ79ratvVLxPweKQS0e17g+w6sj/0f6CmustO2e14KeDioKQadQTlFyhGv46dvhcYn
         1oMgm+JRei/ErPJ7+Z0ldpB/Pf57IhWRVGA9bwl0RxRdh+LMo3p4UTsN6bHq0PnJs8lt
         mzjmVW+ML23zKIqVL/aVHVjzwJk521s91E5NfzjCCJJiMcEcCav0zmTE+mTBR79YoxsU
         QUsM0xCl2Yj/iYYxrlY1y3/f0VVqdUpgN72P0qiSjarWiYr0zQoTD5YnHhF/GRrWQJCy
         uTkoIqW373I/AiXX4gkCxQKJ1EI2TiuNI3rfqRMEbJ+3poveahRa3w19l6pvSD4tAaun
         o1vg==
X-Gm-Message-State: ABy/qLZ+4BWnC0Cxct8nof707b3k2GTeX77UmAz3UHfd8sCC9YtWES0L
	PjR9aZ7FZaw3FxbQq7tXfBOaQpdzIJw=
X-Google-Smtp-Source: APBJJlH+6rl0CMqjJ7pYGYm6ElcMXnjNTZpYQdCziKrIhyw31Z3iPKq+rOF/hrSy4lmz6i9BLWNwTw==
X-Received: by 2002:a5d:4004:0:b0:317:5a71:9231 with SMTP id n4-20020a5d4004000000b003175a719231mr5430358wrp.51.1690738443037;
        Sun, 30 Jul 2023 10:34:03 -0700 (PDT)
Received: from localhost.localdomain (cust18-dsl93-89-130.idnet.net. [93.89.130.18])
        by smtp.gmail.com with ESMTPSA id s6-20020a5d6a86000000b003143add4396sm10561047wru.22.2023.07.30.10.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 10:34:02 -0700 (PDT)
From: Alex Kiernan <alex.kiernan@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alex Kiernan <alex.kiernan@gmail.com>
Subject: [PATCH] poky/poky-tiny: Explicitly exclude `shadow`
Date: Sun, 30 Jul 2023 18:33:58 +0100
Message-Id: <20230730173358.18270-1-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 30 Jul 2023 17:34:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13107

`login` from busybox has explicit heuristics to handle CONFIG_MULTIUSER
unset (i.e. a kernel without non-root users, groups or capabilities),
bringing in the shadow version of `login` causes obscure failures at
runtime ("setgid: Function not implemented"), instead exclude it here so
anyone who includes it (likely accidentally) will at least get a build
time failure.

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---

 meta-poky/conf/distro/poky-tiny.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index f65d2dabf3af..728d161d59af 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -122,3 +122,7 @@ SKIP_RECIPE[core-image-weston] = "not buildable with poky-tiny"
 
 # Disable python usage in opkg-utils since it won't build with tiny config
 PACKAGECONFIG:remove:pn-opkg-utils = "python"
+
+# If shadow-base is brought into the image, logins will fail because it
+# doesn't have the heuristics to work when CONFIG_MULTIUSER is unset.
+PACKAGE_EXCLUDE:poky-tiny = "shadow-base"
-- 
2.39.0


