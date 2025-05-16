Return-Path: <danismostlikely@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF20DC3ABD8
	for <webhook@archiver.kernel.org>; Fri, 16 May 2025 18:21:36 +0000 (UTC)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web10.20112.1747419693105257758
 for <poky@lists.yoctoproject.org>;
 Fri, 16 May 2025 11:21:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nGT77dIt;
 spf=pass (domain: gmail.com, ip: 209.85.166.182, mailfrom: danismostlikely@gmail.com)
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d80bbf3aefso6161755ab.1
        for <poky@lists.yoctoproject.org>; Fri, 16 May 2025 11:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747419692; x=1748024492; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gCAcSXSpKYliI5gVJVswwgdRbXWN3aYHJD4xth85UT8=;
        b=nGT77dItepX1faQmy95eIjKOj0Tdoh4ltTivKSPH5Nu2XdELP5vvbplsUiN2z7QQmg
         76EuuF29WeCUI3Halv9HlPYCWYyujv1/KPciUcsR3GDMjS0uT6PSLltzasnJP1/PHQxy
         c5BL3dSkAQis5uzmkay0lr+vMcxfAfBfverREnO4GAWcNj0W+AHCdqb8urUhfNIJ6YD6
         iXsCqsFNOLeZdNRBLfhXUsVS/hcSNX7VfMrbz1IMLgS9jmv1DUmvpemgxsMkOEKAPA1B
         f9kgpOTcAZs3E5kXCo+sGpmUqUvT4ZnInJY9M6emVl3STl00DY1ivFV+guRLE5Lt/pEo
         1VNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747419692; x=1748024492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gCAcSXSpKYliI5gVJVswwgdRbXWN3aYHJD4xth85UT8=;
        b=ogZsoe/hnGfgJZYmN4tlkajOCc/t7Q1TrL9uybbpG2sqrtGvYeo4gv+0uv8P9VmX/J
         VN18bs5/5GIYqsNo1X5jSA4VJ51zYBNmSKkZ2jF2LN9VQRb6ZIE50lQ3iMLBsIoYg+4h
         ayB8dP9queyNDw4zEfwWO73mGbnB47KDK5Ub2afwzclwfP1v8D4c1Qo13v3xTdKMo6Ni
         my2YWYa5cFBsgWueQ/hhTd6ic7pHt5neFU0UN8oQ81cXBzaLFQxd74pvuBLXhmC8Y5sV
         fhVgQoM4e5iepCvsCCCxittA3hK4xBzoysHkzCzZDlDYh00u14duYU1GALCGEBUFGqNV
         T6sg==
X-Gm-Message-State: AOJu0Yx3XLCAy2dMBjH/mbazBanahUKMZVQtuK+El4pS6KM8WRMEjIlS
	pi1XXZPei1DZq70M2qng/am9VVZtMc9EbeJ4sB65WHloDD2hWs3dtp4jM7de9Q==
X-Gm-Gg: ASbGncuSlWLJanfC6q8+xA981pxyaGV1N1YD9Qm+Tr9ZHx9bzEo2yBPXDXnm9FxKqDe
	UKNOgBh9+dLj4G+6wZc2bxp+3d0WFwRyiIr4CVMhQfsD0viNPOR/ueB8iPWLAejYano2fsbf9UH
	2/Y7n2gYXmCc2zn+hO27XxYB0zlj3CdoB6A1pa2LKJdEkKhuHYy28gLL9OmjS0gl8Zie87zMfN9
	wvo8clXLLYRZR0BNndgEpUgdiBJaTKDRyt+o9aPYxTzpn9s57Ht8b+0g8MijdlDgZVhC0G/nP1x
	YN1AMDjiUXDUF9+LiOKjWKYIAyAkGDP8YGIBKruzUC8FlYNyljo0/8V25bivD576+TFm9HF+Cyd
	+Mh8PjLs=
X-Google-Smtp-Source: AGHT+IEdfOAv3/1YyXe6+RDn38x6xKdYUTWxt5bQo1y9HceWelzojR8kKMUehe37sDBFua7V0nOQkg==
X-Received: by 2002:a05:6e02:1a27:b0:3d3:f64a:38b9 with SMTP id e9e14a558f8ab-3db8433e1fbmr52836755ab.15.1747419691884;
        Fri, 16 May 2025 11:21:31 -0700 (PDT)
Received: from nebuchadnezzar.home.dankm.pro ([204.83.204.143])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fbcc4ea4f7sm500788173.135.2025.05.16.11.21.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 11:21:31 -0700 (PDT)
From: Dan McGregor <danismostlikely@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Dan McGregor <dan.mcgregor@usask.ca>
Subject: [PATCH] genericx86*: allow higher tunes
Date: Fri, 16 May 2025 12:21:06 -0600
Message-ID: <20250516182106.998449-1-danismostlikely@gmail.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 16 May 2025 18:21:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13622

From: Dan McGregor <dan.mcgregor@usask.ca>

Similar to changes in oe-core for the qemux86* machines, allow users
to set higher tuning levels for the genericx86 targets without changing
the default.

Signed-off-by: Dan McGregor <dan.mcgregor@usask.ca>
---
 meta-yocto-bsp/conf/machine/genericx86-64.conf | 2 +-
 meta-yocto-bsp/conf/machine/genericx86.conf    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericx86-64.conf b/meta-yocto-bsp/conf/machine/genericx86-64.conf
index f19a1c1527c..16e7fefc47c 100644
--- a/meta-yocto-bsp/conf/machine/genericx86-64.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86-64.conf
@@ -3,7 +3,7 @@
 #@DESCRIPTION: Machine configuration for generic x86_64 (64-bit) PCs and servers. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
 
 DEFAULTTUNE ?= "core2-64"
-require conf/machine/include/x86/tune-core2.inc
+require conf/machine/include/x86/tune-x86-64-v3.inc
 require conf/machine/include/genericx86-common.inc
 
 #For runqemu
diff --git a/meta-yocto-bsp/conf/machine/genericx86.conf b/meta-yocto-bsp/conf/machine/genericx86.conf
index 34e1448a8c7..4d378cc7f0e 100644
--- a/meta-yocto-bsp/conf/machine/genericx86.conf
+++ b/meta-yocto-bsp/conf/machine/genericx86.conf
@@ -3,7 +3,7 @@
 #@DESCRIPTION: Machine configuration for generic x86 (32-bit) PCs. Supports a moderately wide range of drivers that should boot and be usable on "typical" hardware.
 
 DEFAULTTUNE ?= "core2-32"
-require conf/machine/include/x86/tune-core2.inc
+require conf/machine/include/x86/tune-corei7.inc
 require conf/machine/include/genericx86-common.inc
 
 #For runqemu
-- 
2.48.1


