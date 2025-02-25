Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18D53C021BB
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 12:08:11 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.6585.1740485289616349049
 for <poky@lists.yoctoproject.org>;
 Tue, 25 Feb 2025 04:08:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Q9SQYDB/;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-38f6287649eso4326576f8f.3
        for <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 04:08:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740485288; x=1741090088; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8QNBIDnclFvNxGMkYB6a0eo16szXR4WBVSWq5h9LayA=;
        b=Q9SQYDB/q5pN9pWtFyTdbFYVdvrA1en2OQJWiFiRuca13HgUobHtDSUWqDfsaChe5K
         /w3jlvc6d+E+BUIhF2/9RR2EEJLPSdfJeeOR7FH3/vgIqgYzmzKM6CtVpWVxilxuJuqT
         Tj+WEkv4cPVhIZm1ofgvS3ZnMfKT6Bee1VO/JBHJkjfcc1hb3iiju5emSiqEUdofeGQK
         MnBouunlkxNSzCIWgbjPucjjGwT67bI4COELhkXet/AifY3++luQj67ovAe6Mp9Cv70c
         aBivVk42cCLVsv581LMS9lnkJawZRvtNLYisEWuKEfrdcz5sx92nN5LA09XhSpaIK1Pv
         0/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740485288; x=1741090088;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8QNBIDnclFvNxGMkYB6a0eo16szXR4WBVSWq5h9LayA=;
        b=niEYIviYYjQ+Uho137B2AruxI1bq/b4hzfITfFryNs5Z3fwVM7xt4l3azEUq9U3wXf
         I7TirU4oSG7QSsW2veTqyurKcqKWuHxa/fRLDYA9e7PCyOOewIPzXpnckhYrNIM0CPuJ
         iTRK94oYQQpcGifnXOXyOK7sC8d/GCUN/EjqFJiWOlTteb720eEu+t9MZBT5ueqrjbuW
         Uyw6lGOIh0xYQCNeb4euIrjB5Ye+4IRaQ3rVq3/3IaC5wjfYse6SniaqjpQH2GPU2UuQ
         nJfVJcUNk0li3Di5vsdQfz5nuctTETP2NrCgrT5h0agxJacFftqEvdWqaGwVkcpmStVr
         pQ1w==
X-Gm-Message-State: AOJu0YyVVGKE/V+kOr0k9DvaSUap/QcG8rPTFb7vz5BJJaxB9EUa9hwp
	aanVmqNd3lbImyYecRwkpnOSoaU3MFM3mImcTq9FvE5OJIgVm8mMjLhx0g==
X-Gm-Gg: ASbGncvWMKz2PTjzWugpC1mLiYTUJTjghkPSBM/1qNS2GUVvfe4dojozWzhOFT8x5S+
	MBbGaP1blPNA4uGEFxwqbdkYIAAusn+wr+/tMr9/OnzMkC+qdaw2XwxSa75UieC6+gGohK0EbUo
	tTaCJuEh4PlGHdPW7LwH+/b4WdLYlnBzvTf3oU4OCUcgTADiZWYmvx7UMNQqFuhfSiXhNdvBKjg
	m5P6RQUru0LHXFumtAwbqVhtpEEd/VakkAR/khmYfvWAMy0Fg4n5Aj+uJ+xuTTE6zN/UywIMIvJ
	LN+SM43c+zjFVGnnAvt05H4C65HDFKF+7CHMnrXiaQHNstVOE/nLdzJUI5y/rsM=
X-Google-Smtp-Source: AGHT+IFYFbnZ8R2SMZivUN5KXGA51ju9CnlmG/LrlvYpkIqo8/uoFD3GFKogKC5BVuFGBo/XS9+TFw==
X-Received: by 2002:a05:6000:1847:b0:388:c61d:43e0 with SMTP id ffacd0b85a97d-38f70855a84mr14583116f8f.48.1740485287639;
        Tue, 25 Feb 2025 04:08:07 -0800 (PST)
Received: from Zen2.lab.linutronix.de. (drugstore.linutronix.de. [80.153.143.164])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd86ca9csm2068089f8f.22.2025.02.25.04.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 04:08:07 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: poky@lists.yoctoproject.org
Cc: Alexander Kanavin <alex@linutronix.de>
Subject: [PATCH 1/3] meta-poky/conf/templates/default/bblayers.conf.sample: do not assume integrated poky repo
Date: Tue, 25 Feb 2025 13:06:33 +0100
Message-Id: <20250225120635.171931-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 25 Feb 2025 12:08:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13540

From: Alexander Kanavin <alex@linutronix.de>

The list of layers was written assuming the template is used with
the 'integrated' poky checkout, where content of meta-yocto is
'overlaid' on content of openembedded-core, and the layers are
all in the same top level poky repository directory.

This doesn't work when oe-core and meta-yocto are cloned separately,
where relative path that starts from oe-core would have to go one
level above oe-core and then go into meta-yocto, assuming the
separate repo clones are in the same top level directory.

This requires a custom tweak to bblayers.conf when it makes its way from
meta-yocto into poky that would strip the ../meta-yocto/ part in
BBLAYERS. As there are already numerous other tweaks of similar
nature, I think this is feasible.

This was prompted by
https://lists.openembedded.org/g/openembedded-architecture/topic/layer_layout_poky_vs/111010762

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
---
 meta-poky/conf/templates/default/bblayers.conf.sample | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/templates/default/bblayers.conf.sample b/meta-poky/conf/templates/default/bblayers.conf.sample
index 8b1cbdfc5c4..d34b552cb71 100644
--- a/meta-poky/conf/templates/default/bblayers.conf.sample
+++ b/meta-poky/conf/templates/default/bblayers.conf.sample
@@ -7,6 +7,6 @@ BBFILES ?= ""
 
 BBLAYERS ?= " \
   ##OEROOT##/meta \
-  ##OEROOT##/meta-poky \
-  ##OEROOT##/meta-yocto-bsp \
+  ##OEROOT##/../meta-yocto/meta-poky \
+  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
   "
-- 
2.39.5


