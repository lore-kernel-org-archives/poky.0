Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38424C3DA47
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 09:31:50 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.7908.1720690303495719472
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 02:31:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WnKtqZE1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4266f344091so5679595e9.0
        for <poky@lists.yoctoproject.org>; Thu, 11 Jul 2024 02:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720690302; x=1721295102; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=j6JmrmKmg2IT+a8APq59jDaWUXooConU130cN9ALF34=;
        b=WnKtqZE1vNzCTOSwDi047c7O83NU9M24ds/iliBD0kQWomDg9nZXLtB4JlaYkD3N91
         AhhSg1XpIscNYPJx+rEF8q6XI54zNRvCp7bPnTYPennwzW5/NSYKbjan4wnp0NyuwZOi
         My3uEB30+I6jAPKUiWKk7CJ8GB3OGYXi228To=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720690302; x=1721295102;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j6JmrmKmg2IT+a8APq59jDaWUXooConU130cN9ALF34=;
        b=G9Cl0U1MW1IFWemmTBOHKG+f3Fm7q63g66rKHsviyszlkWykIjlTV/gTR+Z7R8hH9X
         kW5/2ei6jUBq3W8KD1X1/yga/d89mxLKvOWZ2u9E2l61YtoOxDDno1Dli8WTsqHiKYmK
         s7/3dW5A8yDrFhLFhQxtpQP25IJXEXRHA+Dlbqsg6dZshyBBa6bhieUu8eEWD0X6x/jk
         WOl3P3ZQYADLT4y/dIomYnW+8edDhueDdx5t7saW3MQlceMEdy04TFj9PjOoGXwk/g/p
         O3qchiJqhlNDxVgex9G2gFLJSmDZjTxb3RZ79gkj/2tMsk4jBShnFVhSX1SdwI4aLSG7
         bQgA==
X-Gm-Message-State: AOJu0YwaBdc9Vu5jI+NnVlXXK+SiXdvA17NJu6Bx82TSvtJ6sW+sz0ou
	7ZzW3Yf19tJuC+7eN5nGqCrp6yTdrqp9KmjxjN2ZtidYpKN+Rtp1FKicb3N2vKiKYb55LbMAen+
	1
X-Google-Smtp-Source: AGHT+IFcKatDSpixbJvl0lRn+RHqgpU+LZKxiadtHJtZ4umRFuJUkarEYoUSQ2RnWYHgxW/JBHzj9w==
X-Received: by 2002:a05:600c:41c4:b0:426:62c5:4741 with SMTP id 5b1f17b1804b1-426706c903emr48029335e9.2.1720690301460;
        Thu, 11 Jul 2024 02:31:41 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:b76e:27af:5a94:dcb6])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1f22acsm280157665e9.24.2024.07.11.02.31.40
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 02:31:41 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Enable yocto-space-optimize.inc
Date: Thu, 11 Jul 2024 10:31:40 +0100
Message-ID: <20240711093140.1166690-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 11 Jul 2024 09:31:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13422

Switch poky to use the recently added include file which reduces the build
disk footprint, sstate object size and speeds the build slightly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5285753c317..bf5aa6035c3 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -61,6 +61,7 @@ require conf/distro/include/poky-world-exclude.inc
 require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
+require conf/distro/include/yocto-space-optimize.inc
 INHERIT += "uninative"
 
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"

