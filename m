Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AEE7CA0EFF
	for <webhook@archiver.kernel.org>; Wed, 27 Aug 2025 10:11:51 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.11628.1756289509526517274
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Aug 2025 03:11:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=JvDt5G9S;
 spf=pass (domain: linaro.org, ip: 209.85.167.45, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-55f4926e0b0so2943150e87.3
        for <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 03:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756289508; x=1756894308; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SbCKyuNgJoRhfBtaqWDv7Z2FMMEDmHra4XunSEMHOGA=;
        b=JvDt5G9Sli85a6VneZgaRN5u+xZ+9WFR3Jzlbip+LnbZo80NC30TCgu0TFQqFxT1sL
         axMDqF3LJNngdJryhjSvrI/xY9R+h8ywqFfaK7pKh9bDJ0WEkMcKW210jBSeYXaNfnjw
         0BVEh1GDhHGZrlmm9XkMe/60odpreQoNbe4EVlZc6hecAmLvgHViHlLnDp8O2DnQxx97
         N2DQYgEoSdDald0KkA68mYIk+StTUtYu49lYlSbJsO75x+0sp02eS+lztXRs2Lc6UN0z
         dchWvsc2VpDYjc48nwVHOZLpKPztIR5+2VtjOMfLa9W9RKtExd6oN8r+RNMLybeexb2i
         uWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756289508; x=1756894308;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SbCKyuNgJoRhfBtaqWDv7Z2FMMEDmHra4XunSEMHOGA=;
        b=i3wmviDMJ24HnTuRFE/SOb5Zuwy3hnBowqQdb6eVRDrJh+oAbNPWnHAzaydXuNEqJx
         ZQVZCjj6/2q941Jq8yKRH/ggsnJXz64mT+rQOYFQPVkJQugdhgYWjJ4jKL/FdcOn+vCs
         lAZ0tKUg+BtsYijorr9nqvD165thByMZoZpBO5XvCFBUn+ybvfx4U61g0/6tuDoLay0Z
         jBewn7K2mIxz1z6VMQRagcex3wyofMLMpY9h9eMkdgsBrSf6QhnQN7Mp2u4cG7sCs2wO
         N6jEROEgMA3KqxAAf01Ahp7TmULRItxTmtDw//mh/uNMfty19+vsL1Ec78ILEtmAFAPU
         xMAQ==
X-Gm-Message-State: AOJu0YziOMYNZorJpkxwvvdZvY8vbIJE0O/YTlP/BNmnGRr8UarMqVz4
	dswgmNrnfWX14nvTmmWTUmhl1PtrmpUMycazzPbe8OOHHGWNqt0gAwldfx+lEHPopDb0A/gNeRh
	mChpq
X-Gm-Gg: ASbGncuI/urYiGtw2/IwZpmBRJ8aWLVSytzlR5crrUE6mmeVhvayZZZtNMjLte/H1W9
	8BYqc4a303X4Ff1cf06lNCsePLbCdZUJY/oNr6wQ0I8ya0tIVHxX5YJJthYawty1EB8PPmmRO3j
	IGc31dmu5oGjzoXX/8lbCzN4E+ZQI63JBiDTw2/EpscRq7JoW2lGuG14ej5h9Gts7eHbuBbXc4c
	0AYIQr2k2JylZ7QTn3oYXuYs5ClbQb8qy0PlxJxP9g6wKNsrkiE438iTMdPHCijhJkGOKfX2jwt
	+058Y+sVvWJ4Th5tBdf4l+TMncvwDdZ3H5sbv5jb+RqHUzBvZaHCFw8ocoLUMbCvLuO5EtHYvP0
	3BoGtZytbOqHA1aFNLxZYMNw/SsEQGhEOtFdO4kkR09v8ZRQUuccLBsU=
X-Google-Smtp-Source: AGHT+IFo0i58ZyXnoSHF5ma+JUkSPey0oPhpmIxyvfmbxFMf9VOAyT2PrImYd+L2mzv3jZYa7oG7QQ==
X-Received: by 2002:a05:6512:10cc:b0:55f:4e27:f1be with SMTP id 2adb3069b0e04-55f4e27f2d9mr1792174e87.53.1756289507491;
        Wed, 27 Aug 2025 03:11:47 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f3d4d1afasm2442899e87.58.2025.08.27.03.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 03:11:47 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] linux-yocto: fix compilation of 6.16 kernel on genericarm64
Date: Wed, 27 Aug 2025 13:11:14 +0300
Message-ID: <20250827101114.2093782-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250827100852.2093378-1-mikko.rapeli@linaro.org>
References: <20250827100852.2093378-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 27 Aug 2025 10:11:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13730

If the TI serial console revert is still needed, which needs
to be confirmed separately, then one extra revert is needed
for 6.16 kernel to compile for genericarm64 machine.
Tested boot and oeqa runtime tests on arm64 build machine
with qemu and qemu kvm on AMD KV260:

https://ledge.validation.linaro.org/scheduler/job/119012

Depends on yocto-kernel-cache change to fix do_kernel_configcheck
warnings.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 ...50-unexport-serial8250_rpm_-function.patch | 96 +++++++++++++++++++
 .../linux/linux-yocto_6.16.bbappend           | 14 +++
 2 files changed, 110 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
new file mode 100644
index 000000000000..b64488458238
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/files/0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch
@@ -0,0 +1,96 @@
+From 4fa6940b9891b0107abef9b3b01583332156878c Mon Sep 17 00:00:00 2001
+From: Mikko Rapeli <mikko.rapeli@linaro.org>
+Date: Wed, 27 Aug 2025 06:55:58 +0000
+Subject: [PATCH] Revert "serial: 8250: unexport serial8250_rpm_*() functions"
+
+This reverts commit 7ba4f02e12e6f2409c5b2afae2963089b5673482.
+Needed by revert of 8700a7ea5519fb0b3bad2362adfeac358c2119ce
+which causes kernel hangs when starting getty's on BeaglePlay.
+
+[ YOCTO #15704 ]
+
+Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
+---
+ drivers/tty/serial/8250/8250.h      |  6 ++++++
+ drivers/tty/serial/8250/8250_port.c | 12 ++++++++----
+ 2 files changed, 14 insertions(+), 4 deletions(-)
+
+Upstream-Status: Inappropriate
+
+diff --git a/drivers/tty/serial/8250/8250.h b/drivers/tty/serial/8250/8250.h
+index 18530c31a598..b861585ca02a 100644
+--- a/drivers/tty/serial/8250/8250.h
++++ b/drivers/tty/serial/8250/8250.h
+@@ -223,6 +223,12 @@ static inline bool serial8250_clear_THRI(struct uart_8250_port *up)
+ struct uart_8250_port *serial8250_setup_port(int index);
+ struct uart_8250_port *serial8250_get_port(int line);
+ 
++void serial8250_rpm_get(struct uart_8250_port *p);
++void serial8250_rpm_put(struct uart_8250_port *p);
++
++void serial8250_rpm_get_tx(struct uart_8250_port *p);
++void serial8250_rpm_put_tx(struct uart_8250_port *p);
++
+ int serial8250_em485_config(struct uart_port *port, struct ktermios *termios,
+ 			    struct serial_rs485 *rs485);
+ void serial8250_em485_start_tx(struct uart_8250_port *p, bool toggle_ier);
+diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
+index 6d7b8c4667c9..8d9bb91d4bae 100644
+--- a/drivers/tty/serial/8250/8250_port.c
++++ b/drivers/tty/serial/8250/8250_port.c
+@@ -517,20 +517,22 @@ void serial8250_clear_and_reinit_fifos(struct uart_8250_port *p)
+ }
+ EXPORT_SYMBOL_GPL(serial8250_clear_and_reinit_fifos);
+ 
+-static void serial8250_rpm_get(struct uart_8250_port *p)
++void serial8250_rpm_get(struct uart_8250_port *p)
+ {
+ 	if (!(p->capabilities & UART_CAP_RPM))
+ 		return;
+ 	pm_runtime_get_sync(p->port.dev);
+ }
++EXPORT_SYMBOL_GPL(serial8250_rpm_get);
+ 
+-static void serial8250_rpm_put(struct uart_8250_port *p)
++void serial8250_rpm_put(struct uart_8250_port *p)
+ {
+ 	if (!(p->capabilities & UART_CAP_RPM))
+ 		return;
+ 	pm_runtime_mark_last_busy(p->port.dev);
+ 	pm_runtime_put_autosuspend(p->port.dev);
+ }
++EXPORT_SYMBOL_GPL(serial8250_rpm_put);
+ 
+ /**
+  *	serial8250_em485_init() - put uart_8250_port into rs485 emulating
+@@ -645,7 +647,7 @@ EXPORT_SYMBOL_GPL(serial8250_em485_config);
+  * once and disable_runtime_pm_tx() will still disable RPM because the fifo is
+  * empty and the HW can idle again.
+  */
+-static void serial8250_rpm_get_tx(struct uart_8250_port *p)
++void serial8250_rpm_get_tx(struct uart_8250_port *p)
+ {
+ 	unsigned char rpm_active;
+ 
+@@ -657,8 +659,9 @@ static void serial8250_rpm_get_tx(struct uart_8250_port *p)
+ 		return;
+ 	pm_runtime_get_sync(p->port.dev);
+ }
++EXPORT_SYMBOL_GPL(serial8250_rpm_get_tx);
+ 
+-static void serial8250_rpm_put_tx(struct uart_8250_port *p)
++void serial8250_rpm_put_tx(struct uart_8250_port *p)
+ {
+ 	unsigned char rpm_active;
+ 
+@@ -671,6 +674,7 @@ static void serial8250_rpm_put_tx(struct uart_8250_port *p)
+ 	pm_runtime_mark_last_busy(p->port.dev);
+ 	pm_runtime_put_autosuspend(p->port.dev);
+ }
++EXPORT_SYMBOL_GPL(serial8250_rpm_put_tx);
+ 
+ /*
+  * IER sleep support.  UARTs which have EFRs need the "extended
+-- 
+2.43.0
+
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
new file mode 100644
index 000000000000..ef5f84cfc3aa
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.16.bbappend
@@ -0,0 +1,14 @@
+COMPATIBLE_MACHINE:genericarm64 = "genericarm64"
+COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
+COMPATIBLE_MACHINE:genericx86 = "genericx86"
+COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
+
+KMACHINE:beaglebone-yocto ?= "beaglebone"
+KMACHINE:genericx86 ?= "common-pc"
+KMACHINE:genericx86-64 ?= "common-pc-64"
+
+FILESEXTRAPATHS:prepend:genericarm64 := "${THISDIR}/files:"
+SRC_URI:append:genericarm64 = " \
+    file://0001-Revert-serial-8250-unexport-serial8250_rpm_-function.patch \
+    file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch \
+"
-- 
2.43.0


