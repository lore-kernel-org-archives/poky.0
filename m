Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF7EC001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:42:41 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web10.71657.1691523758872541019
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:42:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=N7k8KCUl;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id AFDC41C0002;
	Tue,  8 Aug 2023 19:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691523756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=w/KCxD+ixUHdfoKye8q1SAxwaKz+FjQj7+2Pk6y6BLo=;
	b=N7k8KCUl6a4juP3YBvuF4pJhVXTf6YI1k723TIHf3WO5xhBWn5STL9IeI35Bh20F8dAzrf
	tv3YR7qZKxiKOmTxT6zA4RZcL8yGeWNmGupNaPPs3tiAVblpSGeuYWZWqEYCJiujoVo24J
	8kXngnC0XSWF7OAn1XcfB+xCJHn6JHlmu1Ib5eQCLaDMJkVN0p10DHfJObPCChQFpFMAJ9
	2uy25N4RuYo+olvRVvafSR/BYkHM59QppAf+OVB4OjSSHR70H9OtvdLFEHDkqDyxmAddqJ
	IC8Q6liK5DVSkEJKE4sHzlVWn3TXvcvbvk9G3ZQmw2tEdCCO4EUO/jQfl2OY9g==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue,  8 Aug 2023 21:42:34 +0200
Message-Id: <20230808194234.187945-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:42:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13117

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index c72df16..8dfd581 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,14 +38,16 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
-            fedora-36 \n \
+            ubuntu-22.10 \n \
             fedora-37 \n \
+            fedora-38 \n \
+            centosstream-8 \n \
             debian-11 \n \
             debian-12 \n \
             opensuseleap-15.3 \n \
             opensuseleap-15.4 \n \
-            almalinux-8.7 \n \
-            almalinux-9.1 \n \
+            almalinux-8.8 \n \
+            almalinux-9.2 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1


