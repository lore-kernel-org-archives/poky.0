Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CAA1091931
	for <webhook@archiver.kernel.org>; Fri, 20 Mar 2026 00:24:37 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2567.1773966267273814111
 for <poky@lists.yoctoproject.org>;
 Thu, 19 Mar 2026 17:24:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=lbhSSGQa;
 spf=pass (domain: smile.fr, ip: 209.85.221.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439bc14dcf4so1787769f8f.1
        for <poky@lists.yoctoproject.org>; Thu, 19 Mar 2026 17:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1773966265; x=1774571065; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tiAQMGsMmNhOng+FYi38fmQmE7uwAI9YEzp6GzyBjlw=;
        b=lbhSSGQaLkcQhglSfIjkMZvBg0rVHn0u49lTjzjxnLgrU/mf6jryvalb3fiN4tTBdM
         32I637N2X2Og1JNa3Ul5zrdVzeceJ2T92bgwJynHF5Lb0gl2M/naZwdhw/zsSvH/gz7F
         wb5QrewpljItMytrEigrAB2BnwIvZlZNT78Oc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773966265; x=1774571065;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tiAQMGsMmNhOng+FYi38fmQmE7uwAI9YEzp6GzyBjlw=;
        b=iCH/OGJvBKtTv74iRr3xLo1mtwdyaV5WAkNItNNQ0bnjSRPTk5W+SS8/Nklz+QdzGv
         nsUfULgGMcRYIPxob9p8pngwAhYH/jCbu2dhvfYp6e2uNKEWHKEwbtg8g5mFtx/1PEuu
         8rbKj8q6c25sJh+ylBB2JNUesVq0w6O0whGqIvEfyIORXuBRYYY38moZ7aAC5T3isjuA
         CCsU2l78LmD9XxpCrZ1vhaiaBMmaHeocB+aJQL3cjPRGu6NAX+O5e7xvYf2EwDqlzvK1
         8mVKAw8OkdDhL1FTE0vWzJ/A8SyQVpP501o1xRuQoPY3kGFrbbGQxyar5SYdzwMb0cxO
         SjUw==
X-Gm-Message-State: AOJu0YzHwEcMm3eBrLbB0xyldeZ2FRLD95Js7MlEE+i3PKEKJ5beZl1g
	OQjwn6l1+nNoO1ms95YVU8dTDQUduYqA/K1ihMzPuw+F2YPeS7/pvT359Nacy7tZrPEwrEQnq2c
	fSZyn
X-Gm-Gg: ATEYQzzipn6wjBFVzWqqViH9AXdjD36c0m3160ivpiLumrimSTuPHo5g0w7LvzX5H2P
	PHcNCIm0CpLBXLGfgLezTQen3pyQZ7fQsPpsvRl10Nn/Ui1pMatkcP5qP95f1VZoQlhuyzc4TnO
	upSA1d4jSeJKZ9IUXCnBDVsjf8f97buhNvaPb3qEjPWQfvhEy8Udc+zCRvJ1Qh/mUmFDyNqVIBV
	BDmdLGYhxE//j08l14pUTzY0iTOxGRXKy+G1rI+zcM5J6Q/AzmvVJlsmG6rBn3ACzXOwK8d95Us
	eundXUFr9+Y/x9JNPWg0lwhx+yoQ0bs4eMFGXcseDHW0Xx30phSE1hz2Lj8mAbLkzqax+k/3o1n
	f4KpP+g8WXeLgTGwvGk2i+9y0u5u/kMgn4CYc5l8etbJGy3fYzDtDkJNRcbujNda3EJekVZyz+t
	HicVCCEVpzylaOgoslKCxzZ5Gt38f7aE9hKvWCIxom9KmopSJEdtql+pKn9mysbinTz5uZW1Vj2
	95m/ub7eYVl6GFDnQbfAZyUGjo=
X-Received: by 2002:a05:600c:468a:b0:485:3c2e:60d5 with SMTP id 5b1f17b1804b1-486fe8a2c4amr18497275e9.2.1773966265131;
        Thu, 19 Mar 2026 17:24:25 -0700 (PDT)
Received: from FRSMI25-LASER.home (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486ff1ce05fsm5846275e9.5.2026.03.19.17.24.24
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 17:24:24 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][scarthgap 1/1] poky.conf: add Centos Stream 9 to SANITY_TESTED_DISTROS
Date: Fri, 20 Mar 2026 01:24:11 +0100
Message-ID: <f87e76ef6bd6745038616876af07c6a74b49f8c9.1773966064.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773966064.git.yoann.congal@smile.fr>
References: <cover.1773966064.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 20 Mar 2026 00:24:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13866

From: Yoann Congal <yoann.congal@smile.fr>

We already support related distro: Alma Linux 9 and Rocky Linux 9.

A Centos Stream 9 worker is available on autobuilder and ran
successfully:
* oe-selftest (on an empty sstate): https://autobuilder.yoctoproject.org/valkyrie/#/builders/69/builds/193
* bringup: https://autobuilder.yoctoproject.org/valkyrie/#/builders/96/builds/5

Fixes [YOCTO #16156]

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 9db4de91..df78ed3a 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -44,6 +44,7 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-40 \n \
             fedora-41 \n \
             centosstream-8 \n \
+            centosstream-9 \n \
             debian-11 \n \
             debian-12 \n \
             opensuseleap-15.4 \n \

