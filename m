Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C766FC25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 11:47:00 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.19426.1717501615352888240
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 04:46:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=NAdb6M78;
 spf=pass (domain: snapchat.com, ip: 209.85.214.170, mailfrom: ecordonnier@snapchat.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1f63642ab8aso31938905ad.3
        for <poky@lists.yoctoproject.org>; Tue, 04 Jun 2024 04:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1717501614; x=1718106414; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DnOaK7odJ75sNq3Ex/cKlg1uy8dFZ/BahEEgKt78B24=;
        b=NAdb6M7818doTIpZYfUVzjvJFORLadQqx+tSi6Ov939rm63H255Lyu0B0m9Jjmq4LX
         lilqDqg9lVd/NPNrBw/xk+Nca5QrZvWInh252mXODflbrTMoz9wCGsxKgyqZlPNTEkKq
         xvgl1DCYBU371+0kxbEFcYiWjHARAr1yxW4Is=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717501614; x=1718106414;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnOaK7odJ75sNq3Ex/cKlg1uy8dFZ/BahEEgKt78B24=;
        b=uyH+KzQaVyViZ7Whi0dHQVw3PMqkCamUzp6Wu6VQIa+5ZrGvaG6hSvKB16NdZ1LxwQ
         aTNELHT1R7M+BM63AMBNN+CYFsqA2ESEWyBi04zIuQCdnFxS91f4BC6k7OikjVFA2/Z2
         SMZnCuMip5ffLjUUVG6EO2FCRy5kGH+Oe+tU5iYfehJNYGvdUVfJSYExUmXbI3AzJ6Kj
         qei35lC0Dd842BpBcrb5MhelF6cICWEcUIfZAEuJcZStXWf8AwT9InIFa90yQ0hrCCb5
         iPmHSjIAFhFN7hpQ11eEBH4GOV9VQRsJ/h3VIBnMNfVd4VYbMVGldUracAyeRMJg/cp/
         4fZA==
X-Gm-Message-State: AOJu0YzS47E454xS7SWSJV5L0K93vAVuph5ZgXdk80zGrjYFy7sngUzG
	aAW/JHgfA07peSy91pRjc/MQKD+bJFbk04oUwLEQhIoeG2hN1h1yuB2AlXKBo98kwulFxjm3zJG
	izxE=
X-Google-Smtp-Source: AGHT+IF/I6+47hFtu9/N1oswbddkIdMh/XvkigySjk/uCGH+Rzp/lWNEJ7RFveCnMdIE6tD+V9wmWw==
X-Received: by 2002:a17:903:120c:b0:1f6:70b7:2f77 with SMTP id d9443c01a7336-1f670b73226mr74034725ad.17.1717501613633;
        Tue, 04 Jun 2024 04:46:53 -0700 (PDT)
Received: from lj8k2dq3.sc-core.net ([85.237.126.22])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f63241d281sm81229625ad.302.2024.06.04.04.46.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 04:46:53 -0700 (PDT)
From: ecordonnier@snap.com
To: poky@lists.yoctoproject.org
Cc: Etienne Cordonnier <ecordonnier@snap.com>
Subject: [PATCH] poky-alt: enable minidebuginfo
Date: Tue,  4 Jun 2024 13:46:47 +0200
Message-Id: <20240604114647.2897172-1-ecordonnier@snap.com>
X-Mailer: git-send-email 2.36.1.vfs.0.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Jun 2024 11:47:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13364

From: Etienne Cordonnier <ecordonnier@snap.com>

Enable minidebuginfo in poky-alt in order to increase test coverage in CI and reduce potential bitrotting.

Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 3e10251..b38a332 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -1,5 +1,5 @@
 # Add extra DISTRO_FEATUREs
-DISTRO_FEATURES:append = " pam usrmerge"
+DISTRO_FEATURES:append = " minidebuginfo pam usrmerge"
 
 # Use our alternate kernel version
 PREFERRED_VERSION_linux-yocto = "6.6%"
-- 
2.36.1.vfs.0.0


