Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32FDDC3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 14:57:28 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.23490.1703084247311781407
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 06:57:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=liyA+Dqg;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8A15240006;
	Wed, 20 Dec 2023 14:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703084245;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Q/fxXoh6Hi2jyDM2T83fH4ggWjXJ0hBTJ+amcy3x/kE=;
	b=liyA+DqgiobS6/OZYVF08SM5BptDRRJkiomzMyFbtAm23I97Gut3xMV9ElSghnTYQIwZqW
	//ZVgRfRSzMnR5SSIIBAKGRGHB1WuBA7eyjLYFeJufKGdw7vo4/Js1crflgXmCvE0ZVQ1c
	wpcOxMGo0Pqwb03b6rHXqgN64cmcHZL8oRSEnWRFCy/zpFpx4ST06lP+zjiBKOt7imQbUm
	IDrN69Acc/1xaF/lJHmx56VS8Gwc9KP3Xu0iJpCaw3GTpNHnakq4eqQy9kWwhhmVK+XcEe
	SBESjHbMwtwpAMXtAUdUzYHubswODvuWaeoB0AKw5AVvp9URwGT0fZr6X5aZ2w==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Wed, 20 Dec 2023 15:57:22 +0100
Message-Id: <20231220145722.279983-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 14:57:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13217

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index e742666..f4d55a4 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,16 +38,15 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
-            ubuntu-22.10 \n \
-            fedora-37 \n \
+            ubuntu-23.04 \n \
             fedora-38 \n \
             centosstream-8 \n \
             debian-11 \n \
             debian-12 \n \
-            opensuseleap-15.3 \n \
             opensuseleap-15.4 \n \
             almalinux-8.8 \n \
             almalinux-9.2 \n \
+            rocky-9 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1


