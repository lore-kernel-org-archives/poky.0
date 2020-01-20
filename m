Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.14192.1579541182336043881
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 09:26:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=s2pcPjDc;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE60CE01545; Mon, 20 Jan 2020 09:26:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CE2AE0044F
	for <poky@yoctoproject.org>; Mon, 20 Jan 2020 09:26:21 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id 20so137034wmj.4
        for <poky@yoctoproject.org>; Mon, 20 Jan 2020 09:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IGtP60Uhiqpyx4EjeFa2LBpsLSvzPq3lUAdUfq7Pwfw=;
        b=s2pcPjDcYWLZvj3fF+ihlDnI6CeC6yqXm0X2FzSM2DgOTgghb9bZ76UULyB1a2HgQL
         rTT6i76WnoAY9l08YcLIUHBsTiM5EHUOvriAC5GKeXLyWsNmwkp5hACXAPS0hmP463Ae
         gysekQLmwu4wUJyHU0aFjFQmeO5g+LRyEegTwg+5z6InRhKqdaSDKm/AM309Z6HiCD6u
         J41cHxnzIq8MAAHEiAJMJV7QKPVlWhE3pe0hmlCZXz5/vc3K+enEsNHmrS7kWgfPOUWV
         IuWgQS37fi2NpejoIxWjc98HPMKI7zgSjJPopanoH19yiWsPwe3IhNTwUt5KIkGcSSD7
         CjPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IGtP60Uhiqpyx4EjeFa2LBpsLSvzPq3lUAdUfq7Pwfw=;
        b=lK5rgrg5EYpSl8WhZ3VSkSaONzn192aZEFZUEobcKHZldKOC0o+1+xQHswrOaoV7AE
         M7ywZki1VwsNFvO8qHMtLs7Ux7W+czNUyTOJ14iDA+XtXNBMN+h5t5GmegacxfwK0r/i
         /4XLaO2luxLqXpY5/l7UJUY59+JQPw0ROM55BAON8Zy0tlyX0U57IkZtLzZA3azlM6jU
         UMFhtaCJXl6xQF/esb+VA0RNsdNUyUvOl5ampHCDjUqbgetqgFW6Q7Dx1jLZ+BAtG3fI
         T7YMPr9+0RS1EY9eC8XzUqT0UKODQmMZY46JZ40LZM3sAdzKTqYj3EmTma5QJyhSr5G5
         0OYw==
X-Gm-Message-State: APjAAAVNRDXtug9jwL6XRmOuacdd/4HK0fqU6GpVkKilwqLr9SO4ADAr
	xO2Urr/ki6LwO7VoymHkINN6JmDR
X-Google-Smtp-Source: APXvYqyZIqr26zOV45u89mEH1WEvDhBfL6JeY5G6fqOef5dW3CdPWmx3dvITnXaGiABpkzo3bbMVAg==
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr396995wmb.118.1579541180176;
        Mon, 20 Jan 2020 09:26:20 -0800 (PST)
Received: from alexander-box.rd.corpintra.net ([141.113.66.202])
        by smtp.gmail.com with ESMTPSA id n1sm46116181wrw.52.2020.01.20.09.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 09:26:19 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: poky@yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH] poky.conf: add vfat to DISTRO_FEATURES
Date: Mon, 20 Jan 2020 18:26:15 +0100
Message-Id: <20200120172615.22811-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1

This is beneficial for parted ptests in particular, as
they expect vfat functionality to work.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 5c156f12f33..2446e491563 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -15,7 +15,7 @@ DISTRO_VERSION[vardepsexclude] = "DATE"
 SDK_VERSION[vardepsexclude] = "DATE"
 
 # Override these in poky based distros
-POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vulkan"
+POKY_DEFAULT_DISTRO_FEATURES = "largefile opengl ptest multiarch wayland vfat vulkan"
 POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
 POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
-- 
2.17.1

