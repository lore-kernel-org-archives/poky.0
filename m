Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.372.1670589098002860748
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 04:31:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aE4YUbJm;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so5662796wmb.2
        for <poky@lists.yoctoproject.org>; Fri, 09 Dec 2022 04:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=LVUO2MI0ntvjV9E7E6UHy9uBF4Sjkshf8jOwV4zBDRM=;
        b=aE4YUbJm2aYDwShUKz43XxyGYYUjPJ/Bz5MXLN6Bw874CWsbi3phs2g0h+MXaSULzp
         Q60u1CVFSa4lDFEGoLnYlSPJjxEzFA4aLpUfZc7lXBNO8FpFzuTjSKwDMujpfXOUTNS6
         P8RIq5jsl7wF2QSU7pg2bF31cC9bK6f1q4QY0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LVUO2MI0ntvjV9E7E6UHy9uBF4Sjkshf8jOwV4zBDRM=;
        b=Fk0WHLWiWrYbkQuY5NfTEwLZrKOx/dR9Hv7hFrNSjwojItvQun+nl78BI9RLyQdMBV
         ChdwZyCrMW2iQ770ohB61AUMnglkiS3qnu8jP6ibVuYs1xvUXlL6pYFeXBtHEvzfm0RL
         /NFVFAR2m7MFxcQ/HH8F1uup4Od/VXi9UE8IQ6A4kHBnbIVkU+ykEVNTJxmt4xe5qwcp
         Wlh8wm3cB1ktjhATrqKHUMVWkQ+C8NskHYxWU9Ey15zlJJpHjHmneF3tbdBOkN1a7k9i
         HEsd6KYXBr+hi8Z+CPPxju4cdRY2omicvfI5gVcnmEPWW5ktj2DD/Mb3JLVekcbWIXdp
         Y0rw==
X-Gm-Message-State: ANoB5pmbnS2dptgCuUMAMC1P4VdZJoyh9LcFSMZuPzdCVXvgsgJ1i5/t
	d0ny9waF3fO8HP8et05Y14lFH4oxxZwCHY5I
X-Google-Smtp-Source: AA0mqf6r+EEvk1Z0Y9Z/RLw/u2hz9DePFH6p3lqSiojdGU3JBHJBs2jaW7q0sRxFIFYTxH/aNd2lug==
X-Received: by 2002:a1c:6a04:0:b0:3c6:f6b4:6b0b with SMTP id f4-20020a1c6a04000000b003c6f6b46b0bmr4902556wmc.20.1670589095959;
        Fri, 09 Dec 2022 04:31:35 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:9b77:8930:5aaa:e9c4])
        by smtp.gmail.com with ESMTPSA id hg10-20020a05600c538a00b003cf4eac8e80sm626727wmb.23.2022.12.09.04.31.35
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 04:31:35 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky/poky-tiny: Drop largefile mentions
Date: Fri,  9 Dec 2022 12:31:34 +0000
Message-Id: <20221209123134.2535058-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

largefile was made the default and the distro feature is no longer needed.
Drop the leftovers in poky.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-tiny.conf | 3 ---
 meta-poky/conf/distro/poky.conf      | 2 +-
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 5772661588b..ce466e30b76 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -82,9 +82,6 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                    ${DISTRO_FEATURES_WIFI} \
                   "
 
-# Enable LFS - see bug YOCTO #5865
-DISTRO_FEATURES:append:libc-musl = " largefile"
-
 DISTRO_FEATURES:class-native = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 DISTRO_FEATURES:class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ccc2f1155f0..dc0e8e76ab7 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -14,7 +14,7 @@ TARGET_VENDOR = "-poky"
 LOCALCONF_VERSION = "2"
 
 # Override these in poky based distros
-POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
+POKY_DEFAULT_DISTRO_FEATURES = "opengl ptest multiarch wayland vulkan"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
-- 
2.34.1

