Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86F76CD4F20
	for <webhook@archiver.kernel.org>; Wed, 12 Nov 2025 22:45:43 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10713.1762987538535932371
 for <poky@lists.yoctoproject.org>;
 Wed, 12 Nov 2025 14:45:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Br/KLSHg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42b38de7940so93702f8f.3
        for <poky@lists.yoctoproject.org>; Wed, 12 Nov 2025 14:45:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1762987536; x=1763592336; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KETf8GYDE6LN/2MIESalyuBGJUNT2SUMnAYHhWBSxdE=;
        b=Br/KLSHgso8FqApuCnZ1AkFCgbOJLwus6K/6pVDkOVMgbis0DrvY10NOR7iIrUaeGc
         FmfxA3pxUiBPVDX9FNOPrkSLiokW0os/6z6nroYL+Ph03aLDUCh7R5O9bWcFVVx8/47H
         VWUROqenXjloZf7SNwT3DPUBi/IoxLsX+nmkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762987536; x=1763592336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KETf8GYDE6LN/2MIESalyuBGJUNT2SUMnAYHhWBSxdE=;
        b=EmnYjRhpGvIpRerdh+FeUik1q/y9APKm2ZY+27UgbdmR47FwbOx5synyjkgacqOXZ/
         IDkWUxJt1DM8al5obkDmVqfF9+CSHDYrHawnfQka9sN+TqW/z6wP6UWu6z1SIROCT71f
         hg+MzXMis94lOUykpYUo7HiIlrq8mtsnqfRyxQc8YX81zWfgQ4umKcqP0qv/c0Xq9pWI
         j72WGvcoYx9c7MGMCF1PpRiX+Jf/nJFvwUZSiSaF5A6gvVAKchj6n5UMDsavXbreef91
         xYiLjQsQHRKUOaGNt5RNnMJkL8ZoRzkZIJwgc2j50a62GeRbCMxgD+KDtuw+8t6ttBHE
         5U5Q==
X-Gm-Message-State: AOJu0Yxgv6TKZsdf47nTS/5I5qR3oybDamYvjNv0Y2hEkke9e/ZYrSDK
	Y31JCZ71WxgCv5cg/kbMBCaHGLmqEckBOHF4+DcvTAt9DPSm38zdVx/8tV1kBFFxnRebMzW34D7
	Y7IpM
X-Gm-Gg: ASbGncviYcgFcl07OrO4b4nvslY+7+9eSolF4x7NApcbAF9jh5KaRvDPrIiciGlkz+I
	Yd9ycQAHmN9y94Iw8WU9CCzTjpmK+wKiW7wqUm114CIQNs/sU1jl48p/fv4tB1j9ge/K4CLys3Z
	toSGBM6rQM9DFrnc7A7scoXkE9CIaFs5kRGRN/eewz64/A/LPtgtIu+uDhVhRbfkJGcWQBfliQ5
	H3a7j4zx4pWfL5INh5k6LXZgRqHoZtKAWkiJKP9xtmajA6rkG20oXf7WNJ2udnOdb2PJJrrP9ZI
	9AzTbBatgE87DSAPmoPgd9gkcEvTt6hLNV6Wvu0og/49Xqf2MOXBYJByMWA0z47/VFXFAMXOukp
	3B6b2fdEsa+JMrvnguK3ONzMilE/gXlK37Xpz6douHC7XhLarLYy8JO93baITYydiyiYb0Z/5q9
	nPhc237vTv3KlTdxj11+4zSf65LTZO
X-Google-Smtp-Source: AGHT+IFTQ9idIjYUnASubAkWS1y6BRIUtp72GAfh970BoFMG8eenl7YGGQqwj9DU1n2odno+r8OSbg==
X-Received: by 2002:a5d:5c84:0:b0:42b:487c:d7cb with SMTP id ffacd0b85a97d-42b4bdaaba1mr3589775f8f.34.1762987536432;
        Wed, 12 Nov 2025 14:45:36 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:8876:d08f:2a0c:d6ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53e7ae2dsm201809f8f.5.2025.11.12.14.45.34
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 14:45:35 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Add Ubuntu 25.10 to sanity tested distros list
Date: Wed, 12 Nov 2025 22:45:34 +0000
Message-ID: <20251112224534.3094578-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 12 Nov 2025 22:45:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13791

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8c291d305e9..f1e91ec4be2 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -36,6 +36,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             ubuntu-24.04 \n \
             ubuntu-25.04 \n \
+            ubuntu-25.10 \n \
             fedora-39 \n \
             fedora-40 \n \
             fedora-41 \n \

