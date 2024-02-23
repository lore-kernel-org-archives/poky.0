Return-Path: <danismostlikely@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BC9DC5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 16:24:49 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web10.16886.1708705480488851906
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 08:24:40 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: danismostlikely@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-7c4949661a2so39626939f.1
        for <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 08:24:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708705479; x=1709310279;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6L0yqQ4qadJThZzguBEJ8kuP6j9VU9FxzTM7ZD71S2A=;
        b=Z8a+i6PcJwjFhK+g5qAB1iIdiKqbASjWCIY/nxMt1ltKDlyrSPT3CHDuut1XO/U60y
         bEl80eWo+cuymiGZO+RfNR6diT3LqBnbXA8cQ7wz3PxPEwUnWBVKc8eyHyvy7NA6feI6
         Q8DHA55QUR4922/Ha7KDxQ82TyYcgUOEcfArC7v64TCXrznk4tUSXhRUItN4O/DhxY4k
         n7S5SwYukX9sKxve7ZhVJDwMdf4ZK4VQZhyg44m8Oj8lwOPoh41Uzvwb11Rp37SuRTlU
         EbFoXeA+OYvH4xBGUuWLHqQaFJF2QotIieFF21GMdv68JvR0tNl3ouEpYMk4mQxnotM0
         HIyQ==
X-Gm-Message-State: AOJu0Yxihyi+a0mMR/AVxXPQpPhKFxbPXHc9E8IKcTRt7/K9G+iFnW7r
	oQ6quG2lr4AWc0Dh/Jmp12EpMGE/HZWPTAumSEPNbdT5mZbM3bGYvE4nmI+XGEk=
X-Google-Smtp-Source: AGHT+IGRLr9KE9E5AF1c15FhXsQ0Z+sGD0AKPHRkqYrJimHDOyTGo8k8yYbC57gQx70F4DmX9NQCcA==
X-Received: by 2002:a6b:7201:0:b0:7c7:8ed4:aeba with SMTP id n1-20020a6b7201000000b007c78ed4aebamr387490ioc.0.1708705479462;
        Fri, 23 Feb 2024 08:24:39 -0800 (PST)
Received: from nebuchadnezzar.home.arpa ([204.83.204.143])
        by smtp.gmail.com with ESMTPSA id w16-20020a05660201d000b007c76553d2fasm2010677iot.47.2024.02.23.08.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 08:24:39 -0800 (PST)
From: Dan McGregor <dan.mcgregor@usask.ca>
To: poky@lists.yoctoproject.org
Cc: Dan McGregor <dan.mcgregor@usask.ca>
Subject: [poky][PATCH] base-files: only show usage warning for poky
Date: Fri, 23 Feb 2024 10:24:23 -0600
Message-ID: <20240223162423.1873523-1-dan.mcgregor@usask.ca>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240207164849.4039004-1-ross.burton@arm.com>
References: <20240207164849.4039004-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 16:24:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13274

meta-poky may be included with any configuration based on poky,
not just those using it as its distribution. Only apply the motd
warning to the poky distro and its derivatives.

Signed-off-by: Dan McGregor <dan.mcgregor@usask.ca>
---
 meta-poky/recipes-core/base-files/base-files_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/recipes-core/base-files/base-files_%.bbappend b/meta-poky/recipes-core/base-files/base-files_%.bbappend
index 8802adbb46b..480f568f7b4 100644
--- a/meta-poky/recipes-core/base-files/base-files_%.bbappend
+++ b/meta-poky/recipes-core/base-files/base-files_%.bbappend
@@ -1 +1 @@
-FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS:prepend:poky := "${THISDIR}/files:"
-- 
2.41.0


