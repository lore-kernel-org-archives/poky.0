Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CC9EBFD0B
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 07:27:39 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.266883.1776065258977682562
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 00:27:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=iJGo45Nh;
 spf=pass (domain: linaro.org, ip: 209.85.167.51, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59e5aa4ca41so3872277e87.2
        for <poky@lists.yoctoproject.org>; Mon, 13 Apr 2026 00:27:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1776065257; x=1776670057; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c7mY03ALNmSMOaxlSbeAuE884Y3q9l0wIO84Hzlqq6U=;
        b=iJGo45NhOsJ99VsKiD/es1Synu4xnD4Y4WLHaNaavRhWs8LgFuXD1qrOlUtqv5TTIp
         CCCzGuRkel/BsefN2+NBUSA5vnTqleS0QwnvWaMkEM3Zt2ZQ00gPr5l9AZ8xwk/qa3Rb
         SjwGOTR5SxLgw3WuIHBfVyAeXtjI3yM+JYLWGj666ztva4im0/qp2CeMiffFVWtTNjYs
         sXcvD1oDqLc7l3EixQiC7Pybg52HGeKFq5yRMU9lvD7ml5lZE6+z/f3uvzcsFOAc/ilb
         vxfQlERWQO+zFQyZnBf13oeyber/DtNii1za+TaYS/rdcJY/TAE73GVctj9lzvSW54JE
         qsxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776065257; x=1776670057;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c7mY03ALNmSMOaxlSbeAuE884Y3q9l0wIO84Hzlqq6U=;
        b=jc40ez6LWIRKDCe+rAx/yTHdGJ6brG4KJ4qavO3w0mYBgiqxBWWN4dDj6jdVsvc1SX
         /b1BP0bCblnATIQNiEztrfhSENlJIw6uuLNbDTqZ2KmyRgX5ouI70VWth3y0vetLAYca
         he3DL4bpL6NgayFngui4QB/qrD7KcGKLEbGHFVZD9pwRGca5oKswZ5ZRF0J1y8Y5KCge
         63vnsKJsIy4RHJG94WIBWkVZkXwNctqqBSbUwIjxygrzMtVPyOuO6Pyu+Wu3+k08pGtu
         8lqE1iuktduJ5DHQxZGXE5q29/2MKQhLCVzpb7cFGlaBd2G6+MsjUDZLroAlC9XydDAk
         Nd3w==
X-Gm-Message-State: AOJu0Yy+lTMfcnOerCyODLsOLkPpUJENXANCfCGam5OuU0NaTKIQKhax
	4GnYsLAJVFyJABTbT47WX3MgViYEwKr/RAMUfwR39LgdzikqthF08oPkZuCVRpmNKXOB9LGLUDw
	4zlOw
X-Gm-Gg: AeBDieuvd0UELVrdt83MLoFI0Plqo4Gv1Qh4tJ4hthZJIegKSElDZy1hhzFCcBzQSCJ
	Y1er9UYnUKPuWFdWKdmkPCOC32Z4kXKTp//PLR7D9enr+qPHNjr1E2jJ584CHQH7k6n75YH27bz
	bn7zUa969jSA/aLZuP+umNZycRJK4RQxrwkicwnRyM4KT9kuB9nfsJcR0DOnXzqDW2ADtAgWq+y
	OztvQKaQBxnUEUB0hnDRL4vuixROGfWf1ZolLxNod8CrNOmQJI8zdL5mNwjpPf39LaxWZWLxi4+
	EcUIRyRsy7rYnHbK4IiuWzOhKgUDYR+zlHPyjEMHQRkMDjdRjJl4kGqwoDDOLw6SihlOwjUQS1+
	LweZYO1HIUtmwePWq1Wprf5PLKW+dn1jVzuf0eLaQU6a9gOd4yG7HdRNa92OqbAF2NONpUP2yz0
	BjvMQ/MQ3yXB4aHJuNcQdTbrwLeR/ySSX0RVkKgc7uPmEO6O1GPAE6Njad
X-Received: by 2002:a05:6512:1189:b0:5a3:5fd5:bd22 with SMTP id 2adb3069b0e04-5a3efb2c54amr3614077e87.1.1776065256594;
        Mon, 13 Apr 2026 00:27:36 -0700 (PDT)
Received: from nuoska (85-131-124-233.bb.dnainternet.fi. [85.131.124.233])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a3eee8c973sm2500920e87.21.2026.04.13.00.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 00:27:36 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: poky@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [PATCH v3] genericarm64 core-image-initramfs-boot: remove some kernel drivers
Date: Mon, 13 Apr 2026 10:27:15 +0300
Message-ID: <20260413072715.20701-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 13 Apr 2026 07:27:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13898

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
 .../images/core-image-initramfs-boot.bbappend | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend

v3: added PATHS_TO_REMOVE variable so that it can be customized
    as suggested by Jose Quaresma <quaresma.jose@gmail.com>

v2: https://lists.yoctoproject.org/g/poky/message/13894

diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
new file mode 100644
index 000000000000..2298c2f94740
--- /dev/null
+++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
@@ -0,0 +1,28 @@
+POSTFUNCS = ""
+POSTFUNCS:genericarm64 = "reduce_initrd_size"
+
+PATHS_TO_REMOVE = ""
+# these kernel modules are not needed for rootfs mount from local mass storage
+# and can be loaded from main rootfs by udev
+PATHS_TO_REMOVE:genericarm64 = "\
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/bluetooth \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/gpu \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/media \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/net \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/nfc \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/usb/gadget \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bluetooth \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bridge \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netfilter \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc \
+    ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound \
+"
+
+do_rootfs[postfuncs] += "${POSTFUNCS}"
+reduce_initrd_size () {
+    if [ -n "${PATHS_TO_REMOVE}" ]; then
+        rm -rf ${PATHS_TO_REMOVE}
+    fi
+}
+
-- 
2.34.1


