Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05D53C4332F
	for <webhook@archiver.kernel.org>; Mon,  6 Nov 2023 17:11:02 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.59817.1699290654976665872
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Nov 2023 09:10:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FomB7Ny2;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1cc3bb32b5dso42914115ad.3
        for <poky@lists.yoctoproject.org>; Mon, 06 Nov 2023 09:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699290654; x=1699895454; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jM5IO3MUY5ER6bTAUuQxEiTmcgTboVRS9XzPJ1Yditc=;
        b=FomB7Ny2j0UpufotI77xRsYBuHql/bLdcWZvGKZjzrLtP5ubNqHFP+NSd+sZK83gkF
         qC1IxBY5wkYlzif/4to+jZkbtqq3GKu/IPjXpSj/JHuqDjozOqt4IRkxrgC6HIWsh0Gw
         C8LwzKadDrwx/BvQArRFIZw6k17Xt9Cx3/awMw2x4/3PlYOpDciqnwdtHn1Al0xoxqtG
         bI0cW1btWBU3Z9baIBeKB76RgYMILKssM7Ibj/Q44idqThgIged4RoCXnCgmvx3HoHga
         sPhiFjmUWOqvwVQaxuUuWv88hdBmZOyZx3X/moGQapBpnJ13CXLbcLxaArnYwHZ57cTa
         POXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699290654; x=1699895454;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jM5IO3MUY5ER6bTAUuQxEiTmcgTboVRS9XzPJ1Yditc=;
        b=bxPkYDAUX16tmDO4Yw7UOV1LtTs0+y8ykRWDwQhSGUBRCT00qTA3nFHFRGOOWEATyZ
         mx86bVrYKx1Z4HVmNzKlbEl15UEiWpNiGeBodHXcO4SlcKzRPHmQqnLzwuXYqxgCDbr5
         RxFiiIDmV+j3+gWPBtkkA/3miWadnu2xXdQ1ApiKpADRttU+/7swlcusprrvqdA+WCX/
         ICc/TBC+/HaBzX6ZVauI13VGTljFeVkDkJnn0auwVviuYB6r29YESRs0Lb5hx9JeXsdq
         saNqGzO2CoV8fCaEIwV+ghnA/8dcUiT+9ZYyy+SIFh2ZshAU/dGOUT/i/XfoXqXVK38M
         vFkw==
X-Gm-Message-State: AOJu0Yyqz0m5CrvRa3fCb2abUY89fZR+2kPVNed9y0XcqyNZpFZAKW9H
	6122ax4vdYwv5YMKt5hd5MXvn1DGFXN+CQ==
X-Google-Smtp-Source: AGHT+IGOhaV34Of7ExSXZG4kYW5LmeSj0FhVk3vvX6ro3C+vieHlECNgWtvw2yRVtvHRgYyNdpnIFQ==
X-Received: by 2002:a17:903:2286:b0:1cc:43ca:b5b3 with SMTP id b6-20020a170903228600b001cc43cab5b3mr27623658plh.28.1699290653961;
        Mon, 06 Nov 2023 09:10:53 -0800 (PST)
Received: from apollo.hsd1.ca.comcast.net ([2601:646:9100:2cb0::38be])
        by smtp.gmail.com with ESMTPSA id w14-20020a170902e88e00b001cc5d23275csm6106948plg.200.2023.11.06.09.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Nov 2023 09:10:53 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Khem Raj <raj.khem@gmail.com>
Subject: [PATCH] poky: Do not inherit uninative on ppc64le and riscv64 hosts
Date: Mon,  6 Nov 2023 09:10:51 -0800
Message-ID: <20231106171051.3741517-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.42.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 06 Nov 2023 17:11:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13197

uninative tarballs for these architectures is not available

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index e742666b4e5..ccad9c835a7 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -62,7 +62,7 @@ require conf/distro/include/poky-world-exclude.inc
 require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
-INHERIT += "uninative"
+INHERIT += "${@bb.utils.contains_any('BUILD_ARCH', 'ppc64le riscv64', '', 'uninative', d)}"
 
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"
-- 
2.42.1


