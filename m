Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B7F9CD343F
	for <webhook@archiver.kernel.org>; Thu,  7 May 2026 12:20:10 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10456.1778156406673108987
 for <poky@lists.yoctoproject.org>;
 Thu, 07 May 2026 05:20:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MX7RZ1fi;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4891c00e7aeso6861975e9.2
        for <poky@lists.yoctoproject.org>; Thu, 07 May 2026 05:20:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1778156404; x=1778761204; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=YP6JMHGpAAp2w74KNmxrH29Rz704fvj3n+Rdq7/K2KQ=;
        b=MX7RZ1fipI/ncUCToMU6dVplMOahN1X/WU7qIA3vVzZ9DFsTlXMI+u2DDO1lHRmxZM
         qrRsQ8nuei46lVjMKdjB6POwNM5Nh+tvy5zjFtJEYppYVap7tyaecMGc1Y7s1Y9RKzy4
         aCREGXQXrxDgXEzqV0ihDkFlbDCMuOfRp8gRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778156404; x=1778761204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YP6JMHGpAAp2w74KNmxrH29Rz704fvj3n+Rdq7/K2KQ=;
        b=MY1Q2IYOm6RKBWNahv9hyHDfxwFBsULQ8kLT9pZFggn7Te+xR0JCLKpVKue06pvmRS
         /65LpvZhPShs6MNR4BX/aMFDuTzJ/UOmmHCcUSdVH80zG1aN/uuqcKwls9Kl74etK1yf
         7eBQ2WF3AvtRX4w9v824NW2+7sQyDwAD4qE4DALn5pRfWi2HL19LrzVgie5R0+RlyIHJ
         ak3lW45DmSXA2mrIPF/30inLPTVMCKicirFi9Yct6jgSMwrj5rP3uDcoTRQauM0t3Ban
         UnSxmQz3y35Q5N6gAklg7LkfXl40bjtk2Wvvm4EOrPArOLitNpG9d5eJBj7OPjPu2a++
         MZgA==
X-Gm-Message-State: AOJu0YyruJP+vbfhZn4REmGvTJSI5E8Dga/1x1i5IRU8J/4IxP+b1eOI
	ri0HQeoVz0koLCXeakz9+rF/dhkypPW8Cb/4tJW9vigSlvZDY3JGtpaKe3f6HJbgODrM0NYX2cD
	Mlvmg
X-Gm-Gg: AeBDies4JUgqE5S72tMJXX41NLZ8uJ+k7jz6zj/TJfTAvXgo3eDygS39y/UBC5FJvUJ
	X2MhNBCMAFHLpRon7/2w9kPFLAhxw0tgFtR8kCdPvX2skSxn2h+yk3nQkKoApU+qU3Hlbn7kCdc
	NkwHOLRYh55kty/GSTW9QmLkOgEn9pwoIG2C/zVowA1bf5pJHmkTeKqK/dP+ZkdNsrAWNmlL1jy
	SI5MyErN6i8du58Hj0efHb7Wp370TY6a5/2f/RGa6+HLnCF1bM6fAjktAInjzojh7QOU+7+cKN4
	Ep4F16BtfEgWnf6tbGsfh0z8twZXdArPgRv1NsvH86zPOynUnCp8i+PJyqTKZXUsek6DlKA30nZ
	UK6p2Q1ZhF9mtlrASXTRKsHuLKikZ2+rphQHde1KND6ShB/YMES0vgBFHCFdfXidmIk2yRnLCZO
	GgddNQj0ffj1VpeieO2BqCv5eZDo3yh5w1lXj2ftSaOiwXV6mRWs8N+Qk7tYFPPwsdzgQMFyM3m
	w==
X-Received: by 2002:a05:600c:4881:b0:485:3ff1:d5ed with SMTP id 5b1f17b1804b1-48e51e0a697mr80530845e9.1.1778156403945;
        Thu, 07 May 2026 05:20:03 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:44fa:5dbd:b82d:7b00])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48e5d555ad8sm26598405e9.1.2026.05.07.05.20.03
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 05:20:03 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] beaglebone-yocto: Drop jffs2 images by default
Date: Thu,  7 May 2026 13:20:02 +0100
Message-ID: <20260507122002.404215-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 May 2026 12:20:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13918

It isn't clear that jffs2 images are being used by anyone anymore, most would
now be using ubi. Therefore remove it by default to reduce 'clutter' from
the output.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index b76edffa8fa..676e057cdc0 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -11,7 +11,7 @@ EXTRA_IMAGEDEPENDS += "virtual/bootloader"
 DEFAULTTUNE ?= "cortexa8hf-neon"
 include conf/machine/include/arm/armv7a/tune-cortexa8.inc
 
-IMAGE_FSTYPES += "tar.zst jffs2.zst wic.zst wic.bmap"
+IMAGE_FSTYPES += "tar.zst wic.zst wic.bmap"
 EXTRA_IMAGECMD:jffs2 = "-lnp "
 WKS_FILE ?= "beaglebone-yocto.wks"
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "kernel-image kernel-devicetree"

