Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E85F9C83F0A
	for <webhook@archiver.kernel.org>; Mon,  7 Jul 2025 20:38:28 +0000 (UTC)
Received: from mta-64-225.siemens.flowmailer.net (mta-64-225.siemens.flowmailer.net [185.136.64.225])
 by mx.groups.io with SMTP id smtpd.web10.2910.1751920708360950349
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Jul 2025 13:38:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=adrian.freihofer@siemens.com header.s=fm1 header.b=fJ0lH3+m;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.64.225, mailfrom: fm-1329275-20250707203826054e3461c7284dc966-b2z1oo@rts-flowmailer.siemens.com)
Received: by mta-64-225.siemens.flowmailer.net with ESMTPSA id 20250707203826054e3461c7284dc966
        for <poky@lists.yoctoproject.org>;
        Mon, 07 Jul 2025 22:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=adrian.freihofer@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=XuuLCALn5cbr04sauabauKZeKAwxtOkwgfF4ympsjhM=;
 b=fJ0lH3+m/+6pHB0bbzRymLa57Eq6g458JqOeNfxlR+rszGrv549PEKX3NMNDkgkjrPM+bZ
 Y5ogOf5qeR73ghKHBeuCZy67z1sgNaE553TLx4CHwvgnrnNv0P42hOvjvgv2F5Xcj8hrA3mz
 /a7JQaqRm3fMS3/OZCyV0aC+ZKnQxkLPuG0zlXm38rX4B9BUStTahc3hLdX3XBIp7fMP2IQr
 tDPTOBc5BLztiHq+hHP5A4BOPpj5+80p3zirTTy8PAHOMtgVTpTDV2v9ZZdHPQt8wdrrjksb
 FZElohcwYM8HmaRwjQ6RbaaBKp0zseGhdIFYhTMlECoWFSxUocFdCtjQ==;
From: AdrianF <adrian.freihofer@siemens.com>
To: poky@lists.yoctoproject.org
Cc: Adrian Freihofer <adrian.freihofer@siemens.com>
Subject: [PATCH v2 3/5] beaglebone-yocto: default to beaglebone black
Date: Mon,  7 Jul 2025 22:37:56 +0200
Message-ID: <20250707203820.2554184-4-adrian.freihofer@siemens.com>
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
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13695

From: Adrian Freihofer <adrian.freihofer@siemens.com>

The Beaglebone black is the newest and still available board. It's also
the recommended board on https://www.beagleboard.org/boards.

Booting from SDCard is possible with all three device-trees. However,
for example the internal memory of a Beaglebone black requires the right
DTB. This change makes this working by default which improves the user
experience for users who buy a new Yocto reference board for getting
started.

Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 321d2c27c2a..f5d89f3ce5a 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -37,6 +37,7 @@ PREFERRED_VERSION_linux-yocto ?= "6.12%"
 KERNEL_IMAGETYPE = "zImage"
 DTB_FILES = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
 KERNEL_DEVICETREE = '${@' '.join('ti/omap/%s' % d for d in '${DTB_FILES}'.split())}'
+FIT_CONF_DEFAULT_DTB = "am335x-boneblack.dtb"
 
 # Configure the image.bbclass to depend on the fitImage instead of only
 # the kernel to ensure the fitImage is built with the image
-- 
2.50.0


