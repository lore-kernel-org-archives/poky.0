Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6134EC47DB3
	for <webhook@archiver.kernel.org>; Wed, 31 Jan 2024 12:38:57 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.12838.1706704732182470748
 for <poky@lists.yoctoproject.org>;
 Wed, 31 Jan 2024 04:38:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G1bsJZKR;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-40e8d3b29f2so56040785e9.1
        for <poky@lists.yoctoproject.org>; Wed, 31 Jan 2024 04:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706704730; x=1707309530; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U03rNiOB1RHppzx6kw7Z5JH5wuaCNu5oh2QoBn+kc1U=;
        b=G1bsJZKRPxw8dMWURCe2Cl0SbRBunEH2I7e6u9w844nVEdVghRU33KAMr5stZWrjRC
         Fl7Wq7AdajLmAOhcOrNhJrBMVtl9JKrpRf6FlBXgZRsEFp01qvDCrKMvw3H1tRLCV/2T
         lyn/zqoroo7wU9w8JoYQbgwO/A2nOBkRtgj+JFj/bpbPpG1A5r/gAJf72GZNRkU4Bgz8
         cwE8wb4ovb/MjJBfaMOvPLto2yysWzLHEcD2WdXWRjD29QTMRz+QF3Siskw/nIU/L3Aj
         Kv5+HAsoa82JjQq0DSQ9LO6v/lLT8Xw4s01fITaUFj0FgCSnCc1IF6cX/BBqsRtgvFqS
         tE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706704730; x=1707309530;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U03rNiOB1RHppzx6kw7Z5JH5wuaCNu5oh2QoBn+kc1U=;
        b=BgOLB2zQQoFLzDANpmO07dW0Q0Uzwa6dFZgIETSdbRxz3I3hcTZAByOP1K5W7LLP8N
         lk3I4QKSVy4Rnj5/9r1JGXgNkSokazbIxop5agaDHc2v4YTbRSQEWUahngiD4mSf2+qE
         0QLCDFKvna7GperQXen7cA7vkXIZUIQPSprhqCFI+XDhLZspqI0DNcif1PNBgv4iVhVT
         jss/qYaqsvcqy2mHmjnccvt0Z6O4KLe0yABB0qZJ2SGT3yCfM0YISFR+LOpW2PIEbXnf
         4qkVB25BvWwFhlh1stnpRdxsvDah+Edhehr1Z7/nspC0w+iHKomzNe05jBkAZE3s6Brq
         bUiQ==
X-Gm-Message-State: AOJu0Yw845u/ne3mKyKPU9MnDHgZ+7k7sUFFlE5E5hrR7vQUwD34ePh2
	NzIdUp5tLdzeMBOicOerJkzfCklxArRs2hnHjb6z1zhPitfRupCem6QPgywC
X-Google-Smtp-Source: AGHT+IEdkmgiTPO9a8sKPL1d7E9r3oAKVtfJx2OT95jKVs0P1O3e+nYX2oi+OnfVD1UHiWwkhDAQ7w==
X-Received: by 2002:a05:600c:511e:b0:40f:b5d2:1b16 with SMTP id o30-20020a05600c511e00b0040fb5d21b16mr730268wms.25.1706704730665;
        Wed, 31 Jan 2024 04:38:50 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id f6-20020a05600c154600b0040fa661ee82sm1497229wmg.44.2024.01.31.04.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 04:38:50 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Google-Original-From: Alexander Kanavin <alex@linutronix.de>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 2/2] meta-poky/conf/templates/default/conf-description.txt: add a template description
Date: Wed, 31 Jan 2024 13:37:56 +0100
Message-Id: <20240131123756.1098481-2-alex@linutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131123756.1098481-1-alex@linutronix.de>
References: <20240131123756.1098481-1-alex@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 31 Jan 2024 12:38:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13248

Existing conf-notes.txt is not adequate in situations where the user
needs to select a config template from several, or get an overview of them and
is interested only in a brief explanation of what the template is for,
but not extended multi-paragraph instructions for how to use it.

Such descriptions can be provided via conf-description.txt and
this patch adds such a description for the poky default template.

Updates to the tools and a tool for selecting templates which
will make specific use of the description will follow.

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
2.39.2


