Return-Path: <javier.tia@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF88C77B7A
	for <webhook@archiver.kernel.org>; Tue, 16 May 2023 13:20:52 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web10.21680.1684243243687930849
 for <poky@lists.yoctoproject.org>;
 Tue, 16 May 2023 06:20:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linaro.org header.s=google header.b=gM5K+/KN;
 spf=pass (domain: linaro.org, ip: 209.85.221.175, mailfrom: javier.tia@linaro.org)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-44fdac26696so4676085e0c.3
        for <poky@lists.yoctoproject.org>; Tue, 16 May 2023 06:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684243242; x=1686835242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=62dx5WRLEW54qcqDePx8DQZ4bXKLjUPzrmYCPaVjTzw=;
        b=gM5K+/KNYPSH0DDW0I6ZveAoVW7i3rqoC1xQ1hdUNGH9DZC/D8T0JIBNRII3g+4/G2
         XqAqFZ/gt9fKj2gGatm1ne/RWA1sx94kn5YICRnsfGHT3gcvbv5Oo7TDJq4VBQrm2gCG
         R/URpd5lNhn5TyUK303hoCLHH/X2npH87VPSB854k0BxnZNNw0HeziQ1jrQt6ESA4y10
         rD8Lp5kyomRMU/ZUfWj+CRIh/jks7sJ9tq3P/wWgB96UNWEuJVDBfnMYFWL5nXmUa6fr
         nWJ22tlotzd4QsWcBxMTlPDyPnPon0Eady48MVnZhd/zUiRrN5zuYO1Jw7S0Pf3hagXm
         WivQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684243242; x=1686835242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=62dx5WRLEW54qcqDePx8DQZ4bXKLjUPzrmYCPaVjTzw=;
        b=cEcJjzwioyiOuC1p6Cn1ug8uVYGH1igAR2wPRQaxs7crjYcAIMdycByHBZkABhpLds
         ZPyxZOXIvGxyW+uoXhYmJ5ku8A4sQCu4utH0OHfz1Hlfv4Kte15lw9SQLO1hcsru/gk8
         S8eZ4McxJkJ8yumn5og37ssGEKvZI7BgU0cZmP/zXckClMYjXPcdKRyy67XKVwqlzD7u
         q9Zk0+kH6ACPS9+6usthmN4BPdkrnYLzRBVRV/dUmoknMxV/BA3rtFbHzAIGpMWq2IdS
         gZ7XG+HOLx4EOBz9NYpgSEIItNW2RbyeUje960mF8rqP5qEMX76LngdPg9WrPc5SslaT
         6RVw==
X-Gm-Message-State: AC+VfDzUSvuJ6+Ro8P6Vr9cmF5trSaBCfFanqqP8B1W1cJ/q2H3zJE8P
	bEiKsVi42lpGoGWc1akobBewNU1vu+tyMe6sy5xskw==
X-Google-Smtp-Source: ACHHUZ5OzJIBNliYxbmYaBAbcTXL+TfEDty4KOETcahRzjG5iwSvPa42qu2LkjkNJtyY5ZKtEmvPqA==
X-Received: by 2002:a67:fa18:0:b0:434:4deb:9825 with SMTP id i24-20020a67fa18000000b004344deb9825mr12682392vsq.24.1684243242168;
        Tue, 16 May 2023 06:20:42 -0700 (PDT)
Received: from jetm-rog-x670e-gene.. ([177.93.3.221])
        by smtp.gmail.com with ESMTPSA id z24-20020ab05658000000b0068e35efd9besm4974007uaa.36.2023.05.16.06.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 06:20:41 -0700 (PDT)
From: Javier Tia <javier.tia@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Javier Tia <javier.tia@linaro.org>
Subject: [PATCH] poky.conf: Add Fedora 38 as supported distro
Date: Tue, 16 May 2023 07:20:24 -0600
Message-Id: <20230516132024.686605-1-javier.tia@linaro.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 16 May 2023 13:20:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13067

For a while, I have been building with Fedora 38 and crops containers
without issues.

Signed-off-by: Javier Tia <javier.tia@linaro.org>
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c92ef2a708..1eb39a1674 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -40,6 +40,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-22.04 \n \
             fedora-36 \n \
             fedora-37 \n \
+            fedora-38 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
             opensuseleap-15.4 \n \
-- 
2.40.1


