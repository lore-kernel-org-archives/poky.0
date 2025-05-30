Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00E99C5AD49
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 17:42:30 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.1319.1748626936266342182
 for <poky@lists.yoctoproject.org>;
 Fri, 30 May 2025 10:42:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=uzVU7q+z;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.173, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b0db0b6a677so1885314a12.2
        for <poky@lists.yoctoproject.org>; Fri, 30 May 2025 10:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1748626935; x=1749231735; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FgKQdJbhvSUoH1FutwT2LVPVCd4mTHSl0rh0YcF7xSw=;
        b=uzVU7q+zJnz3sI3dyURbDSEIXLwn9lDfKaGCY59dORaqRUlRlwNEGMb/MgYXm70Mei
         JBAjoRGgcrvshgbyD8TPAA1Xx9v7NjI/jb6p3yau8KGZiD7Oi+TH/1jVdZnbGOHi7Cgs
         t55BOxNWcRQggxDL17Gm9HTml2tBWrUV6evS/wD6JZfs0qGSgZeWis0CkD4tEiOue54L
         bl3Ly2N6Uif5ssXkZ5IShER8VrkzLjyDYZRm3uZ1zC64Ln2OjPe7rGSa7ZC1GiR+3aBj
         XdzZMaCtLxjHAqx459kY3BJatbi+WtlJgz1mfPDYznuLBK+DVzAM3UhkFP1x72HGHQ35
         VDDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748626935; x=1749231735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FgKQdJbhvSUoH1FutwT2LVPVCd4mTHSl0rh0YcF7xSw=;
        b=A4BdFsojuMypnYDDi15K9NPeoLc7HyPJ9y8GhY/e+XMJhfIG8Yo5D7HJpQSyvJwUE/
         wulGK53fNRDaQH7EpAGCbPsadPHCxPfo1IHodbT4zyYab2c0G9Tl6JCUHzA+C0bsag2B
         RXmQ1yV5YDmDjR+Phv5tBvqOaaZ1qnZf0qbdfn5q8IbkvtX/YgrwrhNyYuhROa7V86El
         bhkLR+e6VU4hEe2Kk4CscXClmtQ5U2MVjH87yilLrlRN1dDtqV/dwNeaUX1arG4HdK9k
         9qjow3Sn7dMJ0t1mihzVdFNgbgvAwPiVX8Bott+Q/iGRQVVDPXH8e5EVWf3hjng4CCWN
         GJVw==
X-Gm-Message-State: AOJu0YzQuxpaWZT6c2wENN5fD+hCIzjx8P/eBFqUXADgic3tNBgBwpd9
	6ZazGKN1mEMyXRUXm15vxUAyw18GKY/XMOaAS5nUGvOyGrYPpwBhtdLTi//NYkKNWdzoHUiyZUL
	emyQm
X-Gm-Gg: ASbGnctmO8TatofJRr4tLK1dwVjkhThU1Yqy2ebgqiuIb5VxDLzLNgLXZeczEwVMS2Z
	dhuCYQX1ZtX+lsLf9TTKabHr1SiEgah9WWcPwtDrq/AwV4jn64VQMQ8leNOwdOMW1RGpSTbnPkt
	hxNEXB9jA+dsUlNVzVT7t3KhdsN6SUCDH1W92RBpr4xSdCiuEXbu7+h5oUXK+JA3rzpeFo6B8bh
	Wo0ONIpSYKDRvcOOXVlKgP0toq8CvCdjB030jLJ1obwQiGCLTLshssTVYx2P4WZcJQFLTwq1OO+
	2CBAoY6mdJpnbP0OAjSGx/XNWr6xNQ1/Q7lR+uURsg/d0zHZLEBPAw==
X-Google-Smtp-Source: AGHT+IHLcLIz9Qo5FPZydvqbmZQoB+snAGbL61bj21Rmnt9GgNqaSTmtRaP0FFywqt1LXz9yPQrHag==
X-Received: by 2002:a17:90b:1e0f:b0:308:7270:d6ea with SMTP id 98e67ed59e1d1-31241a803bfmr6103118a91.30.1748626935522;
        Fri, 30 May 2025 10:42:15 -0700 (PDT)
Received: from hexa.. ([2602:feb4:3b:2100:c9d8:e2d0:bfbc:3a26])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2b544asm1622039a91.2.2025.05.30.10.42.14
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:42:15 -0700 (PDT)
From: Steve Sakoman <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][walnascar 1/2] genericarm64.conf: increase INITRAMFS_MAXSIZE
Date: Fri, 30 May 2025 10:42:05 -0700
Message-ID: <c8b151d2d7879c2b1276824444a963a59dfcf240.1748626837.git.steve@sakoman.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1748626837.git.steve@sakoman.com>
References: <cover.1748626837.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 30 May 2025 17:42:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13628

From: Mikko Rapeli <mikko.rapeli@linaro.org>

Since pmem kernel drivers were enabled as modules, the initrd
size limit is hit. On genericarm64 all kernel modules and some
firmware files get installed to initrd by default which make
the thing large. I'm working on patches to reduce the kernel drivers
installed to initrd and to make the kernel in general more modular
(btrfs 5 Mb etc built into kernel by default). For now just increase
the size limit to unblock genericarm64 builds and testing.

Fixes: https://bugzilla.yoctoproject.org/show_bug.cgi?id=15833

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 09bef6a491c087f0f0371874e759aae08a720c4e)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index eb79475..722bc7d 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -17,6 +17,8 @@ PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
 # Install selected pieces of firmware
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-wl12xx linux-firmware-wl18xx linux-firmware-rtl-nic"
+# increase default size since we install a lot of kernel drivers and firmware by default
+INITRAMFS_MAXSIZE = "200000"
 
 # Use an initramfs and populate it with the kernel modules and key firmware
 INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
-- 
2.43.0


