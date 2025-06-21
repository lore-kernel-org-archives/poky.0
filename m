Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB219C7EE31
	for <webhook@archiver.kernel.org>; Sat, 21 Jun 2025 16:27:04 +0000 (UTC)
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
 by mx.groups.io with SMTP id smtpd.web11.10496.1750523219089960009
 for <poky@lists.yoctoproject.org>;
 Sat, 21 Jun 2025 09:27:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm2 header.b=W0PK22YQ;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.228, mailfrom: fm-1329275-202506211626551fbf1e7a02f30e48c8-jjbmrq@rts-flowmailer.siemens.com)
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 202506211626551fbf1e7a02f30e48c8
        for <poky@lists.yoctoproject.org>;
        Sat, 21 Jun 2025 18:26:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=diI4R72fzEjqu7bGBpvpzKZ/nHAnTAWy41pI2s3uDl8=;
 b=W0PK22YQBC8wz1zG/VDQ3gIz73DiUp+orr9H2AIvtnRVyzvB8q23Kw5yqmwZmMsojHPn+Y
 +ptzzVKH5JyGe3gWNXVaGOz4j+u4pHPV9aMc1XoL2hY8uSvyhsYVwEzFCCZ0csgDtEGJX/3c
 W4tesZJQu+GNYFZKxe+z5TCQeybamb449ZNA2P/FLhloHjoFl5iY2/2eoSxB+9BZ9+JWxs91
 h1kELCWJAUdyl81F1/1wvaaBoW3Oevjn5n6QnIKeQewNlANi73yawwf7hAQIic+76AXHSW5H
 3IO1w2+jmDO1CzXTqlz4dePM1c+WfRezkXkulRqc8jRE3Jnf/OO6AxDw==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH 1/4] beaglebone-yocto: support initramfs in qemu
Date: Sat, 21 Jun 2025 18:26:23 +0200
Message-ID: <20250621162642.804605-2-adrian.freihofer@siemens.com>
In-Reply-To: <20250621162642.804605-1-adrian.freihofer@siemens.com>
References: <20250621162642.804605-1-adrian.freihofer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1329275:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 21 Jun 2025 16:27:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13660

From: Adrian Freihofer <adrian.freihofer@siemens.com>

Support booting with initramfs also in Qemu.
If INITRAMFS_IMAGE is defined, Qemu gets it via -initrd parameter.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index db9cfec497a..d4b72361650 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -46,7 +46,10 @@ QB_SYSTEM_NAME = "qemu-system-arm"
 QB_MACHINE = "-machine virt"
 QB_CPU = "-cpu cortex-a15"
 QB_KERNEL_CMDLINE_APPEND = "console=ttyAMA0 systemd.mask=systemd-networkd"
-QB_OPT_APPEND = "-device virtio-rng-device"
+QB_OPT_APPEND = "\
+    -device virtio-rng-device \
+    ${@' -initrd %s/%s.%s' % (d.getVar('DEPLOY_DIR_IMAGE'), d.getVar('INITRAMFS_IMAGE_NAME'), d.getVar('INITRAMFS_FSTYPES')) if d.getVar('INITRAMFS_IMAGE') else ''} \
+"
 QB_TAP_OPT = "-netdev tap,id=net0,ifname=@TAP@,script=no,downscript=no"
 QB_NETWORK_DEVICE = "-device virtio-net-device,netdev=net0,mac=@MAC@"
 QB_ROOTFS_OPT = "-drive id=disk0,file=@ROOTFS@,if=none,format=raw -device virtio-blk-device,drive=disk0"
-- 
2.49.0


