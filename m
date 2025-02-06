Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B43C02194
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 14:43:55 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web10.42635.1738853028872584835
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 06:43:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=O4Rz6T0S;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54411e3c610so497556e87.1
        for <poky@lists.yoctoproject.org>; Thu, 06 Feb 2025 06:43:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738853027; x=1739457827; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LrPRIYfGUDQ7ZjVY+VhkwnAaMgX6/brWIdLLNvoK174=;
        b=O4Rz6T0SUpVC9NV66NWLyaDBo22z9dNFE0Bk7vS48aFNDbkNzuokeS2ewFQejSxckJ
         RekNnNMxkuEG8R7faFCujphhFjL8WoxtII2jTGQoICqMrn5eINgUs6Ig7ceQoWIZf/Pv
         Svyku2u7Umi3lf6+VD/AgRyiVtahEDhQTQzpn4YfYEBzelksWqtwXEZawLwTwlBDKNYL
         w1Lx4Qczctm6JBJIp4WtDXaewto6sIxzxxMQG+3eCvhGP+hoR+9lb16u4y0IPYJ5ik4P
         Y8gtnmEGQnhszPUha+2XgILZT9oAtdId7YZUPk6S5r1bh6yRYlLyUFZkR4sRjhGBM6nx
         txUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738853027; x=1739457827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LrPRIYfGUDQ7ZjVY+VhkwnAaMgX6/brWIdLLNvoK174=;
        b=qg70GvFFWSYnuCLKCJA9qEbOxHpDcQ1ZoyGenkyHUWVu9l1fVLwKqN5kxpHnr/10pe
         UaTyt/rQcbLyouJyvQ5s8RwvVI7x4igrKy+eT7NdjiT0WQRcJHsbEkW0KSWXeRaBDMqN
         K2zmwUmrvogR/YWp90Pm2QbE2QG2wI82gSi6jNh5M7KQGoq2/rlV7Dm5aqqCXZNnRp6z
         V6r9ma44CBCH9sEyaa/A8L6sTC6Rueq/cIvwGNKDsPQo8q0cldKPFUMK8AfECTYQlLpH
         YkfH5vbbTkAhRfC46wuZFgHx0A2md/DPUNGb4mqXUxvixXjBdCWXOHq2yt6bJp65eSao
         YASQ==
X-Gm-Message-State: AOJu0Yw3ICfaNfEg3FiAvz1upx5XbAAgaqPBzaXuZJYdlvQkMbv0IzOL
	eBYFEGwTB855l4KdFpapLHijZPxz+Q2DNVyZIPNeRlCTjjaHe6KcIngngsO2U4fudTDIzOxQcVu
	O7d4=
X-Gm-Gg: ASbGncvMuy/fyhF4oMqFZETABOcVd0kTry3TCYUOar8PxeciIcjc1rfVEoBp2hv/hzs
	hXm2lMtHeA1KsORjYR4LxKS+urrferyCC2s8YUkVZ1S3PinRkAwItIgVNSgh8KjewZ+A8dNdHjC
	aYEi3xN3PAeLOhhtcMRHRnYtKWh3WTa0oQdg/f1pXNR+Sx+//X6BcKPvOXikxl2jON0rzgt3SH+
	y04yQlgNFB9Zg7+0NRshZ6KgM5dWhXsl2Okug9xWiKUwceWGg+ifKuK2sePqgovvJ23mnbmDrI7
	LfEI4hXXAvB/3h292M9Z66Rzml5sutBCXhrfMpCa28DI9YbRx3mz+V/+NRBB
X-Google-Smtp-Source: AGHT+IF1VJLgJV//WIpAa+s8CtBCfSTXldvWN4G6yFIfBpsQpIhuYOmgnIvjVkjp2SiNMDg1wSLXxg==
X-Received: by 2002:a2e:bea2:0:b0:306:501:4752 with SMTP id 38308e7fff4ca-307cf2f6a38mr28893411fa.11.1738853026729;
        Thu, 06 Feb 2025 06:43:46 -0800 (PST)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de2b98c0sm1446241fa.69.2025.02.06.06.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 06:43:46 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: openembedded-core@lists.openembedded.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH 1/2] systemd: use serial-getty-generator on genericarm64
Date: Thu,  6 Feb 2025 16:43:12 +0200
Message-ID: <20250206144312.1328179-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Feb 2025 14:43:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13522

systemd-serialgetty recipe sets serial consoles based
on SERIAL_CONSOLES build time variable. These fail to
be detected on multiple devices including qemu and the
resulting failures delay boot to systemd "running" state
by one minute on an example aarch64 build machine and qemu.
Serial console login works with both since udev will
trigger agetty on correct devices. Using systemd side
serial-getty-generator disables systemd-serialgetty.

qemu-system-aarch64 core-image-base boot time with
systemd-serialgetty before this patch:

$ systemd-analyze
Startup finished in 8.314s (firmware) + 9.805s (loader) + 14.338s (kernel) + 1min 34.392s (userspace) = 2min 6.851s
multi-user.target reached after 1min 34.387s in userspace.

with this patch:

Startup finished in 8.312s (firmware) + 9.804s (loader) + 14.295s (kernel) + 29.808s (userspace) = 1min 2.220s
multi-user.target reached after 29.802s in userspace.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend

diff --git a/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
new file mode 100644
index 0000000000..f23852a351
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/systemd/systemd_%.bbappend
@@ -0,0 +1,3 @@
+# auto detection instead of build time configured via SERIAL_CONSOLES
+# to support multiple devices
+PACKAGECONFIG:append:genericarm64 = " serial-getty-generator"
-- 
2.43.0


