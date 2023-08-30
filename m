Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E6AAC83F17
	for <webhook@archiver.kernel.org>; Wed, 30 Aug 2023 14:16:13 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.14935.1693404964675097456
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Aug 2023 07:16:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=HcZutDaN;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9a1de3417acso207946866b.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 07:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693404963; x=1694009763; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ciUtO8PJEsbUaoy8xRhPbUPgVbULMLF8FpG+qVN6z9s=;
        b=HcZutDaNGpZM4LIv8k0YeUBwqFigX4BfBKhS0lDkEMPr9XcJMRIx/+T1Fyw9TwpbCm
         MZ0lmfTY9fxgZ3CUacJtg/Ep7EfDU5RO7iEop6sH7YtJlv8uc0ONPaqcEfqgfNqcSpBV
         Mtdwzen8JuoJikAwh3Gj2O3IEyabtqUNpRvZbglpUeYrfgSjsY34MvZgvlPIFDiuLA7W
         biGL+kG3oyR7/Roa9LWS5R56TH5XGnQQbJgae1OPgIJcV2G6ipmZeUVpbSxKLgWp+7C4
         RoZIsjK+sDDdE2HTxkyuWYcGRb8/9o99TzNNIbNmB9GCYXBjqOfvwdSBMgRltoWBqsyO
         08xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693404963; x=1694009763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ciUtO8PJEsbUaoy8xRhPbUPgVbULMLF8FpG+qVN6z9s=;
        b=HwhCVsIW2hrD3yL0E0wU4Eia2C8M+Z3Kq1fAoQT0LG1VpDEs2X7KGg1HbjKC4Tk4x2
         +VJa2K1pHXC62lvzWdWD3X/+D5pctg3nsWSF7l87hTIjlMws4ELVTIv/wQfqPHVNIJJp
         yS/4HEvL9rl4ZNiP2YXatwIWwYPTGFuiggj0qeW8VBmvOOeY4cV82yyRmeyo4d8ySwQe
         kvM7R9guwaxE+vt4ojqqc+M7ky74e7qdTeUrDwL+WTsO6aQ1jRgCGHqKOTvCyfAaZIB6
         fBxJUAO1EVveODTLJUBsyAEFOQ6PR0Ck8DO6T6VBiLsdfsBFFN784L0DJH1tlHMwk33G
         rW/Q==
X-Gm-Message-State: AOJu0YxajLiBNYnOKC3G3Do+PG7UUchXzIzLr/Gh/pjG0WHIM8qMrdFf
	HDCqE0nNMW3ZSt5hh/OosrCZazGiXs8=
X-Google-Smtp-Source: AGHT+IFQbNlQ4gqNu4VByCEoLz8r4Lv9If5TyBQyEQPP2WKcazsZTmaBBxlrjYeD0jTR2/jySK79Jg==
X-Received: by 2002:a17:907:75d4:b0:9a1:b144:30f4 with SMTP id jl20-20020a17090775d400b009a1b14430f4mr2968731ejc.14.1693404962885;
        Wed, 30 Aug 2023 07:16:02 -0700 (PDT)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id q4-20020a170906144400b00992f81122e1sm7233742ejc.21.2023.08.30.07.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 07:16:02 -0700 (PDT)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/2] meta-poky/conf/templates/default/conf-description.txt: add a template description
Date: Wed, 30 Aug 2023 16:15:55 +0200
Message-Id: <20230830141555.656242-2-alex@linutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230830141555.656242-1-alex@linutronix.de>
References: <20230830141555.656242-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Aug 2023 14:16:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13137

There is a need to separate the template notes (which are lengthy
instructions about how to use the template) and template description
(which is a short explanation of what the template is for).

This patch adds such a description for the poky default template,
and updates to the tools will follow.

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/conf-description.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 meta-poky/conf/templates/default/conf-description.txt

diff --git a/meta-poky/conf/templates/default/conf-description.txt b/meta-poky/conf/templates/default/conf-description.txt
new file mode 100644
index 00000000000..8fc03030c7f
--- /dev/null
+++ b/meta-poky/conf/templates/default/conf-description.txt
@@ -0,0 +1 @@
+This is the default build configuration for the Poky reference distribution.
-- 
2.30.2


