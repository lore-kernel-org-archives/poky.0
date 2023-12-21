Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41285C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 11:12:49 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.48855.1703157160306147891
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 03:12:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=ERVP1+8H;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 46642FF815;
	Thu, 21 Dec 2023 11:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703157158;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=i9HuftcjgaRuHNXu3rQNVDZ24SbL7PvhaffOJeZNMv4=;
	b=ERVP1+8Hgr1FZyxvQyPJGUO4p458QuAjj9nWC0Vi+EIgzKAYeGBzn+0Q+Ud6PUaQHVLGmj
	OxOEwCDVZAWUFOyYwV2ar4NLxkO13nlHdt6yJwf9H8Qp4Lqacs5jZO46/tfbKrFKXWwhPE
	aGqWER3Szh3d72YdPDeUFbjClngyIUt5zgoHQabLl8b5W2ESRGOSLne3S7yUPqjdTZpW4t
	SyGuyeJErfdGcNR8TWDRJOXy3GAyJw5n7VkmyRNvChXik13J+IfQQlsRXnrU+7HL4T1yvL
	bpgrwyRVVYgjwQ+O81VFDPI0uoVgH6eeTCX51EPxJhjpgJINmj7O5I/xuqLtag==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [kirkstone][PATCH v2] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Thu, 21 Dec 2023 12:12:35 +0100
Message-Id: <20231221111235.750042-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 11:12:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13232

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

Adding new active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---

Changes in V2:
- Keep the originally tested distros when the release was first published.
---
 meta-poky/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c179cbf..fdde61c 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,6 +38,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
             fedora-37 \n \
+            fedora-38 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
             almalinux-8.8 \n \
-- 
2.34.1


