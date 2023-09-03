Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F0B9C83F2C
	for <webhook@archiver.kernel.org>; Sun,  3 Sep 2023 08:55:15 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.24534.1693731311549212859
 for <poky@lists.yoctoproject.org>;
 Sun, 03 Sep 2023 01:55:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=PZSaaxD3;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-977e0fbd742so67797466b.2
        for <poky@lists.yoctoproject.org>; Sun, 03 Sep 2023 01:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693731310; x=1694336110; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBm+On0kWLyB9+MJInXm7GszSINYL1e+XGA/6L/3sBA=;
        b=PZSaaxD3ADvzXEAAlZ45tfeqD0txlg/BAMxVZ924/2sBeSzgGCEruTPIDIkMO6orOY
         wxFZwalXeDAsbZY/cQP9BtnRHN1t9lO5R+h1HFREsTaYjo20iXjZCfPFszGJJWHaho5w
         6cXO8e2SsCjNWyFA6PxJADbSE7hWcDCm6JnuXieeqmA6vVaIzj9HV3FRZSp2dgkBG3S0
         ElyX7aZ8UatPUhMjGgmL80Z46j35fDLaRigtFz4TEFTTSBA+E6uDpaes1SYCk+WAq9uA
         /HtB004UPwg/6TY53eSK2g4djhVLjkRaIJqOMFXrRzdqYMy+1HXSb1e221atztp3FgPp
         UNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693731310; x=1694336110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HBm+On0kWLyB9+MJInXm7GszSINYL1e+XGA/6L/3sBA=;
        b=jbU6dF2ZHJTXQpjyfnEcpfSh8MxiLRB171hBe3LSSv8qWbwkvrHwG/ZzWYmmeUwwnD
         xNzFKkQahpjhFYJK+EMiszu1VipwflYaCzz5p8+knY49oz45USeXxH8CJ9b/I2RdMXUO
         YZu9mTO36rhNFm/lwr4YJx6ocn6tfzFE2XvZswf0GSOhsUKkhol0gGjDN1rMbxnc4n5P
         VXoXtluc2LjBsTFEMD6zlY8merbgC/lLx5I+Oxfdlto+eMv/MfgD1BpXXc7sJsQ5BGVp
         JU22auOyyh72APuzbHAeDoVK8RK1tMvbvM7+3bxT6wuHr6E6iUDtS74L9g8VX0Klmfci
         H6ZA==
X-Gm-Message-State: AOJu0Yz+or35vfKtSFJvDWJvIH14zdAVXyjMwnob1nDxja4W1Hx3XQ73
	mB6w/rLj8vN+S88ppZuTA4FF3fAYL4g=
X-Google-Smtp-Source: AGHT+IE6OnS6hqKuMjoCTPwkK5b5nQGyHEF+oInG2dLBlyjlIN+BfOb/YVrzL//YxAG7PO2kpSCJjQ==
X-Received: by 2002:a17:906:224a:b0:9a2:40e:2cb6 with SMTP id 10-20020a170906224a00b009a2040e2cb6mr5338007ejr.59.1693731309543;
        Sun, 03 Sep 2023 01:55:09 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id kt8-20020a170906aac800b0099cb1a2cab0sm4542031ejb.28.2023.09.03.01.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Sep 2023 01:55:09 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Martin Jansa <Martin.Jansa@gmail.com>
Subject: [PATCH 2/2] README: update/fix contribution guidelines
Date: Sun,  3 Sep 2023 10:54:43 +0200
Message-ID: <20230903085443.684963-2-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230903085443.684963-1-Martin.Jansa@gmail.com>
References: <20230903085443.684963-1-Martin.Jansa@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 03 Sep 2023 08:55:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13147

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

- Ask to CC the docs@lists.yoctoproject.org mailing list
- doc/README: fix the command to generate the manual

(Bitbake rev: 8332664f9141d2c12f70589ebd2eed7eeddd8f77)

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 bitbake/README | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/bitbake/README b/bitbake/README
index 56d6876876c..38a461f5c91 100644
--- a/bitbake/README
+++ b/bitbake/README
@@ -26,6 +26,11 @@ The git command to do that would be:
 
     git send-email -M -1 --to bitbake-devel@lists.openembedded.org
 
+If you're sending a patch related to the BitBake manual, make sure you copy
+the Yocto Project documentation mailing list:
+
+    git send-email -M -1 --to bitbake-devel@lists.openembedded.org --cc docs@lists.yoctoproject.org
+
 Mailing list:
 
     https://lists.openembedded.org/g/bitbake-devel
-- 
2.42.0


