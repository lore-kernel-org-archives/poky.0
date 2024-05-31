Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDC12C25B75
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 11:44:05 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.9502.1717155840848363248
 for <poky@lists.yoctoproject.org>;
 Fri, 31 May 2024 04:44:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cDCGgdNZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4212a3e82b6so6858985e9.0
        for <poky@lists.yoctoproject.org>; Fri, 31 May 2024 04:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1717155839; x=1717760639; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=iGwnwB317/wJMItybAK55X4vKpq+p0o1Tsoc4q9/M/Y=;
        b=cDCGgdNZ+pT5pbS/nz9clSjflQ/AJQuspgNNf06H+mi9J7o5dda0M65JFdM+nJgNVN
         8AOS8AZ/X618dptauO96XzPiGdlOxNQdvORLL1jGmJgI0u2ow5PBu9Tr5HNK47jUY21f
         dN5ATFDJxxrFe0xkGyvQys3uuSoivd0WIUjFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717155839; x=1717760639;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iGwnwB317/wJMItybAK55X4vKpq+p0o1Tsoc4q9/M/Y=;
        b=AhqR8D0RtMDQ0aVlv99Zos7e1HKS7LKSuTsvHg4tcwEceHBsfF92Q2Vx+p/Bxbx60G
         w4ePPs6C1XcU4LeJ7dWvkLSJeMtUawwz5Y2sXlbtNgsuumhSFTJnLFYbzdPbvHvILbl/
         JLtKkTzohUookPwNBBh29FyqUVjc+x7S5Dh6olzd36l3NkGaSHNxJxzAYo0obpcdjlme
         zqbkvNjWzpDGQkNW0Yk9Vcvh07T+Rr+aEJ296f9XXlDHqbxqlnG6wWuYZkDvDR4HLjJN
         Bmq/1F6lCno5NjavuGxuLZSV9cCHw54zvH5YsKJXKmOZ5bkS+s7HX6J132JHF2svmPIf
         /q1Q==
X-Gm-Message-State: AOJu0YzEwaU2YfGg3aSPUwqnPj/E15sTxUf07w/PeH2I6Tf3/wEnPP/G
	A1sQRnKhLL/uYTXH1+YLwHpn70tWSGM9GbLLgQ85RVRVcf3ocSKJKzb0ipKYr7E1jvti4kw980y
	+
X-Google-Smtp-Source: AGHT+IFxjkmGR7n/Rml8Exqnepc9AGBk27s/ee+ngqAx7DzWHiY1iqcnIGJ3A15qYAc7wL1AfdGjYg==
X-Received: by 2002:a05:600c:1e27:b0:41b:8041:53c2 with SMTP id 5b1f17b1804b1-4212ddb68d0mr15423065e9.15.1717155838716;
        Fri, 31 May 2024 04:43:58 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:9173:4fa2:d1b3:c8be])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd064b684sm1683064f8f.100.2024.05.31.04.43.58
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 04:43:58 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] busybox: Disable CONFIG_TC for poky-tiny
Date: Fri, 31 May 2024 12:43:57 +0100
Message-Id: <20240531114357.3256740-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 31 May 2024 11:44:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13362

it fails to build with 6.8 kernel headers onwards and is disabled in
our standard builds.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
index 6e9faa41196..245c4368fc2 100644
--- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
+++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
@@ -937,7 +937,7 @@ CONFIG_FEATURE_FANCY_PING=y
 CONFIG_ROUTE=y
 # CONFIG_SLATTACH is not set
 CONFIG_SSL_CLIENT=y
-CONFIG_TC=y
+# CONFIG_TC is not set
 CONFIG_FEATURE_TC_INGRESS=y
 # CONFIG_TCPSVD is not set
 # CONFIG_UDPSVD is not set

