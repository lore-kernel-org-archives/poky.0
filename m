Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17061CCA476
	for <webhook@archiver.kernel.org>; Fri, 10 Oct 2025 13:53:07 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.9275.1760104385712977111
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Oct 2025 06:53:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=nCYn98v2;
 spf=pass (domain: linaro.org, ip: 209.85.167.47, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-58d29830058so2601218e87.0
        for <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 06:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760104384; x=1760709184; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLWopT8GIQ/buwJy5lEVYA9IMaFcV1JSUR1EqSq4suU=;
        b=nCYn98v2CQYuPMvKSJg+PbsLIVSH8U3CynJ8LizqVAYfYxyeDhCWCi+BtKWhKUo9QU
         JGnlLdyvL//96CK3N9cf+/brZPRqlQGm954L0GT18+58pWVckkTc2/1/jsV+S+PXmBZV
         cO8iwUjah0FgQKcDDEcF2Hr0X+0SH++ADEwkc4pH5DwYzLRuzyvtF5luO0wKR9236Vx4
         UVL64CxfBYT+xJ+tfWqCDjaix/S4yA6Ypv6P+U0vC+wQ29Gt6q5pWtmrK1uWXVyMwwtE
         yjrSk04QVVn/yCcbAIYFg7+uppQQLwL+2wQzB4iKeq0sREyBB6VcIakc+o3i+4bOg9qU
         Aqnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760104384; x=1760709184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JLWopT8GIQ/buwJy5lEVYA9IMaFcV1JSUR1EqSq4suU=;
        b=XrAJwea0l3Hwh396xTIPUOUuqa5Gq8uJibsiwb4bN+3E5ph553KHooX/H/ITCbbFAC
         nTYwdYxJZ3a+duCb84/gBvxZD7YLAm9YAV1UME5FZD/EeSXjgxVUw3PaQ8JP6xwGxJ1x
         AG1RubhCo90t49P2NbmEmPuxNK2ptPR5ts/eiStNIv4WTvGdlSoMtz1tdxSxWBigT1FG
         Wi3XvwkMjPYFcZOj44rW1L6eXHfZqrJM/puMXPXb6BZT6f2OxbR4UqH7LX5BbOWLHlvP
         9BAxndWPE/BO66t5lq6shXGDTAUUpGoEQrga0+Qma3CTmfJ6SG7tKbovDTQE1EFxk2DY
         3ZWQ==
X-Gm-Message-State: AOJu0YzFW32yYpqZAvTS+bQcw4cyzrytQnfjLDoQWL57YMvTJBiDpWya
	MOH2br1/wFSYhAWBgUMK3g4ISZ49c06KGFxJX+40wEJ9EyuGMOh5+AkIM6iMliX+FO9VGhGbnPP
	7KvDxyiY=
X-Gm-Gg: ASbGnctFR3nJwjiuyphXnYDs55lIzviE2C/v4BXk2XFL4VTZXyZyIEAoBq04mPz0IM9
	vaBA65za/tc5Jx8dQlbRRcNvHUoXMu354C1wFdYLodogZTMOeQ+j5c/TGErNPe7lQN0aqrgIcIc
	qD74OhxJb/UqajnWGnbeF1m7YMHqRyD9oCt3Dh1q5w28m/wmcuwIBfJF44T9ExenxVQNJeCGSYk
	y5rgn/ppB7ph2FGiES9H6wWLRbwrKHeTipqSlokh8O2VemCmtUIdCu9gxHHqOhuBeavYoCxk4uk
	I+8I0dGdvyW3JiLsLyG5SrIHUm6epDBtCvJsCjucUQs5axUlwGkRA0H0x3wMciEsYKIPYI4NzAM
	g0y4vTEB9eukHlUgAemdXP+8VRlzpVpOe9i3cU2RUaj1H66Q0R97AVW+8tAqTMmyh9SctJ7pqmb
	V6bFjgKOUU2V20VIPMkKZtoJJR
X-Google-Smtp-Source: AGHT+IErsFBZK2eAiiMtIT0LBfxgoUwpfDYaYxVsXh0Hj/BPOme2bkKZtokKwRZ6oPjquahhHtsLTw==
X-Received: by 2002:a05:6512:3991:b0:58a:f88b:25a1 with SMTP id 2adb3069b0e04-5906d77e0femr3508286e87.5.1760104383805;
        Fri, 10 Oct 2025 06:53:03 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563844sm897594e87.69.2025.10.10.06.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 06:53:03 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2 7/9] genericarm64.conf: install Qualcomm rb3gen2 firmware
Date: Fri, 10 Oct 2025 16:52:36 +0300
Message-ID: <20251010135238.1182991-7-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
References: <20251010135238.1182991-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Oct 2025 13:53:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13771

Copied from meta-qcom
recipes-bsp/packagegroups/packagegroup-rb3gen2.bb
Sadly does not fully resolve kernel error messages
from WiFi firmware files.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index 7738e71c4f..22477b09ac 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -21,6 +21,12 @@ MACHINE_EXTRA_RRECOMMENDS += "\
     linux-firmware-wl12xx \
     linux-firmware-wl18xx \
     linux-firmware-rtl-nic \
+    ${@bb.utils.contains_any('DISTRO_FEATURES', 'opencl opengl vulkan', 'linux-firmware-qcom-adreno-a660 linux-firmware-qcom-qcm6490-adreno', '', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'wifi', 'linux-firmware-ath11k-wcn6750 linux-firmware-qcom-qcm6490-wifi', '', d)} \
+    ${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', 'linux-firmware-qca-wcn6750', '', d)} \
+    linux-firmware-qcom-qcm6490-audio \
+    linux-firmware-qcom-qcm6490-compute \
+    linux-firmware-qcom-vpu \
 "
 # increase default size since we install a lot of kernel drivers and firmware by default
 INITRAMFS_MAXSIZE = "200000"
-- 
2.34.1


