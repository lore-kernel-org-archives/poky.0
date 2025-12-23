Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3A64E6F08C
	for <webhook@archiver.kernel.org>; Tue, 23 Dec 2025 12:32:13 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.99862.1766493126197952238
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Dec 2025 04:32:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZUmp4eO1;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47774d3536dso38926615e9.0
        for <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 04:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1766493124; x=1767097924; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=MRA9W+Se69lqa2MRr5RnLg8tKaRA41KzxcFwNTgAxQ0=;
        b=ZUmp4eO1DJx4CiYKAUkBsNi8TVNykcnhVjkjnX2EVWlNaMJB5/2x8G4thRnew25exg
         YDT94R7A77Kryb8XMO6VU9HZjeDqdaea6jmg0pWp7G4prvUXwkveJe6WlrXHZSbI7JzT
         qc9yRcXkdqhw0/Rnit20bSxPCbLRGr2BdYUyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766493124; x=1767097924;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MRA9W+Se69lqa2MRr5RnLg8tKaRA41KzxcFwNTgAxQ0=;
        b=aL4Zwj/LCBVhUOSRzANFU3ElMmzmcDfoxCM+BAkIx5Uf+I227eKgp+BzQd2CWwgDOO
         6OWOZ9QHD6+XnFQDouN4603LNhxvGrNOzlBl4I+rl56tPNo229lbCK40fre5930fZzy7
         /YMXOBZmh8QfsXFJ1iDPKg4GDt9/sP5V3tbgYD/BnNCdKtNojYEDRbYtzcDaB8z3p8ix
         TwWdsKoppJkWnRs+RDs4+jvYmX6+LL7nk3W4uFG6xMzc5KQkqiA/5+2mvj44uh8iRf27
         Twf8dXGlXg8cIYnzDKr/Ut3xPuh7vv5OWzxOMZ/5xH0FCTPUTa0W4T4QG9+c4IM41r84
         Dubw==
X-Gm-Message-State: AOJu0YzWGz5nveNPb3MnZqSf/rPPQY7uRdpOVlJ+hJqkcjwdIRLUL3XF
	HWjWFHonVzgZK8munZbCN2ieXFLcBKrJ9dUBq3Idj3jk+XyreJO4LSU1PXuMtUSyWIXIxpWzElj
	dVsAyEqg=
X-Gm-Gg: AY/fxX4yCMZJ2R1v7pgIEWRrrrhaq9nFKcChRn4UpvOJtQEjcHZ96zqOjXUtETnvkga
	oHuXlja/SIPk49q5n8JFZwy+Bni43S5BAPPbOP8XvC3w3CdHHFzoToUVektI9AvWMgkMFA5JXYZ
	zYUyCllBNdNB356QDJxvHgQ2+MbqY68x20lzXuIAZGUNoXxusnDQZzOS1t+qoFJML5TVHcvuBP5
	1pKKq9Asr8BhMWmSwOJE5/KnqQu1P2R96xf9Eghg3f7bIgtvKGRbP19Mv/L9YJhUE8kzdDJaAxL
	xEoEt/FlqPMtS6Jcssg5QbI4OIpV7uY9LzO/eIkJgp/1eGsDLNQ6Oa1EXRzZ3G3/EQv+jVt4nNv
	H+BtxdMsY7uSD2VHzY5eH1tSUnDqcce4KhrMErsNpz+eym84O2xYfyb2eqUXn8cvawto0mjDWk8
	a0h85rz5qQDCvPwTnV2qS8476njTLkz/vtyUmkAPLdmgpkL26QtA==
X-Google-Smtp-Source: AGHT+IFKUOHtmNh8/U6d+1FNTu9GTfQ83ab8hmjM2LYHB/qtTmY39P/Z/aSi8R2ZQd1q+UE5Sndmhw==
X-Received: by 2002:a05:600c:8b82:b0:47b:deb9:163d with SMTP id 5b1f17b1804b1-47d18b99b99mr135015925e9.7.1766493123516;
        Tue, 23 Dec 2025 04:32:03 -0800 (PST)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:fbe8:fa2e:dc4c:3e42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be3aea77bsm112592035e9.17.2025.12.23.04.32.02
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:32:03 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericarm64: Increase initranfs size for 6.18 kernel modules
Date: Tue, 23 Dec 2025 12:32:02 +0000
Message-ID: <20251223123202.1547855-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 12:32:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13810

The new kernel has more/larger modules so we need to increase the
initramfs size again to allow it to continue to build.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 5259ea98152..2b1ce4bdd02 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -29,7 +29,7 @@ MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-qcom-vpu \
 "
 # increase default size since we install a lot of kernel drivers and firmware by default
-INITRAMFS_MAXSIZE = "260000"
+INITRAMFS_MAXSIZE = "280000"
 
 # Use an initramfs and populate it with the kernel modules and key firmware
 INITRAMFS_IMAGE ?= "core-image-initramfs-boot"

