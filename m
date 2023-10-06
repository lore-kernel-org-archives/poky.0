Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02B42E81DE9
	for <webhook@archiver.kernel.org>; Fri,  6 Oct 2023 11:37:59 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.10560.1696592277566438753
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Oct 2023 04:37:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OlTa9d3a;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.218.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-9b96c3b4be4so352876766b.1
        for <poky@lists.yoctoproject.org>; Fri, 06 Oct 2023 04:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696592276; x=1697197076; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bxqrhbXDhvXwLkFZbAwylqSyjH3UZB5ORd3cpLS+1fA=;
        b=OlTa9d3aQJtmI1u8PsYai/NqLdllmiJNlZo8PzgMI0aczTIgnii5MjtvLNPk6yngaQ
         4K7A5e0rSYZPMmgqUVZ8MdfY/cjA8MfXw5eC2o7QmqeIqP0oYEe2hV36BZ3ahnyqBhrP
         uKsROyfAvF32tadodR44cqRXEq2C02tcBoKVI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696592276; x=1697197076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bxqrhbXDhvXwLkFZbAwylqSyjH3UZB5ORd3cpLS+1fA=;
        b=NFCKxJUi8z8dOdaRObod8r3VxGfrahU2yf8/Ldf8mw/u18PRu2Ew6RVZXKbNjHhx/n
         ep+Nje27cNWJOyd0EO1r8qstvFjZtgNfNJkDAPoURLCcRP969JvBYMLEkeaJdtSc925k
         aoKCeyJdwgpb8CjC/CakeVG7Y8WE4t0USLhhT9RTFbDlv8MGabjIyDF0F+2tN7WqDFhO
         GZWVLTdGdZ+TveXE2wdGpZjn5h7bOlc+wSBRp+tNGr0K/D5dJTWUrrchJrUxv1kuofyd
         VLMtRzZZpC7x2fUvfc3Yt1eWfkt8uT8zcxbCX8r6f4QTrjKBaG1aGSTU3ttFoy65hr0W
         f6cw==
X-Gm-Message-State: AOJu0YyQ2hyvzpuUWyenb96s2zRcec3F8E0lY+Oo1ejoI+gMhDuA8ga9
	WtfYzVepDuy3Vpim6T9ojQ8eJ/sDtkZ6zojDubE=
X-Google-Smtp-Source: AGHT+IHUDL3rDxp0JH9qPKHZyNCBKpFNIV2xaGcnnGPLjYKoCjEjfutRAKsOU0vUnd2xo1g/uGvqsw==
X-Received: by 2002:a17:906:9c9:b0:9ae:4f9e:7813 with SMTP id r9-20020a17090609c900b009ae4f9e7813mr6114591eje.73.1696592275664;
        Fri, 06 Oct 2023 04:37:55 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:2964:cec5:fab8:2212])
        by smtp.gmail.com with ESMTPSA id t25-20020a1c7719000000b004065daba6casm5822394wmi.46.2023.10.06.04.37.55
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 04:37:55 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky/poky-tiny: Switch to the 6.5 kernel
Date: Fri,  6 Oct 2023 12:37:54 +0100
Message-Id: <20231006113754.3248490-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 06 Oct 2023 11:37:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13172

6.4 is EOL so switch to the 6.5 kernel.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 meta-poky/conf/distro/poky.conf      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 7b04b35d4ab..32c2ec3e1fa 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -44,7 +44,7 @@ FULL_OPTIMIZATION="-Os -pipe ${DEBUG_FLAGS}"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "6.4%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "6.5%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 3bc7bff0112..f290a15e35d 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -19,8 +19,8 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "6.4%"
-PREFERRED_VERSION_linux-yocto-rt ?= "6.4%"
+PREFERRED_VERSION_linux-yocto ?= "6.5%"
+PREFERRED_VERSION_linux-yocto-rt ?= "6.5%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.39.2


