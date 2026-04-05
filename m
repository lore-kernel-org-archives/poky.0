Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C800E9D809
	for <webhook@archiver.kernel.org>; Sun,  5 Apr 2026 15:19:59 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.36690.1775402392514841106
 for <poky@lists.yoctoproject.org>;
 Sun, 05 Apr 2026 08:19:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OSKLQqHl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48558d6ef83so32794895e9.3
        for <poky@lists.yoctoproject.org>; Sun, 05 Apr 2026 08:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1775402390; x=1776007190; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=TzuOxjGyKIGjya7GOfweYfHNMUJcg/ikvyJMHOZSg0A=;
        b=OSKLQqHldh12TvA5Gw81SfrI3NeWRc7qmyHjIp2oZAgVTVsGGd9EPrpzKElMN6S4OY
         e0WDFYaq33bMq6lgzb2DVukXo9pDxcBzTK83DI5uJRaAvn9v2QbSp/y9FBMSkB3dNA23
         1hxDSEPsIZrvzGXEj2cnVDgC/wZV0tUntseoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775402390; x=1776007190;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TzuOxjGyKIGjya7GOfweYfHNMUJcg/ikvyJMHOZSg0A=;
        b=IilV9ywH5CDnfsIscVTNhmsKTAig6O4Ie0y7uPfXKe12KBFJAKDMUe0jXjHzkcui/3
         H66ikAZntM0mBGXaawszE0G3gc9SgJ5x+biljBfmArWNmWYgzDbO+Lr0tZcnVkbebGoc
         vAI3LC31tE0dvuAsUnflsbhba/l0Xk9ndnMn6j/gh84KmBgBlUR/85P5SgO58/6ZCwuJ
         RIOEuKAVIFuBYAdpjeFu8bAgZulvini7wWYqO8I7DHdOCVyvUdlwEgtFUdYoOM9eNFRy
         q1j+40saE1EOO+25NvRXy9T5ptVXaw2PrFvpnhvZcYJ0zKDAoU6oem5KY0Lkg/iVVlok
         I9Cg==
X-Gm-Message-State: AOJu0YwRpOaYSc60itfBFVkO7OS0xkoB8s+s+/wAZM6Nh0HO7lz4shNV
	+qGp5rA90LjkiioconvnbUxB9dGY/BR8Qqp8jSv4p+t+jgKmhnC1FGBwyJxZ7tP2DBEYf5XnQ0d
	hTWxl
X-Gm-Gg: AeBDies5u2o4WJ+H4+gMv7rF3z47iYXc0TNV8SDw5fhQPDI7TX/odRN7ezDGidPVCrW
	1gA335rwKdNxGtLybI3Ey/BahrQkMc+G++7kfdMT089W7ihb8Xoq0hrUwISFSn6LDrufOsHR6N5
	VWAXtTVLu9EY+Aq5NuRK+pgfrXnq5nEWQC2oGX6HB4Jz3wTY0GXELK1SToy/EAwKqVTxkVPglAP
	QvM1KjAjCW3ecbFWtYKJMxkucvs74s73W66x0MuVDVsVe0ZtrEJb0AsAOq9/g/nh/9ZaiKKONHJ
	2PXLMGEqDjFCa1a5zr1N9A0wtP4Cm46Vpw1i+CTu4MQz9NruYdsPWjlJ1PSgdsis6cAaYKiz1Co
	XY1i/vOCO4xD49at63oV7Stx82CWmvUz7aaQsKYdxHFNFsxMY7ZYANXVU5chunIHTDcEIv1vH2f
	Um8K97Nc5hiAtUSuwVEMAEEeWyZTgerg/QaDJKIFo08BQkAND/NQoOemN/UV/UToQ=
X-Received: by 2002:a05:600c:2e95:b0:488:a882:b7 with SMTP id 5b1f17b1804b1-488a8820206mr37302015e9.29.1775402390282;
        Sun, 05 Apr 2026 08:19:50 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:5e42:a555:17a8:9bbc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48899e48c7asm65950635e9.19.2026.04.05.08.19.49
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Apr 2026 08:19:49 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] meta-yocto-bsp/wic: Move to files/wic
Date: Sun,  5 Apr 2026 16:19:48 +0100
Message-ID: <20260405151948.3809725-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 05 Apr 2026 15:19:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13881

To align with the new search paths, move the files to the new location.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/{ => files}/wic/beaglebone-yocto.wks | 0
 meta-yocto-bsp/{ => files}/wic/genericarm64.wks.in  | 0
 meta-yocto-bsp/{ => files}/wic/genericx86.wks.in    | 0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename meta-yocto-bsp/{ => files}/wic/beaglebone-yocto.wks (100%)
 rename meta-yocto-bsp/{ => files}/wic/genericarm64.wks.in (100%)
 rename meta-yocto-bsp/{ => files}/wic/genericx86.wks.in (100%)

diff --git a/meta-yocto-bsp/wic/beaglebone-yocto.wks b/meta-yocto-bsp/files/wic/beaglebone-yocto.wks
similarity index 100%
rename from meta-yocto-bsp/wic/beaglebone-yocto.wks
rename to meta-yocto-bsp/files/wic/beaglebone-yocto.wks
diff --git a/meta-yocto-bsp/wic/genericarm64.wks.in b/meta-yocto-bsp/files/wic/genericarm64.wks.in
similarity index 100%
rename from meta-yocto-bsp/wic/genericarm64.wks.in
rename to meta-yocto-bsp/files/wic/genericarm64.wks.in
diff --git a/meta-yocto-bsp/wic/genericx86.wks.in b/meta-yocto-bsp/files/wic/genericx86.wks.in
similarity index 100%
rename from meta-yocto-bsp/wic/genericx86.wks.in
rename to meta-yocto-bsp/files/wic/genericx86.wks.in

