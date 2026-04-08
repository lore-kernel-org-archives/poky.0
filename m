Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0A71073C85
	for <webhook@archiver.kernel.org>; Wed,  8 Apr 2026 10:08:03 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.102667.1775642875081611216
 for <poky@lists.yoctoproject.org>;
 Wed, 08 Apr 2026 03:07:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=egWnzDLA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43ba1f3fa7eso6319277f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 08 Apr 2026 03:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1775642873; x=1776247673; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=AxIyOGnoOi+Cjqxow7IlSpC8wuwjg47xJ0jdHRomoJY=;
        b=egWnzDLAnUnEXjCNSGIkpDhxISB+4CS7JOR+jI/y2E06h/HqshQZTg9f79cbqAH9IF
         5UptI0L1VoKcKWO6ihn6Wi75KZjhjuMwVmEY00ntPQNX+7HEJwLWDV/PJ2uAYHsO750L
         jRuH2EaXtE5c5tb1A4qxPtwLywevxCoCAI03s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775642873; x=1776247673;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AxIyOGnoOi+Cjqxow7IlSpC8wuwjg47xJ0jdHRomoJY=;
        b=lC3PTLCf8ZjMIcLSZIaq8Z+Oeg6VCkCz0pa3QmuCXe3pu4oYZ6g3sgNXglge8BbhqZ
         p1OGL67t4XzvuBFqzQ2CX4D5YIdPmVDsid3zWiAF2j+qFufoKix+eePRAbLmd5yK8Lcu
         3uzboIUJ42pA2FBUkfir8wv9n4OJxr0qOyCk1D9+0CxYv3zfiNl0hMEijo1KvitAa0QX
         Nxy4t7hRF8pwW/+KFtqm8fD2UeDVNigyiWyccpVSO7ZFzGwFO4J/rtymZda12jVmFh52
         Puvh3fJ//luuM0tQLFg/6ZAbK9oK2H2BKKrbHajDi8cjfUpXbgBSkkWZHUV+yRnkxpNZ
         rffQ==
X-Gm-Message-State: AOJu0YyGQc5FsHdRIQcwKGoxmdT/ye9bajYpKtw8IMraaTsWCi61+Ck+
	GydjAydRXLliC/E9n/H7QpgQodYTqrXsOFcJbKMi5agoP4BXn4DuT5KfmNnmQ09xyQzSAv5hICT
	FFwYihjo=
X-Gm-Gg: AeBDiev2iGz4TyIWuIIzfJxdntUQU0YGWk2gi5VLMbM9cCuLXpBtr49/9n9E8BO/5uR
	oJ7CLswxO8Tfry0s+uVStJYLOp9bdOQHXiIcZcixi6lbUSYi+ICjS8xddSdbS7z9WsuJdG24+pR
	sJSFaCIbIlmQWtvfl3JPx7NtIeYfrdtiJI+FPXQieKuKE1AWYCkecRQJepR+9ZvaZA2PpMGpDSL
	MWf0vxaxjpe0/RppsOYiZJAvn8VQI9ZFsXwSe927SAqs1XJkMnXGDZV3UmRSTxSy7Ljuc+m+pR+
	fwjupYyNz2MtDvhU8SRBg9yPMPnFKRqCqzDTo9vJTyCrgsj0Mxp7CkammMCRxinZiTkGRYMOzt+
	9b+7/sT5FSeR3Xmxccx3HnyoK0AAPrtff+Ftl/bb/vi46KZC6TgYjFWF1t3oLdAP2deCB82ZrJf
	9fDrH8NYYOZ5tD8uRVJmkmi5URS3bNRb9tn51ZEqd1HB9K8JAOlglF
X-Received: by 2002:a5d:5d05:0:b0:43b:6a55:e26a with SMTP id ffacd0b85a97d-43d2930f793mr28243046f8f.51.1775642872859;
        Wed, 08 Apr 2026 03:07:52 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:3a70:3593:db41:cfe4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d1e2a6f1esm55261386f8f.2.2026.04.08.03.07.52
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 03:07:52 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Update SANITY_TESTED_DISTROS
Date: Wed,  8 Apr 2026 11:07:51 +0100
Message-ID: <20260408100751.1790500-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 08 Apr 2026 10:08:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13884

The Fedora 39, 40 and 41 workers have been decommissioned, OpenSuSE
Leap 16.0 has been added and OpenSuSE 15.5 decommissioned. Update
the config to match.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 4532419edd5..fbdedc176a4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -37,17 +37,14 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-24.04 \n \
             ubuntu-25.04 \n \
             ubuntu-25.10 \n \
-            fedora-39 \n \
-            fedora-40 \n \
-            fedora-41 \n \
             fedora-42 \n \
             fedora-43 \n \
             centos-9 \n \
             debian-11 \n \
             debian-12 \n \
             debian-13 \n \
-            opensuseleap-15.5 \n \
             opensuseleap-15.6 \n \
+            opensuseleap-16.0 \n \
             almalinux-8.8 \n \
             almalinux-9.2 \n \
             rocky-8 \n \

