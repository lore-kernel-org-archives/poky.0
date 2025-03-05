Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BCCC19F32
	for <webhook@archiver.kernel.org>; Wed,  5 Mar 2025 09:11:51 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.9447.1741165908839612613
 for <poky@lists.yoctoproject.org>;
 Wed, 05 Mar 2025 01:11:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ve9mOR8M;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43bbb440520so34593905e9.2
        for <poky@lists.yoctoproject.org>; Wed, 05 Mar 2025 01:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1741165907; x=1741770707; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=SaP0XRCWwnqzFjHV58cHtUh3xpeP2v8NnCpVuSooO1M=;
        b=Ve9mOR8M26vRvfs9K2zKfnmIVqgW6iCjY7hZrh0UOLJigOZPOA6q+kvkUU+CBWUrO6
         xq6Kw7oR9LZsZOPIR3bTvGOL7ZBD/phxfiqvJ0nxuOn4qsqBXNXyVhJ+Ux2E1ofAgA9j
         /sw3W1G9aGUMPNmbHa5DPS0r/TUtP/8G4WzFY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741165907; x=1741770707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SaP0XRCWwnqzFjHV58cHtUh3xpeP2v8NnCpVuSooO1M=;
        b=B06PArW32XMJf1fluyPyJqZSrBmvQHWbl16vopIZstpDmv78SGnot4a9qVlHVP/K3x
         Mlzqj7XOEmaRi9aUkDkDPu9xAsp1w9HiS4oTvD8wkI5/0CThrPrkhXws1eGncLl/ftY8
         bS+RIFZ/mi6foqG6XGmlYt+sSeW1459+arkJm6DcvB0hNDnTFuEEa4xbe2uGbzPqPU10
         egYdNS8RqNhgxpze4m9MFuQKVQQRsgSKJslNVBEsGEhQEB8CX7eSn4/1Aw6sKE2oy17I
         xLc41vjpYl6qdXpJklsfVMbw0cg5SFnvyKWB8BAU/WdfeG4ijlElZ7oeaLGlGIrf0xU3
         bUMQ==
X-Gm-Message-State: AOJu0YyprQY0xGg6cZloKdzv27niUC81mafZu7Ry2PZkvGUoWTB8p24k
	OJJAbBvSXtPziUMEGfuKBnJz9UhN61Gkyy2qL/lJCq1HBMUnx/IfYpZ3oGJQH8nCUZAIxa935kc
	f
X-Gm-Gg: ASbGncsi8EVgwA6+u6iXSnfg1tmkM8U4RcdRzZjPR49QPV/w9EVPu5QCVgiDisa0uKe
	cSbYRXJf2iFhjAemaBQnLoBMnJeuZTWe2MzPEvLJjYWPlcGXajJ3IY/HQeIuLcN/FoVk2tnfK2B
	KIsAdSLMvrSQJX0jsp7UOgA7AxQv8lwdmBfCom2VlOLuCmYcS4l4pnt4gdG38IyXKXs4L06kSV9
	Yv5kx4fr7dSU4cGkuHrPe0lRbUgX4VEPuDa3axB8bh8NHwh/bt64UgmVlpW7gTXgjCmcaTUYkne
	lO5GJLsMod9xd7VXO68zlRGbsFNam2NhxWZwR34dgBktf3P0olDvdlEePf9XGGsJQbdjlPzWhQ=
	=
X-Google-Smtp-Source: AGHT+IG5z+lAD+gcURzVYjA6zfgK5bFNKcsmcyxPZuHT6t+KMCa8/wLlwHXoOILpcagfGPBBcwxNeA==
X-Received: by 2002:a05:600c:3b9e:b0:43b:cb74:2c0c with SMTP id 5b1f17b1804b1-43bd28946admr18924675e9.0.1741165905184;
        Wed, 05 Mar 2025 01:11:45 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:939e:c44d:2366:e8da])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b7d69sm20779047f8f.60.2025.03.05.01.11.44
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 01:11:44 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Update SANITY_TESTED_DISTROS
Date: Wed,  5 Mar 2025 09:11:43 +0000
Message-ID: <20250305091143.2024358-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 05 Mar 2025 09:11:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13557

Update the distros list to match what the autobuilder has available as configured
and tested workers.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index eeaacd7b88f..99bd6407bc4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -40,14 +40,15 @@ SANITY_TESTED_DISTROS ?= " \
             fedora-38 \n \
             fedora-39 \n \
             fedora-40 \n \
-            centosstream-8 \n \
+            fedora-41 \n \
+            centosstream-9 \n \
             debian-11 \n \
             debian-12 \n \
-            opensuseleap-15.4 \n \
             opensuseleap-15.5 \n \
             opensuseleap-15.6 \n \
             almalinux-8.8 \n \
             almalinux-9.2 \n \
+            rocky-8 \n \
             rocky-9 \n \
             "
 # add poky sanity bbclass

