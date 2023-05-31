Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D728C77B7A
	for <webhook@archiver.kernel.org>; Wed, 31 May 2023 18:27:08 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.1964.1685557618868247244
 for <poky@lists.yoctoproject.org>;
 Wed, 31 May 2023 11:26:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20221208.gappssmtp.com header.s=20221208 header.b=PeHBGzWY;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.178, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1b02497f4cfso31611805ad.3
        for <poky@lists.yoctoproject.org>; Wed, 31 May 2023 11:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20221208.gappssmtp.com; s=20221208; t=1685557618; x=1688149618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQvfnK6nL+nOsu8g8zw8KJjhPyGKoXNBqTt+/FgknIk=;
        b=PeHBGzWYvk2KZbOV3ELl/dVShkJw3S4yqltB9hxmpraGMxzAdG0dqwr/qsBlrReq3m
         IJpsG/dvGTZIItbHQgS/veSiMewrplpIfbGEp6B8x2Y4tZIUB6z6w7Ly2UNKXNlCxBDM
         Xs6Jx0OI6VvLMHhACmQJ8kAIxjUXbvl4ew+q+zoxBlGgAtQUmWTaOly5/CAOC1AMoF/n
         sSQEs+fHUutCGUethoN86MchHWxu4+Vk808/ME7g1spVYfExjyr2FXqHMGzXx4CU/4Xl
         YvJk9XApRgjVTVX7Xxiy0RBqcPzjY5JWbwtwbPBgJ6TpgpSaHADnwS2UonPuN4B+IIWZ
         3sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685557618; x=1688149618;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aQvfnK6nL+nOsu8g8zw8KJjhPyGKoXNBqTt+/FgknIk=;
        b=PcN0d76TpvM7NEmhPCnzrMdAgz7OqG1yvBiudLz74AKiV/I6Mpr9jZ+Cexu33A3m7q
         B1kyizV51OOteU4AsjBRYTpQmkOKaItMN5pIGW0vQOcRxGVgtYYPjg9EF2+YUlgT3DJ3
         cgN+2sl72WnEiqw2h9gNIoHyIfD1F++6w+1tswXUu7k9/AixXBz7OdU9K2K2wJEMgRpA
         fUtoIfnFlHL4nJRw8rxMBnTtOtu7WvOFOILqWofu2cYQbSgDBj+Q98n8EuZjUpS9e6fe
         yDJ73I5VVstsSTy8zDPWmFVxcEZWCWIRHVjvWjCqk5AnFfCq5P21QO8+mDOhetO4en53
         aPPA==
X-Gm-Message-State: AC+VfDyOyzHExAuJmwtb0NM1LYuE4pas933UyUtbMuSbN2466fWFzr1R
	ppcIeb4myp6HxwUBOHsWVbxq1xzfTKnxxwSunt4=
X-Google-Smtp-Source: ACHHUZ6GWxcqDAM67C9P0BQFTnxsZmrZlimbDZpBSpgDxfN477sIjlA0bqpqtD44BD/z4rafXBfSDQ==
X-Received: by 2002:a17:903:22c4:b0:1b0:aec3:ed52 with SMTP id y4-20020a17090322c400b001b0aec3ed52mr2682561plg.50.1685557617712;
        Wed, 31 May 2023 11:26:57 -0700 (PDT)
Received: from hexa.router0800d9.com (dhcp-72-234-106-30.hawaiiantel.net. [72.234.106.30])
        by smtp.gmail.com with ESMTPSA id h22-20020a170902f7d600b001aaf2e7b06csm1709785plw.132.2023.05.31.11.26.56
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 11:26:57 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][dunfell] config.json: use buildtools for rocky9 and opensuse154
Date: Wed, 31 May 2023 08:26:48 -1000
Message-Id: <0cc82209460f3bcf4e8fbaaacde31742ac30631e.1685557556.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1685557556.git.steve@sakoman.com>
References: <cover.1685557556.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 31 May 2023 18:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13074

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index dcd2e66..dac9d62 100644
--- a/config.json
+++ b/config.json
@@ -1149,6 +1149,9 @@
     "buildtools" : {
         "debian8*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
-        "perf-centos7*" : "${BUILDTOOLS_URL}"
+        "perf-centos7*" : "${BUILDTOOLS_URL}",
+        "opensuse153*" : "${BUILDTOOLS_URL}",
+        "opensuse154*" : "${BUILDTOOLS_URL}",
+        "rocky9*" : "${BUILDTOOLS_URL}"
     }
 }
-- 
2.34.1


