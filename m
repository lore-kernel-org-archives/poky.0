Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BE96C77B7A
	for <webhook@archiver.kernel.org>; Tue,  6 Jun 2023 13:12:21 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.8336.1686057132300677466
 for <poky@lists.yoctoproject.org>;
 Tue, 06 Jun 2023 06:12:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=KW35SThO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-30e4eec95c8so596858f8f.3
        for <poky@lists.yoctoproject.org>; Tue, 06 Jun 2023 06:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1686057130; x=1688649130;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=GGrKmbi6J3+5BjNYtpvbXqSlibngrpkfmZxctQAX+gM=;
        b=KW35SThOBZDyhzxhpuSz7KNfY/LITQVMqInNri0n4+dFqc2D9OMs+HvBAj4pvR7Aqh
         hNyLM084We0sLEnbzBjljRPBweGtfeUDx75fRi9qg4FqqoJNJTXFIKRVstQOcZRp3TAy
         ihzKx95eCN2yADH5Fpq22lSqHWXZWaDqfU76M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686057130; x=1688649130;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GGrKmbi6J3+5BjNYtpvbXqSlibngrpkfmZxctQAX+gM=;
        b=XXUPHz1T0hkPNTB0y9jqmOdQkHjc85LQs73VhmV7qMEYnu4o8hNGl8ejzyE4UpH8gl
         aoof8G6RsiHaQVq37OwPtzEgqs6NXmTlJIJ3zQTXVMEBQYW7pP8fcVN6tYa5mAdqo79T
         gHgniybGoeoaARVljuo7uVukdi/zdSdTJbayF2fNkkNhl9RWc7x5yzJ2jFNknFRUwd2I
         mSGiiyE4CO5kIblNuSve0VU86krhW24/K2FTcoeSxrs3AvjZfnEvsRR1J/9Tes4Ggvfl
         gNvx/03wfPyOxKzGWttKYy96pE/w8B5YQQsVn8qczWjjLb1JycPtwMrRYtznAOmBsjKj
         G3fQ==
X-Gm-Message-State: AC+VfDwuZLFUdCIGSNFsE9UReswqSEqhmVi0gQkpvcKRXpeSYpRs+DPQ
	ifjmiLtVZE5aM8h6fdpupqt6aXhO6A+/UEwD7lw=
X-Google-Smtp-Source: ACHHUZ6Hvisxz3RfAuTePCCfQ1kyWn5wzKvsxY9folQXhrrmTApjrJaOvycUqgFcGPwAiSLcYxYb0Q==
X-Received: by 2002:adf:dd06:0:b0:306:3ded:2bf1 with SMTP id a6-20020adfdd06000000b003063ded2bf1mr2304359wrm.60.1686057130408;
        Tue, 06 Jun 2023 06:12:10 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:7f10:3282:4c2:7240])
        by smtp.gmail.com with ESMTPSA id w1-20020a5d6081000000b0030adc30e9f1sm12534430wrt.68.2023.06.06.06.12.09
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jun 2023 06:12:10 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Enable spdx manifests by default
Date: Tue,  6 Jun 2023 14:12:09 +0100
Message-Id: <20230606131209.535272-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 06 Jun 2023 13:12:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13075

We're now in a position to enable SPDX manifests by default, do this
for poky.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c92ef2a7082..d1375276246 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -69,3 +69,6 @@ INIT_MANAGER ?= "${POKY_INIT_MANAGER}"
 
 # We need debug symbols so that SPDX license manifests for the kernel work
 KERNEL_EXTRA_FEATURES:append = " features/debug/debug-kernel.scc"
+
+# Enable creation of SPDX manifests by default
+INHERIT += "create-spdx"
-- 
2.39.2


