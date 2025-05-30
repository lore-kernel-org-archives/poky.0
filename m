Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE153C5B555
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 17:42:29 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web10.1320.1748626938913620999
 for <poky@lists.yoctoproject.org>;
 Fri, 30 May 2025 10:42:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=taT+6G9P;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b13e0471a2dso1558546a12.2
        for <poky@lists.yoctoproject.org>; Fri, 30 May 2025 10:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1748626938; x=1749231738; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hxlxnVjoePf4VD5M70ZzD7xoA7sDFp7FIxFMYkFBLq0=;
        b=taT+6G9PMcSn3fN35BMUBB2RhMxBBPy7w029XncQLfAR0p3t0SnEwfZwvTX8HqZqFd
         kGaV8rOOKVxJqpIsImmllytbLZqTBJTJ5Dp7eDmb10CNmH8g/ynLci71dDi0y5n7Ys9l
         nIOSk8oi+j+GPPiIKKREUwejJrIpI5ky5ZJP6LAJhr4BRKa0FaEjxIchWR2T1jHy+5ac
         k1si41OMmLSGR8UeMgPmMQZDce6n2oEhYCpxEAnKUxt3QQgXJnKmtUbK2n4TYw0pxMya
         Z6PDDaMoYjhsNaVtv3yBNtVYg9JKJg1IhUxXZ1DkdBpdoUllKG+e6+o8ekqYUvuthZ/5
         LpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748626938; x=1749231738;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hxlxnVjoePf4VD5M70ZzD7xoA7sDFp7FIxFMYkFBLq0=;
        b=AYDZdHNpvAGe4X169iTCbQ2PExSaOY9hlY6dZ9UYX9k6YxHUKde//jWQhtIqUTN9np
         D5wlDFTRIB4h7tFsuaWcpMqP+4HxwVa9AXgjVSlknC1q9M0Tfprqlr8NwbvK6Pw8I46u
         z/DDyypSBiQ7dyAT3VVDs9E0vrlf9ZYZclLDfKpssOa+Mf+/BWoEjOxRHznhybSQzZ1Z
         +9yU+5YLOCqhLUYS3spEoYUc3bjj1bi9GEVQYaZHpFltnOd20tvbctEYcIZ4FRzHH3Rt
         wD9ucQfhZc5SiFpKOPL1iPS4r5d6fEzZO/7D611T7Qp8LQUQRiMPZxGdrA1nbugxlcGH
         JohQ==
X-Gm-Message-State: AOJu0Yx+8Z4ea0UhV13NoIG7ys5Py4sZTwxko7Mh5gjfkY9s8DFU8lGA
	f+lNzPCo0HPr+kdQ8qXBnPVIp/6d9jET0oJNx4sNAKGuoPGjSPRmM9uQG6xFXRJFVOYzjuj7XD8
	KS+qv
X-Gm-Gg: ASbGncseUOJJ91s9RyL7hvad4660VWgX4r5u8M3YWA/3GXMF8wyhMeXBzMEIerLcCk7
	GvA8bH3473P8YxG8jNJkIaOR1DggwkZ8DgBBZd0cb15JIJ7KNGp/KRGDT78/soZLe8CEEPqZAKQ
	KnYW+sjMM3RDPBtvMApMj+Fsz/27+OJnKYZasX1TLVydBWYZMS3NB8zd0PirDA/76/cWBOycGx3
	QoJ3b7bmlwg/V3d890fpE1a9jdrht50M4WSVgThyasDguSHL4urKh+hJ/uYdRPmIU68ABr6vFDI
	9XuCrub005vJtE8r9tM3bDwZpRXs8FmdBYuyeaVxy4E=
X-Google-Smtp-Source: AGHT+IHYh9BYvhsyp4qeGKtA6+EbUoqYrOmgx/ylEud77pHx7EfAXKMYrd81aoMNrOwmBvNC62edUQ==
X-Received: by 2002:a17:90b:48d2:b0:311:ad7f:3281 with SMTP id 98e67ed59e1d1-3125036ba85mr5181217a91.12.1748626937936;
        Fri, 30 May 2025 10:42:17 -0700 (PDT)
Received: from hexa.. ([2602:feb4:3b:2100:c9d8:e2d0:bfbc:3a26])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2b544asm1622039a91.2.2025.05.30.10.42.17
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:42:17 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][walnascar 2/2] local.conf.sample: Switch to new CDN
Date: Fri, 30 May 2025 10:42:06 -0700
Message-ID: <d4f018da2c709ba1135889206694148c6001cd29.1748626837.git.steve@sakoman.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1748626837.git.steve@sakoman.com>
References: <cover.1748626837.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 30 May 2025 17:42:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13629

From: Richard Purdie <richard.purdie@linuxfoundation.org>

The project is switching the way handle our CDN provision of sstate objects,
update the URL accordingly.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit e5b8e76ba8232860943406e1c53e71b3d2790f17)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/templates/default/local.conf.sample | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index 7dc44d9..ecc33c0 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -240,10 +240,7 @@ BB_DISKMON_DIRS ??= "\
 # Using the CDN rather than the yoctoproject.org address is suggested/preferred.
 #
 #BB_HASHSERVE_UPSTREAM = 'wss://hashserv.yoctoproject.org/ws'
-#SSTATE_MIRRORS ?= "file://.* http://cdn.jsdelivr.net/yocto/sstate/all/PATH;downloadfilename=PATH"
-#
-###SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
-
+#SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
 # Qemu configuration
-- 
2.43.0


