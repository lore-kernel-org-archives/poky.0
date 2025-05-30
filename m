Return-Path: <marcin.bajer@salwatorska.pl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D99BCC5B549
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 10:08:34 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.2999.1748599709678821440
 for <poky@lists.yoctoproject.org>;
 Fri, 30 May 2025 03:08:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@salwatorska.pl header.s=google header.b=Ec88hn/Z;
 spf=pass (domain: salwatorska.pl, ip: 209.85.218.45, mailfrom: marcin.bajer@salwatorska.pl)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ad89333d603so350026266b.2
        for <poky@lists.yoctoproject.org>; Fri, 30 May 2025 03:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=salwatorska.pl; s=google; t=1748599708; x=1749204508; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nwTEloPfjMLDHpzmcMXRoGKpoNpsK23DrYzD0ejSosA=;
        b=Ec88hn/ZtZNY2qucgEVpwQIj/sL4m8H8skP2WtDR4zeVTyCmAGe8V3CFnB+WemOnTf
         QUMAFOm/qUt+MMBQp7OAW0F+XJUkEVmnrhS3pRiCCjllDxnGO3bimYMpEL/tc0KE5Qn3
         ZeDWvf+6FLnYgHUpnhzGjMuh81snU6IJxDhLTSUxiuU9ViwgTkqANWuC5jYv5QBa+/kq
         ZGGgV8CocVtCGeefTuwguReVwA1IFL44e1surqPBom/uT5YugLCGGh1D+lr7bqfbGc3N
         CoFBumNXSb0Qd3G40Z7VEKtgsBCg6v07hBOy3dVZj/jijmNBavlO7wZYf0Ck/hpTlPX0
         UFbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748599708; x=1749204508;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nwTEloPfjMLDHpzmcMXRoGKpoNpsK23DrYzD0ejSosA=;
        b=L9ztK6XNI4rpULuPHtkz+X/of5tk4GN7MRfFtx/m75H1SbTFvqo6RNDPCjwQ7c5rrw
         9df/mi9sWDp2vbssrqX3okxr0RUgVqBcq4fdVu9hT45U8Q+QNZZpUX3gAHRtKk21/Tfx
         qv1B6OhEREH+0pUNzwnlhovvV7zNGSNnWiImR6sY7g0untuaqA6NLN7u9bH0LD10j25u
         ltT5BHKxBDgN3oOlhu4wUbZYlrj117tA7UC1xluGIKnpctJoWd2iKB01AdZfDdkvguWq
         um7HDEcvtiRYz8N7z1TQwbb7QSa22e4WRgwoVB5gW/UhWW9aI8QBOqL7DJGb88bSZWR3
         LNeA==
X-Gm-Message-State: AOJu0YzNVWhan+I4G7wNjAFJ3HO9CdTdaxgcihQSILDrtf4IF9g7CROZ
	4VgWImelv+jljFrq27fQDGB3APLhZ1afqcSMCaZE2CsSIUltSL0L4pIjoAeze740HPZ3ZuQJ+Fm
	Nj2Ta
X-Gm-Gg: ASbGncuu87TNIVAit+vZKzIAuLoI8wWIPg4zPhiiLUNXNtefDswcXuvH7qLvN9L4FEN
	68zW0a292+T0lsNrjtuYX4atQr2cSTsZd3S3PiSsm9OX0lDtqpixPb3zfAvNqIGf5x5AOBMJVAb
	RvS+qtPVdmBC2YoEqtWZo4VenEojhJ6HeEu8IOzADf3XZYXaUxAsoxIczm+YBBSc86q0+5V8wr4
	F1NY94sMhaQvIfZj8gmb8cdiHRA/etWDNk9RU4FHT8XT5cYoHann7xCQzuWqQOEVMHcqUzeH/Lh
	W+tBVs3yb1v0+H2YuNGd/uhPKnUVImll6LPRfkxCpStfCEuD3hag2HPAwVUfYvBEwRKVwTH65hS
	rMRnk31jb
X-Google-Smtp-Source: AGHT+IEbQEYe0LmwdzqkwPPVoLIgrKE5tYMlEC7j+8yUV7/pIaItGglYgrCLRnBH/bVFYp6gLQ/3RQ==
X-Received: by 2002:a17:907:da6:b0:ad8:9c97:c2e7 with SMTP id a640c23a62f3a-adb32285245mr269881666b.14.1748599707665;
        Fri, 30 May 2025 03:08:27 -0700 (PDT)
Received: from plmabaj-ThinkPad-P15v-Gen-3.. ([89.171.129.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7fec76sm301352766b.20.2025.05.30.03.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 03:08:27 -0700 (PDT)
From: Marcin Bajer <marcin.bajer@salwatorska.pl>
To: poky@lists.yoctoproject.org
Cc: Marcin Bajer <marcin.bajer@salwatorska.pl>
Subject: [poky][PATCH] bitbake: wget.py: Fix missing uri query parameters in uri creation in checkstatus method
Date: Fri, 30 May 2025 12:08:16 +0200
Message-Id: <20250530100816.737484-1-marcin.bajer@salwatorska.pl>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 30 May 2025 10:08:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13625

Appends missing query parameters to uri in checkstatus method.

With commit 89ccf603d8119c34f5398dbd737e6a0b805234d3 all query parameters are removed. This breaks az.py fetcher in case of using SAS authenicated access. To check if blob exists SAS token needs to be addes to URL (https://learn.microsoft.com/en-us/azure/storage/common/storage-sas-overview#sas-token)

Fixes #15299

Signed-off-by: Marcin Bajer <marcin.bajer@salwatorska.pl>
---
 bitbake/lib/bb/fetch2/wget.py | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.py
index 7e43d3bc97..93e902d8f8 100644
--- a/bitbake/lib/bb/fetch2/wget.py
+++ b/bitbake/lib/bb/fetch2/wget.py
@@ -373,6 +373,8 @@ class Wget(FetchMethod):
             try:
                 parts = urllib.parse.urlparse(ud.url.split(";")[0])
                 uri = "{}://{}{}".format(parts.scheme, parts.netloc, parts.path)
+                if urllib.parse.urlparse(uri_base).query:
+                    uri += "?{}".format(urllib.parse.urlparse(uri_base).query)
                 r = urllib.request.Request(uri)
                 r.get_method = lambda: "HEAD"
                 # Some servers (FusionForge, as used on Alioth) require that the
-- 
2.34.1


