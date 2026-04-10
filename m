Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DFACE9905B
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 09:01:16 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.152341.1775811670432810712
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 02:01:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=azZsCaDM;
 spf=pass (domain: linaro.org, ip: 209.85.208.177, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-38ded5277e5so14628911fa.1
        for <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 02:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775811668; x=1776416468; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F0v0Y2zVCUffoVjJrSZ23BCUzoHu5udLwSO5DIxVKKI=;
        b=azZsCaDMjFSCZapytplDNUIU5+gBV0M4ib+h+uWLRnBcfD3vbAVe/kXnwbkLRbkU8B
         8Zm8zKz5wtAZn81l0l3PQuXzHvw41KnhydKVTH+l71brv9f3iWTxN5K3gLTjnP94ihdI
         MwND7WHGrCI1R2t0/LudlOf0gZVD7DTxIFqXn3vFhgWpkQ9Mb0JNI4PCJ8osVwGLWAZn
         tlQnrZkA7M/tbSDSVU7FQ6Kwpz7C3+W2MhrpDcK5HpVisDSO+RPQOCoCMnX6Rc8KvNai
         HjJ7Xhs8cyqAFeu/5szN9/BrlyjO8Jo6e+K3FVUOcA/AatI2um1oI/8nNrGSxa9l9mKV
         JMqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775811668; x=1776416468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F0v0Y2zVCUffoVjJrSZ23BCUzoHu5udLwSO5DIxVKKI=;
        b=Lb18W+48SNHy6VkYUZKMTxCG0mKvoB8dohPvsoKgeyhWjyWIBN+2ZvF2CLwb/WTVtJ
         LrQ/YjTk+QnKDSpInZiCYe9emI+SJxj1dDWHY1qDjrcTvo7JYdo9nS3sLxirrXCATi5n
         8STyZcyGY0MJtf9PhzPmTCmCDIS3/p0WQOaDA2QGHevPG1jej7/FG0YB+lMIDxSg2MFx
         QoZvxuW0TQFBAHgW5cH/8C2Tw+5mO4QHIYmVSUP0PIMEgNqiKt26LDNfa7J94f1x33F8
         vHj2hG2Wy+KAOaXqxeRXg8qUHWdj0QkqpU1SefroufvMtuMXOvKIi8aC6tVsBbq8+izS
         5hrA==
X-Gm-Message-State: AOJu0YwAhitvbtF1EeIkbgyZFozasRbYwoA7oDUoP7CYNEyOPvUYp6tv
	1OA4vEv6ktJalUzrmpCgOB63MDmYSG/fdsrETSUl508OhcXlhaKA1knnzLIg+SlJBThO+Rg0nbu
	V0RLk
X-Gm-Gg: AeBDievtVxDqjdi/Sj38+fTJdE2diRZ665pa2nl+9Kj+ldR7NteT+qAWBDNTomNcceF
	lxjVuiik/ffyvIbgGkl5QCZslD4pYIaqQUPwDvdNkpdkBtmGwuGvhMKUGpClROtcM97uglzh7rU
	FP2cCaly+Zo4prj1VjGBTCpIdMtFZleHgtMzWEVYCF6C9zrgXvlveK+vpjzmKLCXLWqU6/Yc+W5
	QMJktEGwK1gB+nFfY4M+7p4++E91DTrauCr/Z/DTlw4g5MZFZtHn0STPuaN61ihKrc4RFIH6qSC
	DfoQx/EI3g8FVvByC/qlf2+Z2MXsONzfIhgfRbn8AQ05S6gU8xY03IXPjW36XH703SbzvPy35oa
	DvjK8l3LLpRiaWVk5E0Fi0lVGNa7Mu5a6TZRZ0IzX4e7uvg508i4QepIc6mts0ZR146Nw28knh/
	ZA1LApU0/cjiqb8BiBIPKsEOgX0xspIX70lWnVyYP/qpuDbQhONkxHh3at
X-Received: by 2002:a05:6512:31d1:b0:5a2:c914:8af6 with SMTP id 2adb3069b0e04-5a3ef70664cmr802141e87.3.1775811668372;
        Fri, 10 Apr 2026 02:01:08 -0700 (PDT)
Received: from nuoska (85-131-124-233.bb.dnainternet.fi. [85.131.124.233])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eeefe209sm605134e87.72.2026.04.10.02.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 02:01:06 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH] genericarm64 core-image-initramfs-boot: remove some kernel drivers
Date: Fri, 10 Apr 2026 12:00:39 +0300
Message-ID: <20260410090039.1372819-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 09:01:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13892

genericarm64 supports a lot of HW and thus large collection of kernel
drivers are enabled and installed to images by default.
Subset of the kernel drivers are needed in initramfs to mount rootfs
from local mass storage devices. This increases initramfs size a lot
and with new kernel config updates even more. Thus remove kernel
drivers from initramfs image which are not needed for mounting
rootfs from local mass storage devices. GPU, Bluetooth, NFC,
sound, networking etc support is not needed in the initramfs.

According to buildhistory core-image-initramfs-boot size is reduced
from 118 to 83 Mb.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 .../images/core-image-initramfs-boot.bbappend | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend

diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
new file mode 100644
index 000000000000..b99fb77f2714
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
@@ -0,0 +1,19 @@
+do_rootfs[postfuncs] += "reduce_initrd_size"
+reduce_initrd_size () {
+    # these kernel modules are not needed for rootfs mount from local mass storage
+    # and can be loaded from main rootfs by udev
+    rm -rf \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/bluetooth \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/gpu \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/media \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/net \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/nfc \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/usb/gadget \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bluetooth \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bridge \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netfilter \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc \
+        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound
+}
+
-- 
2.34.1


