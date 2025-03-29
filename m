Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E98CC36008
	for <webhook@archiver.kernel.org>; Sat, 29 Mar 2025 15:35:47 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.12913.1743262544267319785
 for <poky@lists.yoctoproject.org>;
 Sat, 29 Mar 2025 08:35:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VrmLDbLP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so30791295e9.3
        for <poky@lists.yoctoproject.org>; Sat, 29 Mar 2025 08:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1743262542; x=1743867342; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=mh1Ux3zDUcEKmLjGoqfh/MrHWVUmelwjOSCLU1wcN0c=;
        b=VrmLDbLP3LBvesV8HU/blaePOJxsEZE3+oelDotLTve8qPO6F+fRjPqF5D9XGouvV7
         5iVIqo0w/eYxrkcUWtVbMfhqJHg1YhQoVufixP9zui9pxA6EXI7Vjh2mHG0WcnPF3BcT
         nilsD7JTMRlB2hjHa+9muVTHmcurBV/eBtC28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743262542; x=1743867342;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mh1Ux3zDUcEKmLjGoqfh/MrHWVUmelwjOSCLU1wcN0c=;
        b=rAn07AkeThSZA2XfawWqT2njBXOymItC5YXJKbx0qnbcmu8ek6Qmt80BXND9onhOuD
         5xr3NCIzCdNQ2ZExvvd6n6l6jKK0HdouipxQG2zVDJrWlnOb+UikoFJTQ7SSST8OoaK+
         a9rPQFwtQbqE1Ap3gn+To+wVlp4dYBbfuKzl3xWKlKnmJaVTaXEYcr6AmENxX1DECZP1
         ZfBmbupLZkTOdCeibRx41bBeencHiVJCNUYE9pG6INFCMDiLo12MEIreU311RMniLTOb
         tNLZTlTYcOLBoM4geW1C2nFk6YFt0jLsVGrQUaWtMliaQ3HkpPbJLH/qSlDnO5WuFWbV
         Ha3A==
X-Gm-Message-State: AOJu0YwnwHimyEJJ/Q+vmNAz3Jkol/J5He26N5/2xulN2gdjoP6VDbPT
	E7ibloO8xXC07svYkZZHiJRl0npCTtb41LZjC9nSlKc774gZlMUV0sOsfJipeo+Krf84XPAajMw
	B
X-Gm-Gg: ASbGncsdMNmZjYQfWrdnrL38SqgfkNdG+XzpSDOZTrm3mphtXuQC55FaQkQ3cGeEQLk
	mg+aJ14yY870uWZSYxfmVVVck/vNQbn+jsuELHLAHjF4gi1DRZ36jOu+MsJCfkOW2cSvSgxo/b0
	OJIgS9QD3+6UoB4j8ICwuNKTtxUZlZ8VN/+HoeqIw5ua12guDCk9tHP3Mg/c0b0300gjWS7f9GG
	bHiUB6F/rdMUkWM5rzc0Y9lXbDUDhYxuLSt2faz5I0J6Ssf+vOqL0Odise+woG+c4jzaQZJh2Ck
	ZxYIJoT9KjjSDYErToow7gyrkEs9llPmiXnUNbX++T0I+XjAGzEASwToAAAIhrg2EjA+YqQ=
X-Google-Smtp-Source: AGHT+IFKvMNXQC7brzX2LhAa0zhT+U/A1zwjLq1IOc/LzXgio7iGy1Nkuw99nQsksFUm/HpQphzMaw==
X-Received: by 2002:a5d:47c8:0:b0:390:eb6f:46bf with SMTP id ffacd0b85a97d-39c120cb921mr2705268f8f.5.1743262541905;
        Sat, 29 Mar 2025 08:35:41 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:aa52:226c:d1da:79])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c0b662c1csm5967673f8f.28.2025.03.29.08.35.40
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Mar 2025 08:35:41 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-tiny: Drop obsolete/broken comment
Date: Sat, 29 Mar 2025 15:35:40 +0000
Message-ID: <20250329153540.1613718-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 29 Mar 2025 15:35:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13584

The comment is obsolete and contains old override syntax, drop it.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 20c13e6f600..d3c0a781e4b 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -38,9 +38,6 @@ TCLIBC = "musl"
 
 FULL_OPTIMIZATION = "-Os"
 
-# FIXME: consider adding a new "tiny" feature
-#DISTRO_FEATURES_append = " tiny"
-
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"

