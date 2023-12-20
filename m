Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 410A6C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 15:26:18 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.24223.1703085969110641845
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 07:26:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=kCmJ8mtT;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id ACFEF240002;
	Wed, 20 Dec 2023 15:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703085966;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=wGr5LobDpiHOr1dQb0/FKGKT92eg8t6wNE+3ToM5fcw=;
	b=kCmJ8mtTfDKOAc5xpChE+yhkDmq/HTA3MNIwLjhiHCSEHHWyldUF1eDdW3wusXU6vbeQNf
	pn56ySumTBrRlgD+aqBSnjVeBw4OZSYkFHywxooXiHuWXgHNSUS9eVsGsWV78VujGkZMcR
	RFnmpJafiTn6dWTgesH/5f5UCz6Np4pEPCOdFdzht97ydu6lu3d1FlBhwLep6GJ4RbDVFD
	9d5pmNAs7HI7qbfF6q0UWaAiOXqEXvSGCQWr/0PvSVRal5OuCI5hY7sp804ffhjorOiPG6
	zgQ49kil+h6GF5L/TJEOx2x4w62O/kGvaI5YbfQRZU/cgUzKKEtgw4n0XcfKWg==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [kirkstone][PATCH] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Wed, 20 Dec 2023 16:26:00 +0100
Message-Id: <20231220152600.282677-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:26:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13219

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c179cbf..f5aff32 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -37,9 +37,8 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
-            fedora-37 \n \
+            fedora-38 \n \
             debian-11 \n \
-            opensuseleap-15.3 \n \
             almalinux-8.8 \n \
             "
 # add poky sanity bbclass
-- 
2.34.1


