Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86933CCA471
	for <webhook@archiver.kernel.org>; Fri,  3 Oct 2025 15:28:11 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.10535.1759505285089103254
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Oct 2025 08:28:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f1VrCmAE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so26015925e9.2
        for <poky@lists.yoctoproject.org>; Fri, 03 Oct 2025 08:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1759505283; x=1760110083; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ol0brJaI8L8i0LXSkmwq3EXkv+4NyorCoAZ9SCILugA=;
        b=f1VrCmAEqTzDwruFs1y3z7kerTdy7y7icqc0WNRk2+4iTZpy1bxZkKr/G5UyyqklIE
         iKRnv2xqxkenzqrRwK4GlPKCyKIBuvHHvZb4eBBhKLatazvEH3TfDajqPNxh9/zl1tkG
         tcoFJ5wuFcQ4+qjs2EqbBISlvd3NyMnU0kyGY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759505283; x=1760110083;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ol0brJaI8L8i0LXSkmwq3EXkv+4NyorCoAZ9SCILugA=;
        b=mejn5sENqJEugzwQnNvLxXlVAa5mmb4mtElLfAb3ndD5mTQ7jmuDkS/k5QvioZ/1ER
         sC7g/rF4ib9PfhKKYAqdyd5YtXEywyfacxHbIPC+CyWlLz5XeWSAK1/iVRKCinyDlgSg
         O4PWG87UxYK3JftykNko9qgpi6UwsE6uQrXTBMv0PkBAxTaG33sV2spTOGYhaNVLEszq
         Dg0d7N2lTGk70qKvYwPkRP7WkRG9YykQE4ZOeh6naNYSjQM6i0B00mo2lmSt2ysV7YDv
         1tvpBaLu+F7zxMBp6qSKk3/Jh3ma7K6KgYgQ31rC86HdrDek3ieHa5lwg4JF4EJnis3D
         sd5w==
X-Gm-Message-State: AOJu0YxXiKhA7PN5FsV7X2eRBlddyeAZqcmLD1JQdzzxPe4lEwArTgKL
	FgXA+X6cqsW1gprt24YzxUdB52HdlnP8/vf/b33E36jaffzaQUHPmxZhG0os+BJYjKTZHKhcLxJ
	zbYtm
X-Gm-Gg: ASbGnctDEFXOiH/GE6eDxyR1mxfuv1qsRQWi5HDLzmPaU4r7wHGFR/IrFbMOi8mBXQh
	x87FbVW9BYktcxmWsu1nI+/3G0w2OsrToFlpPTD+qY9Q8zn2sfFv9c5kD0GSq5JC5C+mQ5gp4H5
	bV/Z4Iqc/0das25K5Trk0adouNw2JDaWrPDqQFecoQmMkdrQnH/RYK9q/CoZpEkmnwN1oQdutkU
	USSGZfppMmin8v56OJSvC0ovJrbaphRq0z4wMAwwtC0IgfdNoDrv9HuA5HYAVWcWQX8bNpzkmwI
	yR6jyQu7AJGIWPjVypyogpMPWNw3jHKpuy6iMJec46N5lltpOoTHU0JxHFKNQ1gec3PusAs/qu9
	XV40kL0skYFK6DV0COxrd/t2iazsdNZWsjefnZZ5czBFtMK3LruGGbAPrNB0OiOAPw41QfyY4F+
	pIWikAYoup
X-Google-Smtp-Source: AGHT+IH18RaOS4ah/gORPlkZtj0AcClrnC/Ryb/b+mTaKI+yWO6hr1fJlt5YJQ7dYG0bcTO3hSdcRQ==
X-Received: by 2002:a05:600c:1909:b0:46e:326e:4501 with SMTP id 5b1f17b1804b1-46e7110aecfmr26355595e9.10.1759505282654;
        Fri, 03 Oct 2025 08:28:02 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:67c:cc8a:4a49:c12a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8ab909sm8209511f8f.19.2025.10.03.08.28.01
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 08:28:02 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] oeqa/selftest/systemd_boot: Fix changing MACHINE during the test
Date: Fri,  3 Oct 2025 16:28:01 +0100
Message-ID: <20251003152801.490021-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Oct 2025 15:28:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13761

With config fragments, changing MACHINE in the test like this no
longer works. Use the forcevarable override to allow it to work.
This also needs a tweak to bitbake to work correctly, sent
seperately. Whilst ugly, this avoids the need to start changing
config fragments.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
index 781763d1f15..961d4ea31d0 100644
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
@@ -18,7 +18,7 @@ class Systemdboot(OESelftestTestCase):
 
         # Set EFI_PROVIDER = "systemdboot" and MACHINE = "genericx86-64" in conf/local.conf
         features = 'EFI_PROVIDER = "systemd-boot"\n'
-        features += 'MACHINE = "genericx86-64"\n'
+        features += 'MACHINE:forcevariable = "genericx86-64"\n'
         features += 'IMAGE_FSTYPES += "wic"\n'
         features += 'COMPATIBLE_MACHINE:pn-ssh-pregen-hostkeys:genericx86-64 = "genericx86-64"\n'
         self.append_config(features)

