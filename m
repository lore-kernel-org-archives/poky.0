Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAEB4C71130
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 20:38:28 +0000 (UTC)
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by mx.groups.io with SMTP id smtpd.web10.2909.1751920708244018340
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 13:38:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm1 header.b=bIMJ52sG;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.227, mailfrom: fm-1329275-20250707203825a20de82214bc17c894-auo57w@rts-flowmailer.siemens.com)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 20250707203825a20de82214bc17c894
        for <poky@lists.yoctoproject.org>;
        Mon, 07 Jul 2025 22:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=agdEDDMg7l12alde9Wx2xNk0cwz6cWkddNCcvIe/1sE=;
 b=bIMJ52sGvd7pyed6l0B9rVDw5LSirnI2I3fiHI+8nBVpBXyphx9kdXwa93s/jlC9IsJHWM
 oiQ2XgOJ8wl0jNJf2NXiXItH8ro4XUjqYzIdr335p4BaDh53KBL5B7U1VOJWlSirCthqlDjV
 t4+gCql5hpTnt2NM9dOOG00nreobyyoAu8U8vp7bfegiB2fpyJqZRy/R6TFobzzvArniZQH6
 DtTNDv1lt5reNJIRKWAzh1UsLc3b9swPDbae8fcrWNNEx2691URuZII7UhAKFE/krwzfCfXR
 as3JOLH9VfTu3QTQ3TJ/m5mentaCEIG2f5je+iSqKvAhQ+Ez2xVjVx9w==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH v2 1/5] beaglebone-yocto: support initramfs in qemu
Date: Mon,  7 Jul 2025 22:37:54 +0200
Message-ID: <20250707203820.2554184-2-adrian.freihofer@siemens.com>
In-Reply-To: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
References: <20250707203820.2554184-1-adrian.freihofer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-1329275:519-21489:flowmailer
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 07 Jul 2025 20:38:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13693

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
2.50.0


