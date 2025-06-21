Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7799C7115C
	for <webhook@archiver.kernel.org>; Sat, 21 Jun 2025 16:27:04 +0000 (UTC)
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by mx.groups.io with SMTP id smtpd.web10.10478.1750523219994428478
 for <poky@lists.yoctoproject.org>;
 Sat, 21 Jun 2025 09:27:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm2 header.b=UB0s6FOm;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.227, mailfrom: fm-1329275-2025062116265888fae3e7119ff58af6-amt_j0@rts-flowmailer.siemens.com)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 2025062116265888fae3e7119ff58af6
        for <poky@lists.yoctoproject.org>;
        Sat, 21 Jun 2025 18:26:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=2C5/drcqhX73RDPnMTxoAcEhdNjVGxWuM35wzHdCCvc=;
 b=UB0s6FOmexRTc78z/zBsTEO1yc5A0N6a/LLTpsH8HkZq2lJIOJY3lck2yxqmdB4VAgI3eF
 8dOu5KSaUU/InLcIG8NSm+NZHtZ8CDsYABaa6i3Jx2kEf4SG8vzRDJ1zQ8Wqo/Vl6nXEUqJQ
 zbDycJavtIez24V0QrdAhS60JRSbXBZy0f47tL7YAU+d3N51ujgLRfuRreNd/PsS8S+dhI+m
 h3S7Ly02nrs+w9JalMoxCbRm++Ux84UC0Bl74g1iqK2VHL64cLtUXqbMue2oVixkqiw8uWiY
 xkU7Phe7AuXuYNa0Jhvh4dshW9cMPB1N0bqMXd8PuTYZrNEEFsY3mE+A==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH 3/4] beaglebone-yocto: remove redundant boot files
Date: Sat, 21 Jun 2025 18:26:25 +0200
Message-ID: <20250621162642.804605-4-adrian.freihofer@siemens.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13662

From: Adrian Freihofer <adrian.freihofer@siemens.com>

The beaglebone-yocto MACHINE uses wic to create the final image. The wks
file defines a boot partition like that:
  part /boot --source bootimg_partition --ondisk mmcblk0

This copies the files listed in IMAGE_BOOT_FILES variable from the
DEPLOY_DIR_IMAGE to the dedicated boot partition. Therefore installing
the kernel and the u-boot also into the rootfs is redundant.
This is tested on a beaglebone-black:
* Without this commit: systemd boots. Unmounting /boot shows the useless
  artifacts in the rootfs /boot directory.
* With this commit: The system boots. Unmounting /boot leads to an empty
  /boot directory.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 321d2c27c2a..4ebb771323f 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -18,9 +18,6 @@ WKS_FILE ?= "beaglebone-yocto.wks"
 # Setting this variable to "1" switches from zImage kernel to FIT image kernel
 FIT_IMAGE_KERNEL ?= "0"
 
-# Note: This is redundant if wic creates a separate /boot partition
-MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "${@'linux-yocto-fitimage' if d.getVar('FIT_IMAGE_KERNEL') == '1' else 'kernel-image kernel-devicetree'}"
-
 KERNEL_CLASSES += "${@'kernel-fit-extra-artifacts' if d.getVar('FIT_IMAGE_KERNEL') == '1' else ''}"
 do_image_wic[depends] += "\
     mtools-native:do_populate_sysroot \
-- 
2.49.0


