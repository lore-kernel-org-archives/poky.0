Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A5D6C4725D
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 13:44:41 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.74022.1705931074820958591
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 05:44:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=R8i70klY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33922d2cb92so2830887f8f.1
        for <poky@lists.yoctoproject.org>; Mon, 22 Jan 2024 05:44:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1705931073; x=1706535873; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=8W8++grGm5mFmLN9EDLr76BH2V+ENH5YK3bklrpNS18=;
        b=R8i70klYOgHG/mDkMyqEpOUvGAUkf/KOJP402//H3/xzfMprdVVQwPtChlDJkXDAZu
         Ebd/bJgVcGZYtGr/e8iphWUNRgMA5D8/78vDimerHIMRg89WCH5R9+aQCiB/GuGcV6II
         TeZclA88ToB0RfC3C/CPilaFqeuInXG+VI8F4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705931073; x=1706535873;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8W8++grGm5mFmLN9EDLr76BH2V+ENH5YK3bklrpNS18=;
        b=EzC5SzD0Z83cKWJKRvWFWmlZmjfwaAm1kkyxdxriM30lex5dZRlXyBZmHD/V0IZL9A
         EBWQiRtl/g8rSmQ0p3I+FoV51wYkkIITLDgGDRXPnkrgGCDFrGnLkJ8zl4zUJdGc/UgL
         5C/UoAD3Tp4alTUYRssFq8fESEASVfypHhLCzF4EO3Fa33Zpf+afcr0nxuLGrYlLSalZ
         SKq5ZGaMvH2ls9JHh+MFd9r9kQ69+3NwY3/eqkvieSGKwkfswWoy0qynDm5KQ14SV1xq
         KaiWh6q6LFn2O83O+qsQk35fPwjb/8MnU1XxElueRuDaxwE/GXEL3REUzmxyM/FJyN3n
         5pUQ==
X-Gm-Message-State: AOJu0YyiSV82VNSbcnJLYL15iMXat+jq+74XA8f5Ay0PWKOmR/Z2rNPc
	JZFK2Atc7rj06lJk7+HQSyaqp7eArgmVs1q+zrlTlPt8FWdXpJpkNd92KCSjuHpuCY4Whce1ZuN
	G
X-Google-Smtp-Source: AGHT+IEoQnDE6hVL6afuV1axy36G8abX2rjFIkrs6b/kS3ClmCrOqg/b5oi/IF3/Kqs7kTLw+YLMZg==
X-Received: by 2002:a5d:5244:0:b0:337:6277:91e9 with SMTP id k4-20020a5d5244000000b00337627791e9mr1203993wrc.82.1705931072868;
        Mon, 22 Jan 2024 05:44:32 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:a57c:4d56:a1d0:e701])
        by smtp.gmail.com with ESMTPSA id m11-20020a056000008b00b00338ca0ada22sm3927761wrx.111.2024.01.22.05.44.32
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 05:44:32 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky-altcfg: Update PREFERRED_VERSION for kerenl
Date: Mon, 22 Jan 2024 13:44:31 +0000
Message-Id: <20240122134431.484087-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 22 Jan 2024 13:44:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13246

Update to 6.6 since it is our only kernel version.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index 4c1eb552a3f..3e10251e8b2 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -1,8 +1,8 @@
 # Add extra DISTRO_FEATUREs
 DISTRO_FEATURES:append = " pam usrmerge"
 
-# Use the LTSI Kernel
-PREFERRED_VERSION_linux-yocto = "6.1%"
+# Use our alternate kernel version
+PREFERRED_VERSION_linux-yocto = "6.6%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
-- 
2.40.1


