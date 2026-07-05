Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F21D7C44503
	for <webhook@archiver.kernel.org>; Sun,  5 Jul 2026 22:48:40 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.140108.1783291710362214035
 for <poky@lists.yoctoproject.org>;
 Sun, 05 Jul 2026 15:48:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=uWZFd7T/;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-474560436c3so2307690f8f.0
        for <poky@lists.yoctoproject.org>; Sun, 05 Jul 2026 15:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1783291708; x=1783896508; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EGPX+c3La8b+NJRB3bdXfJIQnJMbRX64oZw7SjgZqO8=;
        b=uWZFd7T/1IfPfwQ6O1c8Kqx6/0+Tf28//G/A3v6HbgHN8cd/QSvAfNeEyKkSzo0JsR
         WVeNkGffNGvfNUxm1vOZT44MlZrUPut+u37qyN7y23bWQfdpVVWMDER0hhGtA05ew3vF
         PuTcQOeaQdWKXbNX2AZ676y0hzeB5yrDYoK2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783291708; x=1783896508;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EGPX+c3La8b+NJRB3bdXfJIQnJMbRX64oZw7SjgZqO8=;
        b=NqfanxNZjMKyF34SbYdpEy/TGrFOr1aWzHM2s69gs1lIB4OcTIKv2b/lHXPYlFPUHc
         NSoxCsQ6vY0A/VNwzcwdArhVFiD/a5ZKIwaFKREd/liZemHg0Pg0WTQYu3pa6sPbgbL8
         fwmMrrdJi78DLUzPkEyjvag7ZgHGob9i4HNDRiSsa3BiCZYaxA1pDMhCwWNHpxmsnmWu
         pdmvLRGn2l63VhzV3GgYBHPek9hC9gOFUqnKZGJNn2l08+yv5HGvlblLeYOLSgwrQ+lu
         sYFuDgqnegAN+VGktDVfcr2gXx8EZyt8RqqolDx4tGhEDzPGaal8AhDGRHn/RhTvhvVh
         4geQ==
X-Gm-Message-State: AOJu0YxHYujtnGonhvoUOhYrYq5lEinn7DICLZphFlYilFCZJ9+G1rXx
	47xfHLrRaQ8Z8AimME+X8ndYCoykLwQNy3+CU8kgGb8nol5blbuGRjFamyVbYMeE4rdz2lozcM1
	ueTraWCI=
X-Gm-Gg: AfdE7cl0TV6GeKNvnFezZwB/po+WeAbewzLfshq0JCTg5P8eBvU+2Vwv3jv+DR1vI5r
	vv/DgulLIOFg/8yjHPWBByWbDOPEzKFAs2HqcOJcI5IstpaYfSH9efn0yOt2o+hH9tpIBW9WKFc
	2BrmaefMo/4/0/PofH07xeJ9jk2m0V2oKb+vNAqPDwjJgSfDKd8rwxboNc8MH340ucxqKkThI46
	LR1n8hDyAZMUamCP7+i+RzQ3Dexch/AiS9c26UgBnK1US3CEwO623oldhShTjHiTNrMqz9/6g8a
	dUTjKvOf2YSkZsVAFP4BW1cHjCu7BV3fmPn1TJGt+krgKLMrjErn3T2zyWRUX3VXHLVJnQ9d0hH
	KIRs4Twa/t49DhXoK27CVAQszkufuNRFyaRf/qtwHRtGgoVQ3TBBoy8K18GUtlStFuLmhe2rVQ8
	T73E6boVoUoPB2iGyaz/YU6+mHDA==
X-Received: by 2002:a05:6000:1863:b0:473:1ccc:15be with SMTP id ffacd0b85a97d-47aac6d94demr9709734f8f.39.1783291708573;
        Sun, 05 Jul 2026 15:48:28 -0700 (PDT)
Received: from FRSMI25-LASER.lan ([2001:861:8010:5750:6d3a:72ff:5857:d2a8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1d905sm19346073f8f.2.2026.07.05.15.48.28
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2026 15:48:28 -0700 (PDT)
From: Yoann Congal <yoann.congal@smile.fr>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][wrynose 2/7] yocto-bsps: update to v6.18.26
Date: Mon,  6 Jul 2026 00:48:12 +0200
Message-ID: <aab052ae5239b50c79556c950da75aa0a9d18e40.1783291504.git.yoann.congal@smile.fr>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1783291504.git.yoann.congal@smile.fr>
References: <cover.1783291504.git.yoann.congal@smile.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 05 Jul 2026 22:48:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13931

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/6.18 to the latest korg -stable release that comprises
the following commits:

    1fe06068166d4 Linux 6.18.26
    d5f59216650c5 Buffer overflow in drivers/xen/sys-hypervisor.c
    446ee446d9ae6 xen/privcmd: fix double free via VMA splitting

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 015149c0401132d45a9ac44a073ffde47875d0cd)
Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend
index 79cdb16d..458089ee 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.18.bbappend
@@ -8,4 +8,4 @@ KMACHINE:genericx86 ?= "common-pc"
 KMACHINE:genericx86-64 ?= "common-pc-64"
 
 KBRANCH:genericarm64 ?= "v6.18/standard/genericarm64"
-SRCREV_machine:genericarm64 ?= "6ad892116f3c1cc17c0b9df907607b1b5fe02bb8"
+SRCREV_machine:genericarm64 ?= "a75037479dab2b35403aeda227894ee36cd39941"

