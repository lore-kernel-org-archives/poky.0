Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46664CDB482
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 19:09:31 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.239802.1697569762656622929
 for <poky@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 12:09:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PY1fIaxx;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: bhstalel@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9c3aec5f326so555087366b.1
        for <poky@lists.yoctoproject.org>; Tue, 17 Oct 2023 12:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697569761; x=1698174561; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XQBgkLeFojET/fzKvogHvUFuW4f7jC/JpacUIOf/Xt4=;
        b=PY1fIaxx36mW7UJ0hsAAwvw78P/EdWAkcWBuc0RzUYQ5t6pOw0uSQi1iU3LTOEwRjs
         xMiNgH63+D3DAE87ewW/rWQop5L72PWxXnMqBj4QSK0Newt4GGfpfwlvEA1SCQxazhPz
         3etuyVE+WfS0WdeURfEijBVIDUHSAJQOSJeBiXwFp9HH+CDv2OtM9/ZKxXhS0Kuf9/1P
         Ol9r8uwd4LZTyrnTmfEjyZfs37+3nR4/upiNWwuB5Bffxcy23hd8COnCF03XFnzjX5q6
         FeeRcaJ9cswY7iTmInTOZebcQESMBY3oS3Jjg1ULkrUl5nY2EQxCUY+zgoMvfhS5XIht
         TcnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697569761; x=1698174561;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XQBgkLeFojET/fzKvogHvUFuW4f7jC/JpacUIOf/Xt4=;
        b=YeUVhi67o0Bg22zPgiFPpKJaLFdweDy2IlOPgLDH9GsadxqtT27vaEgCFSkYoPZPRO
         Ri56tW4LMWYSEhsnoKRxp3ijgtmx094zbbJ10zEb/dl/4pecbCXyZpEaymeWQBiPs3YT
         MrYwmiIWYwVi7Edgg9Anb0VIHowZtrzf7FRlusWRZQK8oGl6omsKzOCIAGrcQ263ghvL
         1oKjt8sLz+rNgufn3DaZJoLVRCBgMNjaTnynmd+7lyzJlACmC8d0W5tOgjg2ac8gWAUg
         41Eu7KthJBh1jDKeRiYz+t6L6SsYlr5QmrMmwJKN6hDViWjjimCurYNAFJ9iQi7Z3A7o
         mqnQ==
X-Gm-Message-State: AOJu0YzZDWfEPOZJRU3xk5l/6DH+cY2OrCp+nSZUUyYYb78kH7tCndr3
	bgM+81902847h6hzNMDkX0R8Q8HQOMY=
X-Google-Smtp-Source: AGHT+IEbiVZuZLZkdiIX8PexZ4QJjiOlA5CYauJaSfcVt0UgMKVRB0+P1JyS4IjnMT79pINCcJYWlQ==
X-Received: by 2002:a17:907:ea9:b0:9b2:b80d:da87 with SMTP id ho41-20020a1709070ea900b009b2b80dda87mr2796684ejc.16.1697569760587;
        Tue, 17 Oct 2023 12:09:20 -0700 (PDT)
Received: from talel.sofia.local ([193.95.99.58])
        by smtp.gmail.com with ESMTPSA id hx10-20020a170906846a00b009a13fdc139fsm269139ejc.183.2023.10.17.12.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:09:20 -0700 (PDT)
From: Talel BELHAJSALEM <bhstalel@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Talel BELHAJSALEM <bhstalel@gmail.com>
Subject: [PATCH] bitbake.conf: Drop DEPLOY_DIR_TAR
Date: Tue, 17 Oct 2023 20:08:54 +0100
Message-Id: <20231017190854.3863137-1-bhstalel@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 17 Oct 2023 19:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13181

DEPLOY_DIR_TAR is never used since package_tar.bbclass is removed.

Signed-off-by: Talel BELHAJSALEM <bhstalel@gmail.com>
---
 meta/conf/bitbake.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 77ff494523..2900a8bdba 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -444,7 +444,6 @@ STAGING_DIR_TARGET = "${RECIPE_SYSROOT}"
 # Setting DEPLOY_DIR outside of TMPDIR is helpful, when you are using
 # packaged staging and/or multimachine.
 DEPLOY_DIR ?= "${TMPDIR}/deploy"
-DEPLOY_DIR_TAR = "${DEPLOY_DIR}/tar"
 DEPLOY_DIR_IPK = "${DEPLOY_DIR}/ipk"
 DEPLOY_DIR_RPM = "${DEPLOY_DIR}/rpm"
 DEPLOY_DIR_DEB = "${DEPLOY_DIR}/deb"
-- 
2.25.1


