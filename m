Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55605C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 15:39:28 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web10.24608.1703086760999905716
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 07:39:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=NW2nLQ7r;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 84E37C0008;
	Wed, 20 Dec 2023 15:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703086758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aP8GPWT7/4jHbc7bNkFfPDgtDG5MjA0v1zw0SpV7STk=;
	b=NW2nLQ7rqMIG5yE2G4nafo1/kUr8WlsPolZTXPbvzXOZ2ooeYLIbFO5sq5BNGc6cRNDTdw
	Dyj5F8m2fAMNP1hvtFI2Rx0mkYRfHgDMNuCVK3Ei1jCpU/Cp2LcplZeEyMdKm/5ujF6obG
	+zpE3cRKqEKTubUD9paqwlP+vZYhUn8a3d1uy+TSqFGjxlUy8LF4PkB0guwfX30078Zzpj
	8B5MUALINeNzf1DBivXcuMdVvJQ9SnSADNn+o5xahcXqLoNGV3xjXJ+WY4SNtqRRGa30kf
	vEw9Ocz75bMxMIoKYh1cdFdYI/oFJojTI47lLFwpHBpOYrDtfxTV+pnm6lRw5Q==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [nanbield][PATCH] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Wed, 20 Dec 2023 16:39:16 +0100
Message-Id: <20231220153916.283971-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:39:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13221

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a111df8..1b8e3fb 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,13 +38,11 @@ SANITY_TESTED_DISTROS ?= " \
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
-- 
2.34.1


