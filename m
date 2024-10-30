Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB79CD6B6C4
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 19:07:00 +0000 (UTC)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web10.23719.1730315212759825735
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 12:06:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=g/aCbxCH;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.169, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71e681bc315so159090b3a.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Oct 2024 12:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1730315212; x=1730920012; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y3H9CGjk0ldWsYg90u+k9/8l6oNMh2WexctAwH0Fq6Y=;
        b=g/aCbxCHlq1IdgNPWeCdMfMdGnxwM/HMAYcz9Z3Q12QcYX02cEgYggXNpdRUYdiouB
         yKceKYYcMiFzUkv6Bm3Yfpyo7BFHC5hTOSiJ4KdYVWMktcW1Bb9f0pDJsNtkw9itUQy5
         VOn9tW50TUwc5qQl5iIkbSyxl2IoUd5AJr0JqwD/1wAiJc3pzCTQVrtpGyTwFmJlJwkG
         ZI5WYBN5EqGcNjtFF8Rm//iRCt6LvwqHRmXI1kjEiDvtN0Y5M1/9SV8a6VVLpJhDzyTH
         PCftJ23ZEKpIaG/AYxEWvUgKdrzmFdJE/LtXcnVvdnF3se0Dz/E4qsNLh7XpVrih1SSv
         08PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730315212; x=1730920012;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y3H9CGjk0ldWsYg90u+k9/8l6oNMh2WexctAwH0Fq6Y=;
        b=HTSxWSkU+63BHpVnoqpyIU/vyYwcH/PWr6AWS3OUfRylq75FYGCweKrQQOKutowhqj
         ElF1eutJEkGY+qK9KxydM3mXEYTUxHs9fXyJU4q4FyJCX5xx4iqtF4jg6KXhyTzRT1r4
         NPGW495jrebYvx22ZjmK9kk4huP08GR0k8F5muBOmcxxVAv46FEaobGaM7hw9QhdgbtY
         XB4WmAY3DWBguikj1+DJ4Lx8Le5c2dTmdWvEAc9kdl1Fdq4Z6seLuhoEIySz7KtfYKd/
         ZX4l2QfCHpAxPIjFgXTttehMMjKHXjvAsWJDsvEBN4bvOe1dc+eqdPE7rdpLCt+gYHn4
         ewaw==
X-Gm-Message-State: AOJu0YyGfAdWNUTdIaN2CmKG9NEdwAn6fnZoTlLjb8TNEYwu4O9PHmHj
	VFmGJC5CNa7SpejeouyU990dOyLu9Gc+dleoXJbpVTpPfnfbs0LJddhYVQCpEOtzHDLZ9NTiJ99
	N
X-Google-Smtp-Source: AGHT+IEnv3CKKJzyA4gTpX8wI7InbwmcYu1xN3ALx9245cm0KCnV3pp0XA1S1O/4kLUmM2NfgNDTGg==
X-Received: by 2002:a05:6a00:1809:b0:71e:40cd:b607 with SMTP id d2e1a72fcca58-720ad254131mr5517080b3a.11.1730315211764;
        Wed, 30 Oct 2024 12:06:51 -0700 (PDT)
Received: from hexa.. ([98.142.47.158])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7205793192csm9619503b3a.46.2024.10.30.12.06.51
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:06:51 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 1/1] local.conf.sample: update BB_HASHSERVE_UPSTREAM for new infrastructure
Date: Wed, 30 Oct 2024 12:06:45 -0700
Message-Id: <d56ba3e1ec46668999e64e967765f186e287d792.1730315170.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1730315170.git.steve@sakoman.com>
References: <cover.1730315170.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Oct 2024 19:07:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13472

Public hashserver is now at hashserv.yoctoproject.org:8686

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-poky/conf/local.conf.sample | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index ef491d4..97d9450 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -229,7 +229,7 @@ BB_DISKMON_DIRS ??= "\
 # which will depend on your network.
 # Note: For this to work you also need hash-equivalence passthrough to the matching server
 #
-#BB_HASHSERVE_UPSTREAM = "hashserv.yocto.io:8687"
+#BB_HASHSERVE_UPSTREAM = "hashserv.yoctoproject.org:8686"
 #SSTATE_MIRRORS ?= "file://.* http://sstate.yoctoproject.org/all/PATH;downloadfilename=PATH"
 
 #
-- 
2.34.1


