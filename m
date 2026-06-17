Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABACD98ED
	for <webhook@archiver.kernel.org>; Wed, 17 Jun 2026 08:06:14 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10623.1781683572615020367
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Jun 2026 01:06:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=xLPeBajQ;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-462342ac290so747496f8f.2
        for <poky@lists.yoctoproject.org>; Wed, 17 Jun 2026 01:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1781683571; x=1782288371; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MAVDz6hkh9DtLVCptF4mUUvV7ludUEEyLM693ZEfcv8=;
        b=xLPeBajQ9JRJtQQEaeI8wmruufASOkL/t47zVKAiXIaySb/bLDMJwz7RQJ/vMAVZ9S
         TUa4IBwU0x3xCxojkjKop+M3lPhgN7+nGtacWPuE0LOZrBP1SjutouPP+1V6Y1yfI/6r
         4uuVchfrXqZpumuAFmLZ/G1ld2mGcMbEkl+1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781683571; x=1782288371;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAVDz6hkh9DtLVCptF4mUUvV7ludUEEyLM693ZEfcv8=;
        b=kVzwuUb62aFhCV4xCiFuIoYXxmGYm3Jfpu7kxgtzH4oo4P/0bxMIvCKcHXVBvISRVT
         7FkmdZBPV6+BLI5SXl+NGcytpyUA29yvObtv8l9h/dDxcvpHhVlbWXjLC+9kKQ5sUKIh
         5bz6TLkc7zf88WA3VH7OhTUgsPFcU2tgU+zj4uQeUkQs0+VSsEFlZTBLBaPQ5K8UWPjs
         KgDbFvOkguiNquM2rPdwAyjTTK+DtDyoQhe4jIuHHY88gUlrSbjm8d+6ggMfvjQYrVtK
         zRZ3/0ayIIQUrA99pyiljRbK8QquYeK4cbGJnzAby49VIYnNBpsBH4LYdfkS+fuUmyaN
         De2w==
X-Gm-Message-State: AOJu0YxSswWtc/hBs22cAOuUgwADEZC7lSP2KELdBiFEhaHE1t82v6KF
	Q0SYMQFJXieuENlkI1aFGLCvbv2QP/adv4NGd9ViIofaxlbk82FMaBkr6TzGUQU+KU+6aVv9S1u
	Lb7MD
X-Gm-Gg: Acq92OGEDlkSlsL+DJpmMfFreItB+OZkDjnUU/vUG2t4YNOJc4EDq4V6qR0SPnMYwpH
	TCr7kCAwMA0Qdf5h6I9zdSebHRmmXCj5Ozl/kd6boXcAzvCIBdl8Pnm6pVzKtvPxiRL3Bh9LlUs
	GtIzFZQGJx7baU9iJx2D10NX/9V2Yj3LJteUKvStxSGQdwfwx6mpYOiWBO++AiLt1U2FeL3kzkv
	keJ1rGDVVlmElG6VSVI0e220tFOa4UtGb67purjPpORhFOntfeYzXs9o32Krln/Z8ya3d8beeRS
	pwv9nO5rLJeNCVFrU238E+AfJyWDeKl8aHTdBc61oQbHWrpmKT9SWXuKHvYuF2DdJnQTLjI/+cO
	0cwFc044QVfyiC+T8xWCI9fw4CK36UHm7jNlI/WcVVOQ/W7ICn2oArCI0Jf07DMxaF1W4U9MZZM
	6DlBUrztk6kcWJEcvD/Mmg+my0DkLntJ6WG9j1jSQx9/WezKv2DwxwO8bBUp4NfZ10zBjUw6GfX
	oB9jzm9YLoirHFF
X-Received: by 2002:a05:600c:620f:b0:492:2e93:1199 with SMTP id 5b1f17b1804b1-4923410c4admr29960035e9.15.1781683570338;
        Wed, 17 Jun 2026 01:06:10 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49230a4fd31sm133704365e9.4.2026.06.17.01.06.09
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2026 01:06:09 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 0/1] Patch review
Date: Wed, 17 Jun 2026 10:06:06 +0200
Message-ID: <cover.1781683469.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 17 Jun 2026 08:06:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13926

Please review this set of changes for scarthgap and have comments back by
end of day Thursday, June 18.

Passed a-full on autobuilder:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4014

The following changes since commit ca5a51aadaf651881d640688dc3e1e123aa30bf6:

  poky.conf: Bump version for 5.0.18 release (2026-05-12 21:46:49 +0100)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto-contrib stable/scarthgap-nut
  https://git.yoctoproject.org/meta-yocto-contrib/log/?h=stable/scarthgap-nut

for you to fetch changes up to 8221a532ed3dd4fdb47dffa35f82a1d20ae425db:

  poky.conf: add Ubuntu 26.04 to SANITY_TESTED_DISTROS (2026-06-11 15:18:32 +0200)

----------------------------------------------------------------

Yoann Congal (1):
  poky.conf: add Ubuntu 26.04 to SANITY_TESTED_DISTROS

 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)


