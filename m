Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7686EC282EC
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 11:22:34 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.11924.1741951352623047914
 for <poky@lists.yoctoproject.org>;
 Fri, 14 Mar 2025 04:22:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=tE2/rhh+;
 spf=pass (domain: linaro.org, ip: 209.85.167.53, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54963160818so2387374e87.2
        for <poky@lists.yoctoproject.org>; Fri, 14 Mar 2025 04:22:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741951351; x=1742556151; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AK8nMh0RFc9VWODTCuiY5Wm+0L8cBbjVb7Duc6PWdzc=;
        b=tE2/rhh+j9RXeeJg5fDXxtT26SJNmXkJ0rLJZbhBvHjqGccP95N25POgC1HDTp1jTk
         mo12pV/YERJ28yVCLGAyjOJanShzhmeGsJzEbGR0+lgBebp1i+PNsLjjN+lSCMx1h1py
         OjmugQOVMBKuis+sb661Lb6q5JOn/WB2qWt4ndcnQcXeiTXk2UROwFsJoshM9AoHWOji
         cXlUL+JBYcd3ztQOXaR7p9SYz1VvVOgGTvNRmrewiEjz+HgwjhgGOBnRJaZQoQbCvVpA
         DmCRb8VvmvznxGIck5EgCFGQVTqDzNOwwt9R7W3ND0HcUJNgZzfCqtXj5T5+jCV5WZL3
         4Lvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741951351; x=1742556151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AK8nMh0RFc9VWODTCuiY5Wm+0L8cBbjVb7Duc6PWdzc=;
        b=Mz83v5m7vV/NyUJd/6805l937gysRBKzCzSSJmpfeztmrdaT10VI8HUdoWFCHQxsEw
         wSp6yT5SWd/qhYAAK2vPyNTUktdTqIgdKgKU5XZSXHlLjR5W4DTbzBWCIbPrmISheWzm
         0uITDjRQJmjYeyT+swEBvI77KNXxIdUszWpelBNzSWk6XjYfzDhqlEgP+ILZNYqG8viq
         OcK+cL+mFfeK/AEbcVxWpfnVNCrHRKJ07MPOXcvrkYUTi6s+6wdRgqflNEzhppHGfdQQ
         JY9k+YCxty5ML/mUwFgLMhf14UqZAcR/C6Qb1JMIgXtP/h4x3uEHwralMKj5TAosY/1H
         7YgA==
X-Gm-Message-State: AOJu0YxUKHMmC5dZra80VdG+PKK/1AchTaMY+wZaxiW2ScCMxJF4BzAY
	BBGCm8JqfiL8Fj5gp10CzeD1dmXXYEJbMem8TFIwEbV6zjR6olqWIiucPa8I6HWTdk+2CuRsvMV
	9cDo=
X-Gm-Gg: ASbGncsmOP7O8+3+VCmjq/Lm9Phrsz2YrSNaREKPZLh4uWVISSWgAdd96U4Qsw8de6f
	ZJSjbRi37wqUP73iciGpN3yACHF961v0GA0FdBCAWpkUGPmaIuM2OQRCzRsm/B3HQFzKad0Yyu4
	XJUvWVYQBy5+/XpXMZNdmkuPNDaZxb15lVIOEB1zrnuh4eJLPCR4mm/UVaQcPyyUb0eF4EVBq94
	rejYwm4pybnCyFNpuGaOcYUbQU02ELOe4rCFsItrtQMVm4KjY4QgxfqKezIvoVt9k1TuelTmvdT
	WgbBqxLCFKXYXs47RlLA/mhOdgFYYRFyzDfdB5dV+ntQa0m1gvirW34PcCIJ4riGNu7g3VEd8SM
	/fEkc6lmnK8A1ug==
X-Google-Smtp-Source: AGHT+IFe5WWg0LBBMd+uw2J3U5j3+DZi2wUnJ6o2AG8ysZ68XviVgmgH01eG1qZdAoiuNVlkR+ZepQ==
X-Received: by 2002:a05:6512:1392:b0:549:4d73:641a with SMTP id 2adb3069b0e04-549c39af674mr675149e87.45.1741951350688;
        Fri, 14 Mar 2025 04:22:30 -0700 (PDT)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8821f6sm484702e87.176.2025.03.14.04.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 04:22:29 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: openembedded-core@lists.openembedded.org,
	Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 1/6] systemd: use serial-getty-generator on genericarm64
Date: Fri, 14 Mar 2025 13:21:57 +0200
Message-ID: <20250314112158.305010-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250314111942.304800-1-mikko.rapeli@linaro.org>
References: <20250314111942.304800-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 14 Mar 2025 11:22:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13566

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

v1: https://lists.yoctoproject.org/g/poky/message/13522

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


