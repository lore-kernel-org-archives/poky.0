Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45A1EC46CD2
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 15:31:28 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.23989.1703086279220714678
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 07:31:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Ym4iCEp0;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id BBA9260003;
	Wed, 20 Dec 2023 15:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703086276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zkL5WMXF65ppnbKTKbLXpCkvd+fQHX9a+d0RGBa4454=;
	b=Ym4iCEp07js9msHQJPCiPJH59ufpBaDcl8JAKPo0KDDX+Q8Q/Pf012jyGPP6I2NaOMKYqN
	UV5On3a7f6hOf1+31rRMYL5g4jq/Ty8CTqZijn4qHPc2yThsA/EWnV1JL66ROISEle95hm
	Wm8BY+NXYcfk2KFgMD0qMnicgvhneLvZOfUb5kyWZ/2o93RsYNru9jxsVk0tYhCuRNoC/Q
	gE6ZkEUdJDmKX2GF/GPgoSrE1NPh7ddGeMQm68EFrTgYTJ+2c8wRYvunGcRgMCDkFpFhwe
	S8u9CKuoDOTk+Y1MvBirhMbeJ9C40BDgMIw0Xp/QgNH4CQ77bADQWHy4jmhq4g==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [dunfell][PATCH] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Wed, 20 Dec 2023 16:31:14 +0100
Message-Id: <20231220153114.283283-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:31:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13220

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
index 5fabf67..e1c4ee5 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -46,9 +46,8 @@ SANITY_TESTED_DISTROS ?= " \
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


