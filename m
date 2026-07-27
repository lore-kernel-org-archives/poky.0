Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500BC53219
	for <webhook@archiver.kernel.org>; Mon, 27 Jul 2026 22:54:39 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.43760.1785192873012887147
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jul 2026 15:54:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=aKvnZcwF;
 spf=pass (domain: smile.fr, ip: 209.85.128.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-496b7622a83so15355015e9.2
        for <poky@lists.yoctoproject.org>; Mon, 27 Jul 2026 15:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1785192871; x=1785797671; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=QYSls/9eDm6psZYUC2vbe0vWn0E5n7TSSpcSjTrf7E8=;
        b=aKvnZcwFsIaJtjn8ftgePw/Yf1v/r6QciwcVc2iUhTrOiwQaIxr7m/3i/VLDkHgRJZ
         Dj+P+E4mAYrqoomRFVNnsGtTQ1dziDlzI76NAYQO7EOLjWKX41Do2pfU40G80C6eXJtK
         kt5I1hL7DSz5ipzadGQpKWMdXHM1doLMA/IAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785192871; x=1785797671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=QYSls/9eDm6psZYUC2vbe0vWn0E5n7TSSpcSjTrf7E8=;
        b=Kq5TwVpv6W7wRMmuigy9gZrIET4X1tVjioVy7sWna7HHh1Jj6e6DfyQwWClW/guaWJ
         mgTZqkv63GYEWs6ENmIZOo21zcLxXCuaPSJXqcCWJs/9KUAXi4grV28UlzRKORaEuvwl
         MDqjDyzMjA7lB1ck5Y+opL/zGXR5dQvuipjX+ef08iHxHIywDzeAxVZ2nmWZrSpPTp4N
         nAN8R/uHdOide2+RVJJO15NriUKSqtiZKPovzn6/ZXwpAdH1CKLyFBoAT2ZVvp9zjmJU
         5bi9pwgJPnzOjkoOGytJFtmkabXwe+hCgY6k5SLCCIeBEnbgnjfACrjbE621NokiX3+5
         1jnw==
X-Gm-Message-State: AOJu0YzhfV4FQxJLXmf+cG+pPrSy1WsTMsTLBhDE1lRCmuxM0Bg01Lin
	HHVeQYnM2xtMbZLu7w/fSx+WboJtWV5jrjlmOFzaS1ISkdBs/ZEdt4QUZ3XG9G0w07wWaAfmwmA
	5hRidAqY=
X-Gm-Gg: AR+sD13SeareQ7SJ2/Fo+8D2GTEn7QoKWPj+NIzjfkOfn+7qMXhHxM+tZ97odVpCxAt
	hlC3fA2sXJ0nG2JJJgo/qib29JaazhLn/P+abRYmNLD/8ersFtzFVDy0TgegBr25oDXT93hkGmB
	Ahb++3s51m0nkmbw+nYbLCRgdKsOLEyHHy6CQOpUlZS7GDU3C7yX4+6n9jHD22Nyjxk9wcddHQT
	ByDmsvhiNJr4U12AFSzZZtMBX21PFg0PAxKIGHB1+mejAAQXzpvujvF/B++1YQsA5iXiwaYWPQQ
	3+jbcUWH7nm+LvhzXm4/kP+ZrE+NlbEULtizOr0izktBQPjJ+TTLlpK66Vn59tEk9Qd5rA8f2qC
	LQHPCU1P0FM3kTAnZQPLG5LBE+1cyQ1G0UwOb1mpGvYrGPQZLkhjeIiVvACXG4JJ7ZFSHXMGOUY
	scW9nCf5bR52vZz+WIJ5Pvfp+7n3F28yviJZsBMJ/O/Mf4RQyRlKoFnJ0cRK+DmkHeUGMDxMOXE
	gbp+Q==
X-Received: by 2002:a05:600c:4704:b0:495:518a:5cbf with SMTP id 5b1f17b1804b1-496b575c1efmr124697115e9.32.1785192871332;
        Mon, 27 Jul 2026 15:54:31 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f864305f5sm51588584f8f.17.2026.07.27.15.54.29
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 15:54:30 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 1/5] README: Add wrynose subject-prefix to git-send-email suggestion
Date: Tue, 28 Jul 2026 00:54:09 +0200
Message-ID: <c8c7e4af53864d32b8462c5fabaf94107c5b62c5.1785190768.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1785190768.git.yoann.congal@smile.fr>
References: <cover.1785190768.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 27 Jul 2026 22:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13950

From: Yoann Congal <yoann.congal@smile.fr>

That might help new users send correct first stable patches.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-yocto-bsp/README.hardware.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.hardware.md
index d2cc05f9..fb7a8ee0 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -41,7 +41,7 @@ for full details on how to submit changes.
 As a quick guide, patches should be sent to <poky@lists.yoctoproject.org>
 The git command to do that would be:
  
-     git send-email -M -1 --to poky@lists.yoctoproject.org
+     git send-email -M -1 --to poky@lists.yoctoproject.org --subject-prefix='wrynose][PATCH'
 
 Send pull requests, patches, comments or questions about meta-yocto-bsp to 
 <poky@lists.yoctoproject.org>.

