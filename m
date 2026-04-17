Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E68DF43689
	for <webhook@archiver.kernel.org>; Fri, 17 Apr 2026 09:35:08 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.40922.1776418500146966569
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Apr 2026 02:35:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=kowUq+CW;
 spf=pass (domain: linaro.org, ip: 209.85.210.173, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-82f8b60e54dso335697b3a.2
        for <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 02:35:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1776418499; x=1777023299; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7/Kxjabi83ls6tcrAM3eSK1bbJQwcT96ZhzvOtOT8v4=;
        b=kowUq+CWJDx9m5T3bbON+T1cqE9C9uNgsqjWGlyYx3gGyBTDVRzaI00IsUDqrAPPuA
         uTS2d+ImjrUBnrwwgyOQ0LMkCNaSwsTMIHVHSl4/Ru/JTS7n0OsQiU0YcPnbg6bRw1fK
         4FtjPnLhMj2I0KpsZtnTsfx8V3xSkZvBclHnyi59Qrkqe7mKeo3sU53iyzCNTI1gALGk
         S3XL07vQQIZA3cQ5G74pqwv4mxPpurPWuQgJwuoIPsf7ag3772Xrt9xDMK0kYc81N/mx
         F/JwLFOzvHjNVvKvEBJGUvzBXPXNHJc8JS4W/LnU3bCIenB3yTNZRjy6H0xPMSbf2GmK
         R1CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776418499; x=1777023299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7/Kxjabi83ls6tcrAM3eSK1bbJQwcT96ZhzvOtOT8v4=;
        b=RxRqpRYz+NJOk5/WdBcckN9u4l1XB9+TdFizJ9xmlmS/1gWbm07qe+NA7suMj0ajYZ
         6Nus4lvjzDLWkpcB7lpKMKxRdToDYfCjq0CNHY4BDUu4SLEj0YyooSvKe2yp6zwZQrXN
         KDEJWzk5lYsGne2VSkuFwcZar4QQ3C4MB4DvzUKQWjYV2eqKu0wwsOsapAXce0sTnez6
         +xXvQthrO1qaAvKlK2tCZq7GcyUirI3SgW5Ih2KfS44Dkm/lXj+3WAEd0tYaD4wxralK
         gsILFlntcD7ryuIybX8GhrihDxG0gYDHhc5je18P02Rkzx0GoOxHgxSKaqOLhwZ88CGn
         tVIQ==
X-Gm-Message-State: AOJu0YzC/FfN0x+XtpnNdBPOiKaODNzz+LZ0rNF2bT7OhoiR65t5FGD9
	lBWqpMnPfHGAMvpZHIGCDkiqoKVLVNVNKSLBC5NFQWyodigh0r6WSmwRn7iNkmfj8SMgVskRTer
	KctRn
X-Gm-Gg: AeBDievDTBuaD9o1xM8CNAbEdIZsgcbzMyoNpnvt4s+eZk6q/dQW36Ny7/FJt24lUVX
	rAdWPPkwDFN4cqp25nurwfuUbknAhYZwg4nKu6v5/L53h6Pe/bxS/LM1gqqHUdJjTQD/ROYRjAa
	cY3mTOtNMcJ9I8qaC1x+7KPWCbdwybPQTmgV5xkvUHPcOkPgg9BUFu/PgdDhNbam/D4vG+sC7hv
	JagLOGSprYm6/LBUcSoJGY4syKro8oQf2uYnKqCFm9gpIygWoA8X+KnRX1cMgGMahHZJWOBjsaF
	sRrNvoHhk2F8nY04oK3oY4DzkDjLj9OrTQXIDE93sXz6L05fNioB1QUFavVPRxxc8NPhEd3DV0V
	861zISN8vTkfUfvIMTl0QnJsf8RPM/LWlKWWbbYI/ffA25zZ92zk4wCq7GcmDQ1V8CEUoAFFh4I
	wJ7dDY2qNtA2iaxJcAiTbEwesVIdOdQH32cIE6BjcQ7y1DnwwUcNVhc9me3/p+6MZUBd6JdYbXj
	sCpf4Tl89fGIzv6
X-Received: by 2002:a05:6a00:3498:b0:82f:4566:bbdf with SMTP id d2e1a72fcca58-82f8c862662mr2278036b3a.14.1776418499482;
        Fri, 17 Apr 2026 02:34:59 -0700 (PDT)
Received: from nuoska.taservs.net (78-27-71-225.bb.dnainternet.fi. [78.27.71.225])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82f8ebb3fa2sm1356206b3a.29.2026.04.17.02.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 02:34:59 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] genericarm64.conf: increase size limit
Date: Fri, 17 Apr 2026 12:34:42 +0300
Message-ID: <20260417093442.2211911-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 09:35:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13908

More kernel modules, firmware files etc increase
size of initramfs over the current limit. Other options
to reduce initramfs size have been discussed but this
is the acceptable solution for now.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index be34a56..e10bec9 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -29,7 +29,7 @@ MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-qcom-vpu \
 "
 # increase default size since we install a lot of kernel drivers and firmware by default
-INITRAMFS_MAXSIZE = "280000"
+INITRAMFS_MAXSIZE = "350000"
 
 # Use an initramfs and populate it with the kernel modules and key firmware
 INITRAMFS_IMAGE ?= "core-image-initramfs-boot"
-- 
2.51.0


