Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37D37C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 11:15:49 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web10.49379.1703157343152534029
 for <poky@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 03:15:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=phXdoglJ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6114FC0002;
	Thu, 21 Dec 2023 11:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703157341;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UXEy+Tf2fg7t1bCKD1d4fgSmehTjbWrQM+YZ/f8a7Sc=;
	b=phXdoglJwR1sG/ITOP/liov5JWJN04CI/UnreK06PxQpz9PvWU4RXQ78+07VynEznAuJFW
	cR4XaOefsXWIwTZcok2/7xfyvtzn4FS9KNBkgIdqfVSU+IkYV+ZWJCYwQV28DX0XLiB8Ez
	uV/5Rb0NLXXTUai7ZKpi2zXtO3IV1KKmWgLjsrk4Ih6nFrOnox5rOM2PszVxeuY+jY06h1
	kKWwmyB9/OId0wKb544m8R7G4Cu0VZpkbbCP5l6R5XsbqOqppmamrfDBDsUyuG15JqEHWo
	9MM3NgmbnsDAvDCSNOoIaEHkExVBOQFWxA9EIXSW3VSWEaVI6wC3MvTOqlwH5g==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [dunfell][PATCH v2] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Thu, 21 Dec 2023 12:15:36 +0100
Message-Id: <20231221111536.750434-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 21 Dec 2023 11:15:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13233

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
index 5fabf67..2b186fe 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -47,6 +47,7 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
             fedora-37 \n \
+            fedora-38 \n \
             debian-11 \n \
             opensuseleap-15.3 \n \
             almalinux-8.8 \n \
-- 
2.34.1


