Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB3EE9905F
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 09:23:29 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.152213.1775813002759774122
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 02:23:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=c1zwq0hu;
 spf=pass (domain: linaro.org, ip: 209.85.208.181, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-38df27b25e3so16639661fa.0
        for <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 02:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775813001; x=1776417801; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zm0FgpkG1OOFjwY15CaI42FhldrFBkzyNEOhX1Nm8S0=;
        b=c1zwq0huPDYxxwrhCjujAx99II0B9ZCD7frBiBf5ZxVl4QExMcrDGpJ1TSssW/zy1w
         rf9z7TxmG0HJ3hej85CxJ5IsWmXGKGqk90emaSBJaDCa7l1ZKnML7zMrIcjGdBA/dAC2
         PThap+pi8YyBATycir/5qlhS32jEvpW9ea7bgsPsJYjlDXknnCTuLrU995RlscgDVzr7
         bGAkkuVd+rWKZYn+Lb28tjFOsOaMbD3KRzp/r714CpB0lVf60nb1cBNB8nJIoYwSW1xH
         ieTPL8pDI6B5rDIxWjtTPZZcYzJhF59tpFb34KfbdnzQcvORG1o7oJX+0TgoAbDUTCmq
         wLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775813001; x=1776417801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zm0FgpkG1OOFjwY15CaI42FhldrFBkzyNEOhX1Nm8S0=;
        b=Dh4TVRQT9Jn5EdyGfZuxhFzEkeIlZ0Ruft/FzCRvTJG/kb4z0KMoBfyZcyJ1yges0x
         kV/ks+PpNRShX6XComx6FOh8PrKV8mIGDaYmiL9qqbLLd8hsa3pt2bv/v23qLvpSqnu4
         1HMo+kbUJqmqUaCjvh1uHhdq3RrY9MqNJIUfwm0J2Djc81jVODwQ5MRHyQquheTb7d3n
         3RnejhAp5xSlwDshJDxambGieoE6JUbrrvYt7utPu7NRKOlKz9UqN+NyeLRVjN2FMdO2
         fDl6YxVMXPCLDDRUxDt4N+gU7FgpXC6i0uTTaaaRfrCLSDzvONuVhaUK/xNbNX+FlTXu
         ZKjQ==
X-Gm-Message-State: AOJu0YyaytiNZ8x9zIOhANLwPf5GcHa4jIxTTAI2cHaY/WMq5ZhyUO1v
	0KEF2EVBLvGiBfrgvDJN42IHT5UQ8SrcWu6CFtjxkrBaXSAzZ4tqMqUIj/D1cy3b5N1rtUhBrSC
	6gKy4
X-Gm-Gg: AeBDievLjH9WqvTc1XohPzPSZ30S7Mk3rj2/2tlkuox4v2leQOQRtjvbp8q+1Rs0guz
	dq2Zkqna22esxMtDOlKB2dE5hR/cEDNUPjXgipbBQVe3AusO6CIys3LqGeKW2Eak3VqnCKtxQbU
	/oAKarj9jr30p1CNAB8JktIGpi4pGrQ9POup4OMq2xpDn+TwJwFk9HQ+t+/sWJRw942qI9JDr9U
	6zfSHO494RXEQ2dov2/3OxfToEx6dzqeqcfyX2q1tT+e7pT1S3xyVj+pTqfLUqLS3zvJVovECHR
	KfGWfXkwsOeCWx+buU36ZHpXgUOYnvfquToLBdCYON2W0Eee05gADciTfoCYzYoLt6v/bHhLaub
	S/4/80ICHtVcBSgu86F37fl0jBPP5orELGyVGR038rXp6jaP1SuLW0tstq2TE/pGj/o4lFKdm+9
	5upW1udKC/anCYJ5K5UcUscQAjfg7ASoSJlZQnVsTnMNv5Ak+k0U9z2uDa
X-Received: by 2002:ac2:57ce:0:b0:5a3:f04a:67f3 with SMTP id 2adb3069b0e04-5a3f04a693emr526019e87.25.1775813000463;
        Fri, 10 Apr 2026 02:23:20 -0700 (PDT)
Received: from nuoska (85-131-124-233.bb.dnainternet.fi. [85.131.124.233])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eee865dcsm626820e87.14.2026.04.10.02.23.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 02:23:19 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v2] genericarm64 core-image-initramfs-boot: remove some kernel drivers
Date: Fri, 10 Apr 2026 12:22:58 +0300
Message-ID: <20260410092258.1377296-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 09:23:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13894

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
 .../images/core-image-initramfs-boot.bbappend | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend

diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
new file mode 100644
index 000000000000..58d17047fc4c
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
@@ -0,0 +1,22 @@
+POSTFUNCS = ""
+POSTFUNCS:genericarm64 = "reduce_initrd_size"
+
+do_rootfs[postfuncs] += "${POSTFUNCS}"
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


