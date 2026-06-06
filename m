Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 331B5CD6E75
	for <webhook@archiver.kernel.org>; Sat,  6 Jun 2026 04:32:29 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10395.1780720343156838475
 for <poky@lists.yoctoproject.org>;
 Fri, 05 Jun 2026 21:32:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=aKDW4/jv;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: ticotimo@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c8585c51f1fso1618159a12.1
        for <poky@lists.yoctoproject.org>; Fri, 05 Jun 2026 21:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780720342; x=1781325142; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JP2VfQkEfZtJPIHtD0OMrPY7rCAOdXrMzwo0FSt059I=;
        b=aKDW4/jvU21XzGXL+cs4BDzSOhDYumC/1D2OeCf+gzdpUUk1CNHhs+k7zTsIOahoJ7
         TJno9PolQ1TES9gbAooYWzUWFMH2DG/icv8uIJm2PLgWDZx4odfT7k5SP2IgED7heTaG
         VmKp/pi/LCnb30+/Ywkbxsq1w/wkh4/3SA0Kqj87z9W7Yrum8tVtyhFxcw+jYV2/VhR6
         k1lGIhJzF7EzE6qFgVAeJpYQfjmm5FoNOXO6U8zRQNCgwSnTpUaESNTNXdwhD3izXoxr
         2q97ZOp1suxWjJiEpVknyaoh/c8KJZCBiMicKul1yMhxDrgf6raN0fEsiTkXg5pwXaZ1
         gW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780720342; x=1781325142;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JP2VfQkEfZtJPIHtD0OMrPY7rCAOdXrMzwo0FSt059I=;
        b=PPS1CBihQBnq5SedaMm7Il2Rsi0urPNqjx5pAdxs1CG/OC2NXxNIChw6oP0HOKURNy
         YAhvlgHAVDZ57aLbLZCQlNqyrA8ofIN3q9/iZaRLRqIMCMe8mqsnulxxmHQ5sMblQhET
         AhV7Q1xMKH7uhhLNzNKibavfshySyR8hz2yjQRuYKCaazm+2SrVI9ZXS/5zERZrHrIeH
         gT9QgzqqBuNw8Pc6sQlTcovMu/e+Kv9CTbSxyzYW0z0R8ahasaT+LuyDKMdBqqA7+Lnb
         ZyeXpsbFR7dd04Osrx+97gwPrTZKPiPsdDClzeSElHmybhbYs4MWNLJzqFVG19eowU9e
         OIXw==
X-Gm-Message-State: AOJu0YzUIM4bz9caruh6lqWDaBIImtX861b5+sqgFIcUOF9N194imYBK
	ybyCn3RWd388iflzB3M3NFHMoAtqd6hM+xSaynkYLFVu9KFBHhaDfzr8U5FtRQ==
X-Gm-Gg: Acq92OGrune7NIFAYkOXNlZGzL/ilk7FM0gvxKAifwPOC9hgg0+Wqj+3GW9Nw5A7fAb
	wIcFFOZowH7cVgRoE9U8uAVFD7csnk9CD+BeqLjcbOVDYxceRy+YazkZ01LWHFIxznaFxBk+ZX/
	yXSx1IeKSiu9KE5W8plfvlgjt0NopRsNDgwN8LGAXboHMD8/09N6bGnfMt3zwcR/IIe+YlbZAWL
	ixVntIF7TxQwBE9vn3JBMzMjGdsqPOcvxU+oFir4q7AfPaqD0dwdmBfa+Ul4vbApqy4O/7raLHp
	DDlzKCel+WbqX4fIabtyHQ30xyUp+a5m2RCTuBS4H0l6qsJRC4zPKl8gnT2RbjmO4H6/IjfHrse
	oKefKN3Ovl8MUlQH0yq/m+thR1XKr0Rs+YLza7LL9M1DYSsXQ5mtHfmAt8rBdHaYfHOp6NOXfMx
	7h+X86p10Np2j+t1CQNrmtZJnx6OcAu5I1DrkgiwT1NQdTUFzf2BZzge0SKewPRgNxC1EnoCkNI
	5YZdqgj0ht6tO+MEh8WTsdgAPu+qJbb/Q==
X-Received: by 2002:a17:903:8cc:b0:2c1:6ed:513b with SMTP id d9443c01a7336-2c1ec94d1a6mr59708555ad.16.1780720342426;
        Fri, 05 Jun 2026 21:32:22 -0700 (PDT)
Received: from localhost.localdomain (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c16609e1b6sm108296475ad.38.2026.06.05.21.32.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 05 Jun 2026 21:32:21 -0700 (PDT)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: poky@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Subject: [PATCH] poky: Update codename wrynose -> blacksail
Date: Fri,  5 Jun 2026 21:32:08 -0700
Message-ID: <20260606043208.69796-1-tim.orling@konsulko.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 06 Jun 2026 04:32:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13920

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index d8d70cf..98cad52 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -1,7 +1,7 @@
 DISTRO = "poky"
 DISTRO_NAME = "Poky (Yocto Project Reference Distro)"
 DISTRO_VERSION = "6.0.99+snapshot-${METADATA_REVISION}"
-DISTRO_CODENAME = "wrynose"
+DISTRO_CODENAME = "blacksail"
 SDK_VENDOR = "-pokysdk"
 SDK_VERSION = "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METADATA_REVISION}', 'snapshot')}"
 SDK_VERSION[vardepvalue] = "${SDK_VERSION}"
-- 
2.54.0


