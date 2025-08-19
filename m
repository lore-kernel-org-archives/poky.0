Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70AD9CA0EE6
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 22:53:06 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.7132.1755643978315593504
 for <poky@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 15:52:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20230601.gappssmtp.com header.s=20230601 header.b=M8S3O60h;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.170, mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-7e8704da966so410604585a.1
        for <poky@lists.yoctoproject.org>; Tue, 19 Aug 2025 15:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20230601.gappssmtp.com; s=20230601; t=1755643977; x=1756248777; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=xjG67gEgkmWIPIlb27GhCPdu35S2QMAWOn7zvF/IH4w=;
        b=M8S3O60hRHI84rS6aqT54u4Tjn05/uXOYmZTsBJmKuIL087RuT1tBBCEH/8DSX4x0E
         t3ZBKbEBjnsVVio9SSqlSvHFq6X3rHxDHl2tZWuGRYG1i8eiN6EaY8x/B11eMJcbVgOw
         fYQitnODfdC0uVed2gs0YW2KP0obwmdeoZQJ0GFcLuKyEIYd6F0tLiqlij6lhS8qXbAu
         TDO5KLmOmles1nSfQaeBzEm7WnMKm2v5jxzlxjcBo9tzIcNlbwBnVLp/H+RoAqbiZu76
         6dAICR+iYFAjVs2rtyG+yyJ/pgjz+5mntRWqILFyQvwrT4f6sQ89mfm6SphQssowKOdf
         sm+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755643977; x=1756248777;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xjG67gEgkmWIPIlb27GhCPdu35S2QMAWOn7zvF/IH4w=;
        b=fMmhxiGMaSDEJ1+TULjWapqBKSzWe33+MtfICBJM9tNLHsMsmxpbsCUm2C4bb87tv7
         E0FbG3VpUSQKLhtDP97GfDh1AhbW3Gs1KVFf47TuNGhMjdlMcSLnQfndciZj8/DUZPnX
         X7KBmUv1okqN/9iHj/wO0its7boXX04qqDf8gQPJZPqj7kvpNVLko5hFKuL2sW1E1Ysy
         1xB7epfhFiSxqpAqC0S6RWnoXISmMRjpY+zhdOYm4grlkko2XagPci3g0dhqsUIZB6kh
         11DAUbNADitUhoTxXiTyPyWsFKCOjBhyify8YE5DcgCl4b3kDD6Ff6Ds8nfFHqcO/B49
         iqfg==
X-Gm-Message-State: AOJu0YwKlS0FUKhODIFuhJVU2FaSRyZOkPQPY6ARezfJ/RzRtBRgvVbl
	0thDDiYszRmSPVW9oEKTtJX/8x909mPLZEhC0dbI0lFBSFityVE1A4o/uaqqN72iwUH7NYH8UEt
	mhhc=
X-Gm-Gg: ASbGnctvANNKCkPwXLi2Sd9iTNIaG59BYHFfRwenLiY9mLAULZDKkLrp4AdFjiCfYLv
	0/vqZK/Udolk0EAfDwQ+6UD5w6RjJYiVLQCmDUxZ9PFN8JWPHqJ/Z9rwP61PSkoTQ7VaHy37SJm
	W1tFE/ySAZ18pxU5S1XjD7qVjzCjqG1SLFLm2gtwmwv6GgLyuv2k/Mkr7nDtC3YcM0ML0KfwoPR
	OJMHHpQs4JtoYyFqgoDV8DoIjExgm1gu37OQLEhFHPJSAdwlKuG8DgBbkFlTX51d06tIickkvSc
	OOYU+HzyL0Ml/Hz2EtwcwTdSUarE4ryFwBM+2f1ygovhsfNFX42chpmGTOuKQz3kgjlbYIyTjOQ
	AU2qXtXxX46PSFA==
X-Google-Smtp-Source: AGHT+IFY+419LEYL85e0jyaEr60CVbB+YIReBFBb1T4s8IWTafa2TtQwuKSdcjBd4RPnAldY/0kyYg==
X-Received: by 2002:a05:620a:28d2:b0:7e6:9e25:df13 with SMTP id af79cd13be357-7e9fcb75309mr111172085a.51.1755643976914;
        Tue, 19 Aug 2025 15:52:56 -0700 (PDT)
Received: from localhost ([136.56.27.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e87e1c56e9sm828738985a.67.2025.08.19.15.52.56
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 15:52:56 -0700 (PDT)
From: Jon Mason <jdmason@kudzu.us>
To: poky@lists.yoctoproject.org
Subject: [PATCH] genericarm64: change QB_DEFAULT_FSTYPE to wic.zst
Date: Tue, 19 Aug 2025 18:52:52 -0400
Message-Id: <20250819225252.3051682-1-jdmason@kudzu.us>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 19 Aug 2025 22:53:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13726

From: Jon Mason <jon.mason@arm.com>

meta-yocto rev 506379cb241e6a865139307e06216a07f737b602
changed the IMAGE_FSTYPES to wic.zst but did not change
QB_DEFAULT_FSTYPE to match.  This is causing the error:
runqemu - ERROR - Failed to find rootfs

Change the QB_DEFAULT_FSTYPE and it works as before (only now runqemu
requires the 'snapshot' parameter).

Signed-off-by: Jon Mason <jon.mason@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 094af0eb9cb9..0c78960199a1 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -49,7 +49,7 @@ QB_SMP ?= "-smp 4"
 # Boot into U-Boot and let that scan the disk for the next step, don't pass any kernel or filesystem hints
 QB_DEFAULT_BIOS ?= "u-boot.bin"
 QB_DEFAULT_KERNEL ?= "none"
-QB_DEFAULT_FSTYPE ?= "wic"
+QB_DEFAULT_FSTYPE ?= "wic.zst"
 QB_FSINFO ?= "wic:no-kernel-in-fs"
 # Mount the wic rootfs as a virtio block device
 QB_ROOTFS_OPT ?= "-drive id=root,file=@ROOTFS@,if=none,format=raw -device virtio-blk-pci,drive=root"
-- 
2.39.5


