Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9D6C61DD3
	for <webhook@archiver.kernel.org>; Thu,  3 Sep 2026 10:15:05 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4365.1788430497073857305
 for <poky@lists.yoctoproject.org>;
 Thu, 03 Sep 2026 03:14:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Mj8kFqwQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-482e257a23aso1533024f8f.0
        for <poky@lists.yoctoproject.org>; Thu, 03 Sep 2026 03:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1788430495; x=1789035295; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=xZOFFj2LmbPsWb75/FJwUaal+rrsldlB7B+avIdT1Gc=;
        b=Mj8kFqwQ3ER4VQpBp+t/LgPRJpfPRbZBBzlddgmwBD71FQz7aQvMl0EJkpRYYpTQ5h
         Q9fasJ5ZOmbBSTtNLgQ/bwlMT3tj5Z5TFQDnK6fcwdgllJpYOMG5iFKWzKs/w8wo/oLp
         eshqG6YO4wY4QBQlhusJOXnpna/9nNaGU/KzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788430495; x=1789035295;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=xZOFFj2LmbPsWb75/FJwUaal+rrsldlB7B+avIdT1Gc=;
        b=edGH8WaiJ05OWbj9BnluHNM87AnBb9Llt1pIsu9bJqCWvXeMY/L+hmHAqZe+wT9ukM
         LG2CxcdioZObTj5OYfaDjXDvrrjvY2OHp889ti738nouDm8mUYf0WV+nEQAQ8338he0y
         gEoJR1W+KqE9HcfmkzraEO0qziAf9K28/EmBrn3acQ2adWwv/TFfzf22d/gXMsNGJ1/M
         7lsdOcwPW6KwvWXCAnuk8kKPeL3EtS3lm3wQF5hxQkc08er1gWddh/ZjKOBzAVtkHM5d
         McOza5ovR44t89piat0WuMSPTjmndmbIQy9Y9RAX/udQ7sFSe+lfgF2kdXGz4Koogdlb
         6yJw==
X-Gm-Message-State: AFuF++mkX1Xlx2czaKl28bM6xeY/aN9WRiWcHPEMJqOLJpah60VQVkGJ
	fWjsFSHZ3Wl97bnNM0EcUfXFjKoyhhsMJsiJ53JU0IXJcKYAQeGAu9fDlViofWEL0egDpPtik6X
	hoOTzmhg=
X-Gm-Gg: AYBFou0TMmysgz1kTo1PMjEAnRwym8YeokErHwU7fw0C31sEToQg7WWLQ+ZQQFvnpC1
	RB3SKgHMUB+IRpWEVMDTAXiP9yuVM05uVaFj4SOSGORQs3Cx6r9X6IaTFSxLag+vItlioe76BPv
	2DHaC2Wvb/NpUP9GkjGSwO8hz0jkHbDWQoygujq0wnXpxzPGPkThPObbDtT1XVcWHM2eSyYGJa1
	vo7fA+F0k03NJvpW0kG3ngTX/nwbBN1IAlFGK8lW1QMl60vYqHlm8vjKfNuKlp1DxxRSXgHsY5y
	rE/44VhdxYtPLRcOLpRoBB5ddzqqOd76N3flllGS9GFz0hBoGyBhwuKEFjSypB5SkHKa+VvOgdx
	ddG9waP71x/6z4SEVrGp2KC9NomUfWPdCRpE0CmiTSEa1l5OcXahkFZ6kPTZ4UJRoaNAIfjF9SF
	5BuJZWvBvXkJlrLvK16LP+dGkAHvWJG3QqMfATccYKgZvyJtgGTp3m5QWT/j3QzlxfE0UxYzA0i
	s59LOM/rWdBaN93Rw==
X-Received: by 2002:a05:600c:474a:b0:493:aa0a:45ad with SMTP id 5b1f17b1804b1-49ce55ecebemr153731585e9.2.1788430495003;
        Thu, 03 Sep 2026 03:14:55 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:a76d:4840:1f4f:ed41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cee5e6115sm61323365e9.14.2026.09.03.03.14.53
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2026 03:14:54 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Update to 7.2 kernel by default
Date: Thu,  3 Sep 2026 11:14:53 +0100
Message-ID: <20260903101453.4015030-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 03 Sep 2026 10:15:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13959

Update poky to switch to the 7.2 kernel by default, leaving 6.18 as the alternative
configuration.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 meta-poky/conf/distro/poky.conf      | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 1e32dd389c8..9d5a51660d6 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -41,7 +41,7 @@ FULL_OPTIMIZATION = "-Os"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny ?= "6.18%"
+PREFERRED_VERSION_linux-yocto-tiny ?= "7.2%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "packagegroup-core-boot"
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ff1c9a97b77..1096f6038ee 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -19,8 +19,8 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "6.18%"
-PREFERRED_VERSION_linux-yocto-rt ?= "6.18%"
+PREFERRED_VERSION_linux-yocto ?= "7.2%"
+PREFERRED_VERSION_linux-yocto-rt ?= "7.2%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDKMACHINE}-${IMAGE_BASENAME}-${TUNE_PKGARCH}-${MACHINE}"
 SDKPATHINSTALL = "/opt/${DISTRO}/${SDK_VERSION}"

