Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE1E7C369D1
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 11:20:03 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.12615.1745493601577367854
 for <poky@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 04:20:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=sGiVbdt5;
 spf=pass (domain: linaro.org, ip: 209.85.208.174, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30db2c2c609so11638381fa.3
        for <poky@lists.yoctoproject.org>; Thu, 24 Apr 2025 04:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745493600; x=1746098400; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EZ3NhXrUYd7ztsqREIReuuDiIgHDRWZgxhZcbUG8bsk=;
        b=sGiVbdt5JbCYl0iKTsca49FzXCPUabFT5SUayDNDlLAziE5r1ZFeqP/bpc7Cw45zgM
         jUQcsc3pZ79ahE0jMl4i4hFAtW0r8vnEDA5ZhJyIA6tjLf3t02O5uk3HP/p6M7iCFP4U
         QT4FzNTDwuF/vKqrtYKozMX12a1bVY/xTEN0BmRucTynhqf8SuEpL8ZCey+T9+uOKi8b
         dKs8/ye4Fi9n8wJ7IVKLpjPHiZDthrCS/qnO4jW/HvfidNsNCqdS13IFlcJ5XSdcdnwa
         W3OWuMUjPLHpMNFKfWxCbJFeJg4Z86Yrur1lghLrfhCPNEd84IO4vgVxKSg3mUAuovN0
         4zog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745493600; x=1746098400;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EZ3NhXrUYd7ztsqREIReuuDiIgHDRWZgxhZcbUG8bsk=;
        b=HxUzIl09T8OP3L6fzgwTvyMwiDQ/zIqiwLPkdSnDSmmsuZizrx7Mz55a6YLyTrD7Y+
         jQ+sayFsalvzYKQMvmCss1W6k3KipdUfnG69VMMyYG6f6geE4YtezsMly2JlTtqd6qFm
         FZZOxSFXDrO96Od55HpWMoknZR+Hrg6L0iK9XLJUBaN/0n+KVTIVoyNBHIRI7na3JHe6
         XvAJNpmbth7QTMIWtQa5O0BozuzD5Mfx6JL9jE8reDNNsGkGStwSmz4KG4ZZuZkwPYKC
         1N3UcK6zRqp7JeWd9yk2R4PH7VrVsxxu1yxXea5gY6hW9BgEt2jVqt4dsaOFVvlNz/4P
         QFhQ==
X-Gm-Message-State: AOJu0YxRgilS973NEOTqUc/XNJ+VYIotLLjcN4eGzBMvbPoWUe886RbH
	8Xe+UN/PByIUfiqCN6/PeT0YZJAvEn3AkkTYK5EFKrFMyIrrz9NJIBYVxB09/cPcz20vqVkx20R
	dBYA=
X-Gm-Gg: ASbGncvGcQ1xMhBQ9RhZlqMqe+751uCJ36rxognu8pjqjTghc2oJwZ6CGJjCnjpNnAW
	4l4j3rllXOtKT0lVXdvzmyRE2YU2Ydkr9H1y+aAsIKLrFIrY1XuFjb20Fqi4sgHKowISRPx3qFf
	RNeTrdOuMcKVjeieINZWrN2ag82M4EzNsINm9O+l57jqN5baQ/gLJXRA2uosn7JxyKglz82jqsp
	zBuWpr4hzYWgFzoQP0xTK7DDAN1Rv/mY0sKxu93Mv/aZvEFALXXcrwqHnrzNUI2pY4ghn6E4Mc3
	aVywRAGVkV5XtP4wzIY/xb3+TVKgzkwy8533qYiDdE8WJ+dcGmLmSV4G7jpgBtQgwleCaQ3v3kj
	FijmS+zelz+qCMHt53dnI1+7OfOPl
X-Google-Smtp-Source: AGHT+IFwEMvwSAOspQN7j9bESQFdxGUqEKqE0TmwTsUJLSITEYeBMCHbxFJaXlXO4P+ZBpHDPYfonA==
X-Received: by 2002:a2e:a817:0:b0:30d:c534:692 with SMTP id 38308e7fff4ca-3179fcc77e5mr8343041fa.29.1745493599475;
        Thu, 24 Apr 2025 04:19:59 -0700 (PDT)
Received: from localhost.localdomain (87-100-218-141.bb.dnainternet.fi. [87.100.218.141])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d16a8307sm2243001fa.66.2025.04.24.04.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 04:19:59 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] systemd-serialgetty: disable on genericarm64
Date: Thu, 24 Apr 2025 14:19:32 +0300
Message-ID: <20250424111932.294612-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 24 Apr 2025 11:20:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13606

Upstream systemd setup with udev starts agetty on detected
tty's so there is no need to use the build time SERIAL_CONSOLES
variable.

Trying to start agetty on non-existing tty's from SERIAL_CONSOLES
more than doubles the boot time to systemd "running" or "degraded"
state. Boot time before this change (core-image-base with systemd-analyze,
qemu, aarch64 build host):

root@genericarm64:~# systemd-analyze
Startup finished in 2.409s (firmware) + 5.116s (loader) + 10.274s (kernel) + 1min 33.887s (userspace) = 1min 51.687s
multi-user.target reached after 1min 33.876s in userspace.
root@genericarm64:~# journalctl -b -a|grep tty|tail -15
Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS1.device: Job dev-ttyS1.device/start timed out.
Apr 24 08:51:01 genericarm64 systemd[1]: Timed out waiting for device /dev/ttyS1.
Apr 24 08:51:01 genericarm64 systemd[1]: Dependency failed for Serial Getty on ttyS1.
Apr 24 08:51:01 genericarm64 systemd[1]: serial-getty@ttyS1.service: Job serial-getty@ttyS1.service/start failed with result 'dependency'.
Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS1.device: Job dev-ttyS1.device/start failed with result 'timeout'.
Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS2.device: Job dev-ttyS2.device/start timed out.
Apr 24 08:51:01 genericarm64 systemd[1]: Timed out waiting for device /dev/ttyS2.
Apr 24 08:51:01 genericarm64 systemd[1]: Dependency failed for Serial Getty on ttyS2.
Apr 24 08:51:01 genericarm64 systemd[1]: serial-getty@ttyS2.service: Job serial-getty@ttyS2.service/start failed with result 'dependency'.
Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS2.device: Job dev-ttyS2.device/start failed with result 'timeout'.
Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS0.device: Job dev-ttyS0.device/start timed out.
Apr 24 08:51:01 genericarm64 systemd[1]: Timed out waiting for device /dev/ttyS0.
Apr 24 08:51:01 genericarm64 systemd[1]: Dependency failed for Serial Getty on ttyS0.
Apr 24 08:51:01 genericarm64 systemd[1]: serial-getty@ttyS0.service: Job serial-getty@ttyS0.service/start failed with result 'dependency'.
Apr 24 08:51:01 genericarm64 systemd[1]: dev-ttyS0.device: Job dev-ttyS0.device/start failed with result 'timeout'.

Boot time with this change:

root@genericarm64:~# systemd-analyze
Startup finished in 2.411s (firmware) + 5.109s (loader) + 10.208s (kernel) + 24.868s (userspace) = 42.598s
multi-user.target reached after 24.848s in userspace.
root@genericarm64:~# journalctl -b -a |grep tty|tail -15
Apr 03 20:34:34 genericarm64 kernel: printk: legacy console [ttyAMA0] enabled
Apr 03 20:34:34 genericarm64 kernel: 9040000.pl011: ttyAMA1 at MMIO 0x9040000 (irq = 14, base_baud = 0) is a PL011 rev1
Apr 03 20:34:35 genericarm64 systemd[1]: Created slice Slice /system/getty.
Apr 03 20:34:35 genericarm64 systemd[1]: Created slice Slice /system/serial-getty.
Apr 03 20:34:35 genericarm64 systemd[1]: Expecting device /dev/ttyAMA0...
Apr 03 20:34:44 genericarm64 systemd[1]: Found device /dev/ttyAMA0.
Apr 03 20:34:51 genericarm64 kernel[349]: printk: legacy console [tty0] enabled
Apr 03 20:34:51 genericarm64 kernel[349]: 9000000.pl011: ttyAMA0 at MMIO 0x9000000 (irq = 13, base_baud = 0) is a PL011 rev1
Apr 03 20:34:51 genericarm64 kernel[349]: printk: legacy console [ttyAMA0] enabled
Apr 03 20:34:51 genericarm64 kernel[349]: 9040000.pl011: ttyAMA1 at MMIO 0x9040000 (irq = 14, base_baud = 0) is a PL011 rev1
Apr 03 20:34:52 genericarm64 systemd[1]: Started Getty on tty1.
Apr 03 20:34:52 genericarm64 kernel[349]: systemd[1]: Created slice Slice /system/getty.
Apr 03 20:34:52 genericarm64 kernel[349]: systemd[1]: Created slice Slice /system/serial-getty.
Apr 03 20:34:52 genericarm64 kernel[349]: systemd[1]: Expecting device /dev/ttyAMA0...
Apr 03 20:34:52 genericarm64 systemd[1]: Started Serial Getty on ttyAMA0.

Changing the SERIAL_CONSOLES variable with systemd init
("systemd" in DISTRO_FEATURES for example)
is not possible so changing systemd-serialgetty directly.
systemd-serialgetty is now always installed with systemd.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../recipes-core/systemd/systemd-serialgetty.bbappend         | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend

diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend
new file mode 100644
index 0000000000..9fd43259db
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/systemd/systemd-serialgetty.bbappend
@@ -0,0 +1,4 @@
+do_install:prepend:genericarm64() {
+    # use systemd defaults to reduce boot delay from non-existing tty's
+    exit 0
+}
-- 
2.43.0


