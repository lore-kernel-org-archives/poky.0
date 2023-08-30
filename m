Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C1AC83F01
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 15:39:33 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.385.1693409971314267830
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 08:39:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dT6PNclH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-401f503b529so5705265e9.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 08:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1693409969; x=1694014769; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=6DRtExQMbJvlSGaXtMf/xC3NebYD2M6Fz4PWyOxsSGs=;
        b=dT6PNclHaAIRuGyl+rrzZveEODUKM3VIOAN+9J3SH7qxYQ4oRPv5pvLBlfnM20Qv9M
         /9c0UOPHgzQz/9qRbCGXOhp+pvTQgLfWtDnK+ZL8VbLV4zLYys7PwZX1tqQaZWLKQXgg
         BGCL2Xq/LyWe0o97MwMvozd4eTfVFzkLE0kII=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693409969; x=1694014769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6DRtExQMbJvlSGaXtMf/xC3NebYD2M6Fz4PWyOxsSGs=;
        b=OEezKh6+7LUzluU4kmVjnweByK9U6jpmCI2oStTSAhet0YIMGLjICe4EVdFkksrNuJ
         MOeB9kFEnhl0adSWxY0I5F0s9Kq1CwEEogrbXHaCVwK/Q4LnJOPDcRSbZ4wCKEbdhM/f
         d2k9bDvC1w7mGKXzZwaBShnd5d2h3i3oa+WWh0jalm9trE1n0aRTH72wP+ZStZHLIDks
         5UlRqDe7+XVtDB+gE6bGDiO08uldNvWwz3XtZYwz0KD4Fh+VjrznTqQeFi713Kzn2G8H
         89FLInUxmoNjqk4hEishqrJcqTxB1LStCh3FKQ2YXZq4PQYkqLATqE/P3rqkWvAL4rlp
         dCVA==
X-Gm-Message-State: AOJu0Yx9ys8fFIRYjlaeX6adIQJtZs0SO+h+ZgZvjNpyWxH9J69CjXv9
	hUbo8Ajt1z0hdWMmaDurRBsn1bVtTfmYzHseWA0=
X-Google-Smtp-Source: AGHT+IFUmV4XfucZNpQ1TsH/HUhtmP75CzBntYU9ULRHd4Qn4iLuIsMZxXRMK06eCuQYW8GkWmU3VA==
X-Received: by 2002:adf:f691:0:b0:311:3fdc:109d with SMTP id v17-20020adff691000000b003113fdc109dmr1803003wrp.1.1693409969117;
        Wed, 30 Aug 2023 08:39:29 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:15ec:a052:9304:60a5])
        by smtp.gmail.com with ESMTPSA id g5-20020a056000118500b00317b063590fsm16986067wrx.55.2023.08.30.08.39.28
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 08:39:28 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] README: Clarify/standardise contributions process
Date: Wed, 30 Aug 2023 16:39:27 +0100
Message-Id: <20230830153927.2016454-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 15:39:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13138

Now we have a contributor guide combining various wiki pages, point at
that and standarise our approach across layers.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/README.poky.md          | 15 ++-------------
 meta-yocto-bsp/README.hardware.md | 15 ++++++++++++---
 2 files changed, 14 insertions(+), 16 deletions(-)

diff --git a/meta-poky/README.poky.md b/meta-poky/README.poky.md
index a99c75ed5cb..7dd5e6d8316 100644
--- a/meta-poky/README.poky.md
+++ b/meta-poky/README.poky.md
@@ -34,19 +34,8 @@ For information about OpenEmbedded, see the
 Contribution Guidelines
 -----------------------
 
-The project works using a mailing list patch submission process. Patches
-should be sent to the mailing list for the repository the components
-originate from (see below). Throughout the Yocto Project, the README
-files in the component in question should detail where to send patches,
-who the maintainers are and where bugs should be reported.
-
-A guide to submitting patches to OpenEmbedded is available at:
-
-<https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded>
-
-There is good documentation on how to write/format patches at:
-
-<https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines>
+Please refer to our contributor guide here: https://docs.yoctoproject.org/dev/contributor-guide/
+for full details on how to submit changes.
 
 Where to Send Patches
 ---------------------
diff --git a/meta-yocto-bsp/README.hardware.md b/meta-yocto-bsp/README.hardware.md
index 8ea0ef14614..a8f38cb21a6 100644
--- a/meta-yocto-bsp/README.hardware.md
+++ b/meta-yocto-bsp/README.hardware.md
@@ -33,10 +33,19 @@ The following boards are supported by the meta-yocto-bsp layer:
 For more information see the board's section below. The appropriate MACHINE
 variable value corresponding to the board is given in brackets.
 
-Reference Board Maintenance
-===========================
+Reference Board Maintenance and Contributions
+=============================================
+
+Please refer to our contributor guide here: https://docs.yoctoproject.org/dev/contributor-guide/
+for full details on how to submit changes.
+
+As a quick guide, patches should be sent to poky@lists.yoctoproject.org
+The git command to do that would be:
+ 
+     git send-email -M -1 --to poky@lists.yoctoproject.org
 
-Send pull requests, patches, comments or questions about meta-yocto-bsps to poky@lists.yoctoproject.org
+Send pull requests, patches, comments or questions about meta-yocto-bsp to 
+poky@lists.yoctoproject.org
 
 Maintainers: Kevin Hao <kexin.hao@windriver.com>
              Bruce Ashfield <bruce.ashfield@gmail.com>
-- 
2.39.2


