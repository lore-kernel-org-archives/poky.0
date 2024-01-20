Return-Path: <haokexin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75A7C47DD3
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 13:43:16 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.22433.1705758194190771079
 for <poky@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 05:43:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lmir1Prd;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: haokexin@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-5ceb3fe708eso857769a12.3
        for <poky@lists.yoctoproject.org>; Sat, 20 Jan 2024 05:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705758193; x=1706362993; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DLaWepC6buMQZ16TQBwYpI5mpfK4pYOmEZMCwTEzrOY=;
        b=lmir1PrdfOeGDBOhAC5TnSJLGtbdeSZg44RydQAwxnozdeFd7cGyey5BUHExKV0ozY
         wZd+v0fgs0d7VUFpVRow38fsWWc/NJTFIlKcBMpbUrbuadrfDf0swGpuMXvQT433q5yN
         scllWKdRFhQ/8FUHz/lroWSc0CtQ/40q6xhj1YcpymNuSnd+xw7JviD1c1nxYb9Sv9Qc
         +bhktzdlUs13YZDIXXfFe58NuctEjmF7VGliVcresaZF/5drtOS9tJBWkMJf653v8C5t
         9XW0h2/vKb1tVpx+75lWZgR6PhNNJrHw8DQROuNOmntdEUcnhYFxqskHYm7UWebkjG+R
         Kr7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705758193; x=1706362993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DLaWepC6buMQZ16TQBwYpI5mpfK4pYOmEZMCwTEzrOY=;
        b=wzpl8lc02XukEerpbiCzfCNuQpcrLzc5KDo/oB6nKI1n+gkSyoKhLx0VfhZPMsoir+
         yhT6dYtpeVEEpr8Sk7R5jVloqE7dbV0ChBLPs9+IWAlNb5ZTAoNsdGVcl3cCBtaX8CEP
         IO8dftmd9xYeLiaNpkcT08SeqwFOFqAerm6nEUfHxDp7TZ/N0YhgRA7H0vzLBYZqbaGc
         RFYWkYe6o+lXv1bTn0Ao9+7Vo2ccrx4Q6H6H3UzvCcUKhzEy9j7sNfUQULU2QFJXGGWy
         BTACfuaL5JGdC6BuxQb/TP4d82mpEsnOHXYwah8g85WdDfgAyvPvB+2JhMMP6REcSaj9
         yywA==
X-Gm-Message-State: AOJu0YwFL+LYMdi3Jk1DfxAEhMbbc4YkTIVyyGfNii+4fxiv7SXqf0/q
	Di5F5ykjxO21HrWUbZ1Xxa6yC7dgAVLP/oK7woNJHq0bCCJ4yuOWC/ZPDBKh
X-Google-Smtp-Source: AGHT+IGrm5NprWsRIbPXnChAybfmOhcgPhRQRi7M7/sGmMK68wVINt0w8LyHYfYSFET0Hjlc7JblRQ==
X-Received: by 2002:a17:903:18f:b0:1d5:5a4f:a49e with SMTP id z15-20020a170903018f00b001d55a4fa49emr1033575plg.81.1705758193399;
        Sat, 20 Jan 2024 05:43:13 -0800 (PST)
Received: from pek-lpggp6.wrs.com (unknown-105-121.windriver.com. [147.11.105.121])
        by smtp.gmail.com with ESMTPSA id jy5-20020a17090342c500b001d6e9d127e3sm4592723plb.90.2024.01.20.05.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Jan 2024 05:43:13 -0800 (PST)
From: Kevin Hao <haokexin@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>,
	<poky@lists.yoctoproject.org>
Subject: [PATCH 2/2] yocto-bsp: Drop the support for v6.1 kernel
Date: Sat, 20 Jan 2024 21:42:54 +0800
Message-Id: <20240120134254.3235808-3-haokexin@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240120134254.3235808-1-haokexin@gmail.com>
References: <20240120134254.3235808-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 20 Jan 2024 13:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13245

From: Kevin Hao <kexin.hao@windriver.com>

The v6.1 kernel bb will be removed from the oe-core soon. So it is time
to drop the support of it for the yocto-bsp machines.

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
---
 .../linux/linux-yocto_6.1.bbappend            | 19 -------------------
 1 file changed, 19 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
deleted file mode 100644
index ed2b18ab606a..000000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.1.bbappend
+++ /dev/null
@@ -1,19 +0,0 @@
-KBRANCH:genericx86  = "v6.1/standard/base"
-KBRANCH:genericx86-64  = "v6.1/standard/base"
-KBRANCH:beaglebone-yocto = "v6.1/standard/beaglebone"
-
-KMACHINE:genericx86 ?= "common-pc"
-KMACHINE:genericx86-64 ?= "common-pc-64"
-KMACHINE:beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine:genericx86 ?= "6ec439b4b456ce929c4c07fe457b5d6a4b468e86"
-SRCREV_machine:genericx86-64 ?= "6ec439b4b456ce929c4c07fe457b5d6a4b468e86"
-SRCREV_machine:beaglebone-yocto ?= "423e1996694b61fbfc8ec3bf062fc6461d64fde1"
-
-COMPATIBLE_MACHINE:genericx86 = "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION:genericx86 = "6.1.30"
-LINUX_VERSION:genericx86-64 = "6.1.30"
-LINUX_VERSION:beaglebone-yocto = "6.1.20"
-- 
2.39.2


