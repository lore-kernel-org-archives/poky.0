Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web08.25731.1658141336240690307
 for <poky@lists.yoctoproject.org>;
 Mon, 18 Jul 2022 03:48:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hd0iPHCF;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id b26so16447010wrc.2
        for <poky@lists.yoctoproject.org>; Mon, 18 Jul 2022 03:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a5SzTL7SBYEeaTp3eg8e+m0aBHg+u5cx20GYg7hGhSk=;
        b=hd0iPHCFvuGLDXyyEcroKlNukummYcqBcSjoLHdqDH0Gzue22m3cqhi4E5962mOyiG
         43vn2Q0EwDbqPB99K9gFfwVyCLxSgFukvgZlMthMpXANhbvvGF8rU0m3+LxWkxd6bo2B
         9euQNEebcPOV5JzD1CeAJOTDkCWNISNUvmFVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=a5SzTL7SBYEeaTp3eg8e+m0aBHg+u5cx20GYg7hGhSk=;
        b=10MEpk08UR/bW+gptp8+9KtMUyD3fA94ZGEoJlhcbpiSp8guqz1Q1fKCFqoSnk/jZ9
         klUewFzk/y8G48bWONNKD19LjTquJ4ofuE5mG49TJuHvuex+80ROLT5d+m4FV/DNDNo9
         ox3PdBrUOG9aF46jiayAD808qRRWhjwY+h7hwBakXv9hLe09ZV0a+MN0LvCc7uDNWjd2
         AkL58Fs35e8YfB80C33jDime6HJGw7R00HkuJOQbAMZYplI2XdEWatR69RwyB6Fx33p3
         ICCJoA7kxtmltd0PYgfNcaU4INT7ZxAyR2Qd7uYPOWSC1EFofSXSH34/PopP5le/aSG0
         6UgA==
X-Gm-Message-State: AJIora89WIWqOrp7TjjzfRDsoqGaqsyxsYsp9Z0sQSe0ghsztZykwS76
	Kj/umX73I9GVKoXo7fBQBxHseXw+FGoyzA==
X-Google-Smtp-Source: AGRyM1uhEXdtauNd38y2goDSm+iEL0AjNOTA6ffrEt/kXt7YiYqII6eIqriFHqpHj1wSVK0Z+sFTRg==
X-Received: by 2002:a05:6000:1a50:b0:21d:bac3:54ee with SMTP id t16-20020a0560001a5000b0021dbac354eemr21829566wry.182.1658141334314;
        Mon, 18 Jul 2022 03:48:54 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:7b9:c151:626:cc65])
        by smtp.gmail.com with ESMTPSA id r129-20020a1c2b87000000b003a2eacc8179sm14897762wmr.27.2022.07.18.03.48.53
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 03:48:53 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] poky: Enable debug-kernel for SPDX license manifests
Date: Mon, 18 Jul 2022 11:48:53 +0100
Message-Id: <20220718104853.1012779-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

In order to generate complete SPDX license manifests we need the kernel
DEBUG_INFO configure option to be set. Enable this within poky by
default as we want to be able to provide that information.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-poky/conf/distro/poky.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b4c64c495f5..5fa42ad513c 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -68,3 +68,6 @@ BB_SIGNATURE_HANDLER ?= "OEEquivHash"
 BB_HASHSERVE ??= "auto"
 
 INIT_MANAGER = "sysvinit"
+
+# We need debug symbols so that SPDX license manifests for the kernel work
+KERNEL_EXTRA_FEATURES:append = " features/debug/debug-kernel.scc"
-- 
2.34.1

