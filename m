Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B175C4451C
	for <webhook@archiver.kernel.org>; Fri, 17 Jul 2026 15:57:44 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.341.1784303858208290750
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jul 2026 08:57:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=mE0gybwe;
 spf=pass (domain: gmail.com, ip: 209.85.221.173, mailfrom: twoerner@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-5bf83925ddaso2317950e0c.1
        for <poky@lists.yoctoproject.org>; Fri, 17 Jul 2026 08:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784303857; x=1784908657; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ZhMAOkaRZtBPtrKCIoLMdNB7buXAdqinGwR7Ar8zDSo=;
        b=mE0gybwegjfZJCgOE8Qkq8ZLU2O0B+FC/JZ6J8dgsuhmAIiuV2N7wfx49Ly8lzilNY
         7QCmHpHEdEzwoiv2NT4NMWzbcTZ60Vp4ANYz5ANifH40B2gD9ZuNTokEsvIZmpv4bOof
         rNzjjdy4S47HWIO69If0r46BL5zNkasjQwbJvSau2eoOfiTvSDGkdFoq0BtxvZdh2MVI
         W/ppncQyLG4KawOchzmegMxKd9RCx/E3DuRlwCVbtMqxvDoEGJsTnwIOv9lEN6MhSZB8
         mvrToGFh6bbPffotY3Po9OXDAqqt56vQT0OkM5n1qyT+WIGkGXMCV8MIsC17w6tp+sdV
         5mLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784303857; x=1784908657;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ZhMAOkaRZtBPtrKCIoLMdNB7buXAdqinGwR7Ar8zDSo=;
        b=g1WuttSTSRR3QTyPGu91HtKrwTTYOWEBgFs3OQ8iGiwmLSamFObaW5PtvU9Y7juJzH
         nh8aL9sG39PdZ3Q1kfsYsA160ZX4lIHSJuCxrjFVt2c/lK4vgoPY5SMKJ6kqltVC8JPZ
         7NG/g2q9OYZaK2ErXfHy+wntT2xfh8r0DyhvxCYVLU6Mcsid0c71QGmHRSfUoyJ/ux9U
         8jch0qlOu6+zUf+CoSA4r0969bZGHP89HnjpkHytDk2uVTvMCAEAuPcSs6KqE95lCcY+
         OCmi8qgf+7LPgLO2yByRu2Nt5ms3mF4Eo6CMejmrMHS8YMSHngYZkstJ533+3SkrAq33
         tH4A==
X-Gm-Message-State: AOJu0Yxy6rcx5mU1mU3nS5CE9y11dxSEokg+T6nX75dUCaVZT0NPmS9s
	A063kegHWJm4BFbKd8GkiZsq3Inzpo7Kyk6VF9mh5yX51grwW3CJPtJxV2tVFw==
X-Gm-Gg: AfdE7clWbFJU1w+7FYmWYl8GHfh2NTRTg5nL6HZVlPmmIQIC31+4kSrW+jzVmIlfn8k
	TNU42XzrT6Y7M6Xm0Z+jdrcN19UhJxtLAYNeNRFpKHShVNaWx/yXsy4mbcVHY0rBP2Q61lUA03z
	8hx3GlUwzWgIFEhFtwXzKB5+CwJQYL8XHQPIQZFLngJnmIxs2cODcZUQzFNK/F+9CzTtjTf7R8R
	MsSwtuKSsQJhw8zrsEBpH46188VN/TRPipJz4/MiT9aP0pT7HJOJP4GI6UDDJQxwY8HCp9c8ymE
	ANZTf24SbwPPqVN9YdSinv1Pjz0iFeiXpuTFYgAUoiRyxoRkqDdpzxZ/Gl+1bhJU2E07kRUwLTG
	nwOvZC4qq4852IljoHcLO9S1luswQ98ZMdF2WMLxkgcKKgwzc7j612/5omGVh1sa7bEWXMjeLVo
	vMTnVZ+/W7t3D9CC1JZ7QzWufeMUd9GV6z3Uleh/gJ6v2a
X-Received: by 2002:a05:6123:2c3:b0:5bd:a7e6:10bd with SMTP id 71dfb90a1353d-5c1afc02ce0mr541130e0c.0.1784303857080;
        Fri, 17 Jul 2026 08:57:37 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5c1eecca4f7sm876052e0c.3.2026.07.17.08.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 08:57:36 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: poky@lists.yoctoproject.org
Cc: yoann.congal@smile.fr
Subject: [PATCH][wrynose] poky.conf: Add newly sanity tested distros
Date: Fri, 17 Jul 2026 11:57:26 -0400
Message-ID: <20260717155726.3527567-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Jul 2026 15:57:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13942

Fedora 44 and Alma 10 workers were added to the autobuilder, and the
Alma 8 and 9 workers were updated. Add fedora-44, almalinux-8.10,
almalinux-9.8 and almalinux-10.2 to SANITY_TESTED_DISTROS.

AI-Generated: codex/claude-opus 4.8 (xhigh)
Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 90f6e5f03ea7..8b2bc0fede45 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-26.04 \n \
             fedora-42 \n \
             fedora-43 \n \
+            fedora-44 \n \
             centos-9 \n \
             centos-10 \n \
             debian-11 \n \
@@ -48,6 +49,9 @@ SANITY_TESTED_DISTROS ?= " \
             opensuseleap-16.0 \n \
             almalinux-8.8 \n \
             almalinux-9.2 \n \
+            almalinux-8.10 \n \
+            almalinux-9.8 \n \
+            almalinux-10.2 \n \
             rocky-8 \n \
             rocky-9 \n \
             "
-- 
2.50.0.173.g8b6f19ccfc3a


