Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BEF5C46CCD
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 11:08:49 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.49275.1703156925585773928
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 03:08:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=YkcucFn9;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C7385E0008;
	Thu, 21 Dec 2023 11:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703156923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LjORIYOv6+t1jVMB5fN6LW6zC/XXH0+UHYet0G4eUMk=;
	b=YkcucFn92S193pd6qT6wJuF539HJJSXByiY5u05nNUozzG1usIKX4WUblw9CKZmznUtnGf
	cs6qVxCta1M218nbAwwzip811sI7Q5BVo9/DolSP1Gx7FNkXK3cdEPjMvEF4nzk3TCGSKt
	pRCpMC8qtBtk0uWcOffRWK/F+HD0UAxJcDMFxF8xZkKD4TTf4fhjT0Y4QtXjioqlaTxj/t
	T71PZc8Ce8Jk36eUSxQoreb2YhxQFAqvF1YW4yEsWjB8ypMv0o4FP/eiSuO2bJMh+B8gzS
	sbsZdkX+TAMN/3m4Pqep3ELRLi6UGUqznEbRLz7HVMrOeiyziKX5gbJSjQV5hg==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [nanbield][PATCH v2] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Thu, 21 Dec 2023 12:08:33 +0100
Message-Id: <20231221110833.749559-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 11:08:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13231

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

Adding new active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---

Changes in V2:
- Add "rocky-9", forgotten in V1
- Keep the originally tested distros when the release was first published.
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index a111df8..e306d39 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
             ubuntu-22.10 \n \
+            ubuntu-23.04 \n \
             fedora-37 \n \
             fedora-38 \n \
             centosstream-8 \n \
@@ -48,6 +49,7 @@ SANITY_TESTED_DISTROS ?= " \
             opensuseleap-15.4 \n \
             almalinux-8.8 \n \
             almalinux-9.2 \n \
+            rocky-9 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1


