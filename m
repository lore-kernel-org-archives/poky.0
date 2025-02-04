Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D576C02194
	for <webhook@archiver.kernel.org>; Tue,  4 Feb 2025 14:11:08 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.117230.1738678263262676424
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Feb 2025 06:11:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=oilFD/+P;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3078fb1fa28so53732871fa.3
        for <poky@lists.yoctoproject.org>; Tue, 04 Feb 2025 06:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738678261; x=1739283061; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9bCHfk4ZY0c/bCABeC25Cj5qk+XjMuLtvRBJLReqqzQ=;
        b=oilFD/+PtlO22WuIXgA/LeF4MAnWJq2zD3pnq5zjwxXkJwnZKNT4k1haL0n9e3Uxx2
         aWe0AlxtX1e7CRRDqVzJh9TDQaG2pPNHyTJjIt5xS2cjJSciRyK07Dzq4V06vqIUyucs
         4wATA37A9dAETwbB50pdA3ZJKC3prkMMIQiVB1ULOdIN6vmYTRME2DllNIabQq3UnnOK
         fC39mTrKO7Vob3kC5OedA1tGU18byPFNUfGWl7OGbACmThSFC9mvsIFJmIhnHvQduivO
         Q6iVMvXzSucPWIW7NkUO/QOkR+XgqZYx2UhBp0pNYq4m8FHeFTvcJIoha4V6vO5/YOKj
         W9pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738678261; x=1739283061;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9bCHfk4ZY0c/bCABeC25Cj5qk+XjMuLtvRBJLReqqzQ=;
        b=fFVwwDJ190YrF3kDJxzffDe3gu/eL6ogyYAIkE3whTcZg20o78fMqq5TbrBN3V/E4C
         hdvCtiytWdqQlAohbJRrp2ALPgpnRyk4FWOLkd0bKkrvB4GYF6ml1VwGWOksJJ27f21s
         HCl4ew2fZptdU4OC1ufBh6FQcKcVJqUQpYZghcfSOKrP5C9racV+kiDcLynXuKk47//H
         7Pno/BLobVH3B/L0aTkDckRGN/3DLvS6Hrey66z5rC6fU8HNkaT1AC4MBjZwOCZiNW4Z
         ZeTDDGoIfXTBJgPZ1PIO8HROUPHj26tkHLshXO0Z0uxXK6YrqrXApES/s2gPqjNO3N71
         XDYA==
X-Gm-Message-State: AOJu0YxXsfEV2+0tw5DsR/Ola0wyLCLkiLQ9dlB0AY9ufVPOlcufdfxa
	lXWmhjJM7Qm7POrgjg59gKcA6NtpDd3lUMTf+yjwOymw+osn3sooG4OvbGihcI3Ef9h4UbcC5WD
	oGU4=
X-Gm-Gg: ASbGncvQRDpTsEbKPJqStkBZi7vw/Pvx1+7R0sx6U6NZwK20GiVBO21A5dB0HA0KIiF
	uHqphCkqc1qZEEEZsShRyu+D13vqD7Ummb5neMGBduDMHe1plMO7Sx1RWM/58NvZQZmuoA5xc8T
	SUOzPHDUJvVS0udbRNvD2wPn7AhGVqAM7E73ETb7cBW8cC2m6fnTB1zyzC2l8lA2/YWUTlcD54j
	I9cFH1iqFu0+KniYsVghGI8p0Qp6kpIwDvSUCnDrVBAdA0cW3ZMWCOkfTcuQhq1BVpDB7OPXztn
	OQxIVMVVOBr8/jOw1LgmafvoQ1m4DW1EnVTdXE9vg9j5DI+Tetq3m3+WS7RE
X-Google-Smtp-Source: AGHT+IHvDMJ9r5im7XBqQZSIpwGNVpBr50ZwTKnysFUhaBUGeXL+/PLdl6fKDcLHyZH9brgdedSOrQ==
X-Received: by 2002:a2e:9a0e:0:b0:300:16c0:b67 with SMTP id 38308e7fff4ca-307968dbde8mr87796171fa.33.1738678260925;
        Tue, 04 Feb 2025 06:11:00 -0800 (PST)
Received: from localhost.localdomain (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307a33f6aebsm18447541fa.73.2025.02.04.06.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 06:11:00 -0800 (PST)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] genericarm64.conf: allow overriding u-boot and qemuboot variables
Date: Tue,  4 Feb 2025 16:10:49 +0200
Message-ID: <20250204141049.1221660-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 04 Feb 2025 14:11:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13520

Assignment in machine config can not be overwritten in local.conf
because former is evaluated later than latter. Use ?= conditional
assignment for u-boot and qemuboot variables so that they can be
overwritten in local.conf if a different test setup is wanted
for kernel, initrd and rootfs built for genericarm64 machine
config.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp/conf/machine/genericarm64.conf
index b6dfb8042d..f5000402e5 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -33,31 +33,31 @@ SERIAL_CONSOLES ?= "115200;ttyAMA0 115200;hvc0 115200;ttyS0 115200;ttyS1 115200;
 # Allow u-boot to be built for use with qemu-system-aarch64.
 # This u-boot is _not_ suitable for use with real hardware, and the expectation
 # of this machine is that real hardware comes with the firmware pre-loaded.
-UBOOT_MACHINE = "qemu_arm64_defconfig"
+UBOOT_MACHINE ?= "qemu_arm64_defconfig"
 
 # runqemu configuration to run a genericarm64 image inside a qemu-system-aarch64. You will need
 # to build u-boot explicitly.
 IMAGE_CLASSES += "qemuboot"
-QB_SYSTEM_NAME = "qemu-system-aarch64"
+QB_SYSTEM_NAME ?= "qemu-system-aarch64"
 # Boot the virtual machine with either an emulated Cortex-A76, or the host if using KVM
-QB_MACHINE = "-machine virt"
-QB_CPU = "-cpu cortex-a76"
-QB_CPU_KVM = "-cpu host -machine gic-version=3"
-QB_SMP = "-smp 4"
+QB_MACHINE ?= "-machine virt"
+QB_CPU ?= "-cpu cortex-a76"
+QB_CPU_KVM ?= "-cpu host -machine gic-version=3"
+QB_SMP ?= "-smp 4"
 # Boot into U-Boot and let that scan the disk for the next step, don't pass any kernel or filesystem hints
-QB_DEFAULT_BIOS = "u-boot.bin"
-QB_DEFAULT_KERNEL = "none"
-QB_DEFAULT_FSTYPE = "wic"
-QB_FSINFO = "wic:no-kernel-in-fs"
+QB_DEFAULT_BIOS ?= "u-boot.bin"
+QB_DEFAULT_KERNEL ?= "none"
+QB_DEFAULT_FSTYPE ?= "wic"
+QB_FSINFO ?= "wic:no-kernel-in-fs"
 # Mount the wic rootfs as a virtio block device
-QB_ROOTFS_OPT = "-drive id=root,file=@ROOTFS@,if=none,format=raw -device virtio-blk-pci,drive=root"
+QB_ROOTFS_OPT ?= "-drive id=root,file=@ROOTFS@,if=none,format=raw -device virtio-blk-pci,drive=root"
 # Virtio graphics
-QB_GRAPHICS = "-device virtio-gpu-pci"
+QB_GRAPHICS ?= "-device virtio-gpu-pci"
 # Virtio serial consoles
-QB_SERIAL_OPT = "-device virtio-serial-pci -chardev null,id=virtcon -device virtconsole,chardev=virtcon"
-QB_TCPSERIAL_OPT = "-device virtio-serial-pci -chardev socket,id=virtcon,port=@PORT@,host=127.0.0.1,nodelay=on -device virtconsole,chardev=virtcon"
+QB_SERIAL_OPT ?= "-device virtio-serial-pci -chardev null,id=virtcon -device virtconsole,chardev=virtcon"
+QB_TCPSERIAL_OPT ?= "-device virtio-serial-pci -chardev socket,id=virtcon,port=@PORT@,host=127.0.0.1,nodelay=on -device virtconsole,chardev=virtcon"
 # Virtio networking
-QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
+QB_TAP_OPT ?= "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
 
 # If we're running testimage then we're in a qemu, so ensure u-boot is build
 TESTIMAGEDEPENDS:append = " u-boot:do_deploy"
-- 
2.43.0


