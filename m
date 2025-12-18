Return-Path: <javier.tia@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1DFD6E2AD
	for <webhook@archiver.kernel.org>; Thu, 18 Dec 2025 15:43:45 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.45222.1766072621092164806
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Dec 2025 07:43:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Fg/46/Of;
 spf=pass (domain: linaro.org, ip: 209.85.221.179, mailfrom: javier.tia@linaro.org)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-55b22d3b2a6so464206e0c.1
        for <poky@lists.yoctoproject.org>; Thu, 18 Dec 2025 07:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766072620; x=1766677420; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=tcKHQmXuUe9rNwkeF/PAZ+fcXvxRXhNOlyTq/dOq7QI=;
        b=Fg/46/OfZdP5RBUerTRnI8CL3WSaCRxXCTRH98cnBbetc/e37t9UAsnxXqRrWbgpZm
         QeOtnIXx+BskkIkwtbqcI43J7lxgT+8SS7KCWVP2PDwjxEl2RUGLdN6FnRyz0i3a11P3
         +GaJ0+LWJrJN4iqheRZxJal2Xqp2CS9Wk9sNX2IDumyLWpa4j6QyVBS0AcgcQvxJczCP
         LY5PD523yzPSOXYx8pOFvK6lVh1Cdf+QH6oFBy4+/ZInZ/KdSKxUcIPUt2oaEs9zBTs6
         uVFkTOQQplwgbi/i9GSApTGOiL38Mf/KGyG+7kz8G+qjgPs2hoNYMH0AAo56PKFi9lRx
         QRLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766072620; x=1766677420;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tcKHQmXuUe9rNwkeF/PAZ+fcXvxRXhNOlyTq/dOq7QI=;
        b=wEUhRNfRBbSXqwvtXznIQSpTk38kwyMNVqL5JeQ/EowAbiTmbBsQUwdZ6ZUBIXVwLD
         4Z1j1KrDj32HzKLxN/Z5Ja1aFb/GE3y/zYbZ6hH8sw5QJIN14oU+VBG5yUQLKSg/Y42V
         BPBZCs5ddOrTbv3ii5v/LuI3rhPB3YEq92PV4O7cnm2SleUst2wjY8ibvH7+9hBob7OH
         ebprhzcQaRT9ckxUI00tZo2V0GsydiKSJeIK+vA0bxpBJvyjKmVLD/h+k6E+oUzu4SCO
         dfSbq603F/oASMMDX8Ysefq0wAMaSIgpxg4vD3AEm8QUw7x9r4+w2Bvh1oLtiafGbTOj
         tU3A==
X-Gm-Message-State: AOJu0YySC4pDkez/xQjR7SbsAKyHk9RLOIgzkhs/ARzLMJHsI55bPAtV
	RXok6QMJuUUG0pG22BlocltjvOswrpOwmUm76Jg5mu5ABumEgZuHRMa7k5TWb6vjdHY8F4erHYy
	3m0W7aJA=
X-Gm-Gg: AY/fxX4vAD3VxNRSDo8UQMq6IGZ4fMx06bmfnkwGX5jsj8K13kCQtNApSdIYRQZu46U
	pFISGzxsm2VNnB0Q+vpY1fGKJy6a52oSg+RusRCV6xzBvKYOPNKt8lxLchgEXnVyD2roOIzv8Gk
	9IOn8BlUgnjX4vLOuWm+Gq9PMJ/6p2Q/1uVdOBnhh5/n1pKHF7F5hKhcRV8IHI4D5h38oGbiF78
	/9pj1hJDQWIOp8cTcPmQYdBpFJU/6H9QMIs63TRhLDMJ3BrqaKW4Xmt+iD1gtuJ7zS1YmpMz4BQ
	tEp0yyuBEdet+AE966yITGIf3rOjNn9ACUEUrW4jrIWgY7WaABDpVuY5KBsrBJt7NlXKduKIgmL
	CyFKAA3J8FlSno+928pZksT+kyBmLwdf08AzAtVOjnYhM28zFKkApy79g0X9Hhlk/gRpWCstU/c
	+V7FNVV0qaHOsMNxDZvG1IDYZ4M5UATQZMwzF0
X-Google-Smtp-Source: AGHT+IF/gtfuvBrG6d2Zh+zSk6x4cvnYL/5DltFj6IP7+E+e+PT7zeIWaM0MNFzQmiUbAiup/2m0QA==
X-Received: by 2002:a05:6123:551:10b0:559:9678:971 with SMTP id 71dfb90a1353d-5614f4b7cbcmr918695e0c.0.1766072619785;
        Thu, 18 Dec 2025 07:43:39 -0800 (PST)
Received: from jetm-rog-crosshair-hero-x870e ([177.93.10.151])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56150f4d41asm1081383e0c.4.2025.12.18.07.43.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 07:43:38 -0800 (PST)
From: Javier Tia <javier.tia@linaro.org>
To: poky@lists.yoctoproject.org
Subject: [PATCH] meta-poky: Enable NFS server for linux-yocto-dev
Date: Thu, 18 Dec 2025 09:43:37 -0600
Message-ID: <20251218154337.2801687-1-javier.tia@linaro.org>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 18 Dec 2025 15:43:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13808

Add the NFS kernel server feature to the linux-yocto-dev configuration
to match the standard linux-yocto setup. This is to fix the OEQA tests
with this error:

- runtime - INFO - test_systemd_failed (systemd.SystemdBasicTests.test_systemd_failed)
- runtime - INFO -  ... FAIL
- runtime - INFO - Traceback (most recent call last):
  File "/lava-downloads/core-image-full-cmdline/meta/lib/oeqa/core/decorator/__init__.py", line 35, in wrapped_f
    return func(*args, **kwargs)
           ^^^^^^^^^^^^^^^^^^^^^
  File "/lava-downloads/core-image-full-cmdline/meta/lib/oeqa/runtime/cases/systemd.py", line 100, in test_systemd_failed
    output += self.systemctl('status --full --failed')
              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/lava-downloads/core-image-full-cmdline/meta/lib/oeqa/runtime/cases/systemd.py", line 26, in systemctl
    self.assertEqual(status, expected, message)
AssertionError: 3 != 0 : SYSTEMD_BUS_TIMEOUT=240s systemctl status --full --failed
× proc-fs-nfsd.mount - NFSD configuration filesystem
     Loaded: loaded (/usr/lib/systemd/system/proc-fs-nfsd.mount; static)
     Active: failed (Result: exit-code) since Mon 2025-10-13 15:01:58 UTC; 2 months 4 days ago
 Invocation: 14e22af5612e4abaa101f1afcf65a5ce
      Where: /proc/fs/nfsd
       What: nfsd
   Mem peak: 1.2M
        CPU: 32ms
genericarm64 mount[347]: mount: /proc/fs/nfsd: unknown filesystem type 'nfsd'.
genericarm64 mount[347]:        dmesg(1) may have more information after failed mount system call.
genericarm64 systemd[1]: proc-fs-nfsd.mount: Mount process exited, code=exited, status=32/n/a
genericarm64 systemd[1]: proc-fs-nfsd.mount: Failed with result 'exit-code'.
genericarm64 systemd[1]: Failed to mount NFSD configuration filesystem.

Signed-off-by: Javier Tia <javier.tia@linaro.org>
---
 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
index da9199d..c06914d 100644
--- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
+++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
@@ -6,3 +6,4 @@ PREFERRED_VERSION_linux-yocto = "6.12%"
 
 # Ensure the kernel nfs server is enabled
 KERNEL_FEATURES:append:pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
+KERNEL_FEATURES:append:pn-linux-yocto-dev = " features/nfsd/nfsd-enable.scc"
-- 
2.52.0


