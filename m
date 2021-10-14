Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.10095.1634221888962786650
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 07:31:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112 header.b=Crad2oq7;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.160.172, mailfrom: jdmason@kudzu.us)
Received: by mail-qt1-f172.google.com with SMTP id c28so5877580qtv.11
        for <poky@lists.yoctoproject.org>; Thu, 14 Oct 2021 07:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=RvIpKA6GwDhBC6oO9rM5HnPX/XdBjhIPhQJu/fvFcJw=;
        b=Crad2oq7xLrwNR3OoojilEdWTMiLHnOJKDGdclnBukpQwPEtnEc00NKVNzJ6UeZln8
         wTvo+qZNNe4N+NzTqae3S21mdJ3E6qW5jvrobp7JkglK1xazAVIXN1FiZftgK8jPN6ff
         SmC+kHeNrBFaR3vw45zqzlwWOPdUSHLvnqEIYnhPHpE9TXtzVSDwJ7yI2ahoNXZ8kxyk
         f9fFImQ1QfG2Y9FJMcUHT8VBk6i+wyi2k0Ew0nkCCy/uc+ESqqOc7Zx6AUo84XK8LR+T
         s52FGHEGFKqoZHqymER3w3Dh65Kc0Fv8xGK2r0FUv285/aq2RRce7HYQmVwqiiouHZtu
         lNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RvIpKA6GwDhBC6oO9rM5HnPX/XdBjhIPhQJu/fvFcJw=;
        b=pCgVpRUedRBTZQR0ZG63KHGTz8gcVcJg70TYWv8ptinsOz+IDGOzeCWWcLsqM7T0Gj
         uzPPexD4muVFmxCKTpvrglGmJc4d5rDZkH038YnyPw1EZoNzuqPHz52AovrNfBRcNBwV
         1Qprp7/eRM6rUr2wUlV62DXd1ZFME2iBNvbuIFdLqCqemUmzNALQdX6Yi2rAFSFWnWvp
         fQairdTKDnylAhVRUlAo7xZNyGMNxqGft00FAEki5Gdsb+S80AWYCIbCSf0wcnk/dKDd
         +LgFFWne+YE3QgB7YQEa848yVU2Y6fVJt5vADj980xG4CJPpQ9NOQvWb2O86j02v6RUt
         VpPw==
X-Gm-Message-State: AOAM531xRfIcdCvo/wr1X+94P6nYAFaG+bZ2aSxidnsmUHoq0d/NpjoX
	zULovWxNhrMrpxwpTCGOw7JMF5Do/+38HA==
X-Google-Smtp-Source: ABdhPJxhc2KXMJ8FiTURHHMM3VDHMHWYwcTMLs/hTkKxrAxDxMqyvSaqW+bxcfcE1l/tGcU2pTRpqw==
X-Received: by 2002:a05:622a:394:: with SMTP id j20mr7088317qtx.386.1634221886478;
        Thu, 14 Oct 2021 07:31:26 -0700 (PDT)
Return-Path: <jdmason@kudzu.us>
Received: from localhost ([2605:a601:a650:b700:56:cd4e:1c6:8037])
        by smtp.gmail.com with ESMTPSA id a5sm1395524qtd.52.2021.10.14.07.31.26
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 07:31:26 -0700 (PDT)
From: "Jon Mason" <jdmason@kudzu.us>
To: poky@lists.yoctoproject.org
Subject: [PATCH 2/2] genericx86-common.inc: add qemu requirement
Date: Thu, 14 Oct 2021 10:31:24 -0400
Message-Id: <20211014143124.13941-2-jdmason@kudzu.us>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211014143124.13941-1-jdmason@kudzu.us>
References: <20211014143124.13941-1-jdmason@kudzu.us>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Without the necessary fields being populated, genericx86 and
genericx86-64 fail work with runqemu.  Add qemu.inc to provide these
fields.

Signed-off-by: Jon Mason <jdmason@kudzu.us>
---
 meta-yocto-bsp/conf/machine/include/genericx86-common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
index 4651b37e5d68..9f465d72a9f2 100644
--- a/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
+++ b/meta-yocto-bsp/conf/machine/include/genericx86-common.inc
@@ -1,5 +1,7 @@
 include conf/machine/include/x86/x86-base.inc
 require conf/machine/include/x86/qemuboot-x86.inc
+require conf/machine/include/qemu.inc
+
 MACHINE_FEATURES += "wifi efi pcbios"
 
 PREFERRED_VERSION_linux-yocto ?= "5.14%"
-- 
2.20.1

