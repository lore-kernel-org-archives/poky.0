Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.38870.1674468286637090670
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 02:04:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Xc2w4k7k;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so10194884wmb.2
        for <poky@lists.yoctoproject.org>; Mon, 23 Jan 2023 02:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=pkkRgTmJwDvLLPEj6XVUsP5zg0OEhklYLM68tEAvyZ4=;
        b=Xc2w4k7k5VQtA2WWZYHeXhJ0AWG3Yw93o7Uf5nUNFqDGpeYgHopq1y1618zVCwl5cJ
         MourlmWy4lo9a7mJ/RHxRf+4pec2u4Jps7exhMeivFoWkk0nRYK0WObUoCB0aGkeV1/J
         YRCdtNpxHjl4pJKMJYyNeYDzl19Tlp/6izah0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkkRgTmJwDvLLPEj6XVUsP5zg0OEhklYLM68tEAvyZ4=;
        b=uJZQPqrqmZasq9SVDf5qeflV5ko8uIY1W8q0KFPeqewAyYZvMAnRQVMWQQd+FUfFSW
         HlCQTNfy5g1+mNWXjnEgM21hyIoXuUltCE2C0NNKMT+Dt9jdcI/0/3GvARisOX6Sp+bz
         6sX/zdkIt2JElcMZ3Tq+6N3TH4C/IrzljDGd06vPgiwk6CkLB4ZDqLws6fVBGsB2JGlM
         PVKnR8L1xQkbmwYCWp+h1/zdUxjCdu5E9AI1Yisv9sxiZRKTQvbv8PNha1275xDd4ERF
         yL++fGSR+YQvQ6uTbZ7Bq2yIJbZ9+L71bq7407Q2hDlKaxAKf1DvkMKN69Ev+ZUJxAaC
         ch8A==
X-Gm-Message-State: AFqh2kqS0yPBSBHoBcuEWMPF2Jq3q2QR/3TjZJRzjUVPt7Sa81qUau9k
	7HfnKRE/ISNm8WtNlh0BGmz80D7drlWRAHcv
X-Google-Smtp-Source: AMrXdXsAoVUhYaAF27iTX1tBnhzxtPNXT0ogCifIBwsbhKS7sjtcVNhPyEFTPxOUM1YXZUD4VoXuEg==
X-Received: by 2002:a05:600c:2292:b0:3d3:50b9:b1a1 with SMTP id 18-20020a05600c229200b003d350b9b1a1mr31438798wmf.1.1674468283998;
        Mon, 23 Jan 2023 02:04:43 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:9195:b014:a064:8114])
        by smtp.gmail.com with ESMTPSA id h11-20020a05600c314b00b003db0f4e12c8sm11007278wmo.34.2023.01.23.02.04.43
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 02:04:43 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Set INIT_MANAGER by a seperare variable
Date: Mon, 23 Jan 2023 10:04:42 +0000
Message-Id: <20230123100442.2251934-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Currently INIT_MANAGER cannot be overridden from local.conf. This is
complicated by the use of overrides in the various poky distro configs.
That is necessary, so use a separate variable to indirectly set the value
meaning local.conf can still override the result.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky-altcfg.conf | 4 ++--
 meta-poky/conf/distro/poky-tiny.conf   | 2 +-
 meta-poky/conf/distro/poky.conf        | 3 ++-
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta-poky/conf/distro/poky-altcfg.conf b/meta-poky/conf/distro/poky-altcfg.conf
index f03306e7986..b6dbcad4efc 100644
--- a/meta-poky/conf/distro/poky-altcfg.conf
+++ b/meta-poky/conf/distro/poky-altcfg.conf
@@ -8,8 +8,8 @@ DISTRO = "poky-altcfg"
 DISTROOVERRIDES = "poky:poky-altcfg"
 #DISTROOVERRIDES = "poky:linuxstdbase"
 
-INIT_MANAGER:poky-altcfg = "systemd"
+POKY_INIT_MANAGER:poky-altcfg = "systemd"
 # systemd isn't suitable with musl
-INIT_MANAGER:poky-altcfg:libc-musl = "sysvinit"
+POKY_INIT_MANAGER:poky-altcfg:libc-musl = "sysvinit"
 
 require conf/distro/include/poky-distro-alt-test-config.inc
diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index ce466e30b76..74f2fc74221 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -86,7 +86,7 @@ DISTRO_FEATURES:class-native = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO
 DISTRO_FEATURES:class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 # enable mdev/busybox for init
-INIT_MANAGER:poky-tiny = "mdev-busybox"
+POKY_INIT_MANAGER:poky-tiny = "mdev-busybox"
 
 # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
 # packagegroup-core-base to select modutils-initscripts or not.  Similar with "net" and
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index dc0e8e76ab7..a7e07b248a2 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -65,7 +65,8 @@ INHERIT += "uninative"
 BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"
 
-INIT_MANAGER = "sysvinit"
+POKY_INIT_MANAGER = "sysvinit"
+INIT_MANAGER ?= "${POKY_INIT_MANAGER}"
 
 # We need debug symbols so that SPDX license manifests for the kernel work
 KERNEL_EXTRA_FEATURES:append = " features/debug/debug-kernel.scc"
-- 
2.37.2

