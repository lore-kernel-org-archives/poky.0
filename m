Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3913C25B67
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 14:44:17 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.72687.1698331452725473016
 for <poky@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 07:44:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Dtil9GpL;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id BC3F840007;
	Thu, 26 Oct 2023 14:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1698331450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=X3w8Ay6xRdWZOGZWFmohUWWLCDPl47cz8lZMSxIaYIQ=;
	b=Dtil9GpLclBjRLOOjiP0krrTjOrqA06JSnKHYgNfxUOXr0waTd6fqz+spk263nHMD040jK
	OFDoHa+b/M/8fWiJ6usyAlgHQF0bwG9BnF7AGPUMiVnrgWjSRsm2pUwWaaTjrkHbq/5ppy
	89joKlplFM+mphqw0oOrnCv78lZm0XG6F2tRALn+V4EK1ww9EQV1fCIIbPN5SBd85j/HbD
	ZL7jAq3WvbwvWejw6lFK/b9uarIjQYCeDO1nZnxMte3lthn3RcPp9DNHPu9QCaO5gR8WPw
	5f2wMe8mykZUwyLSZpVafNYU0SOoTM16/lboxW+ov8x1eH+KqxN6pJ9s21wZcA==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] local.conf.sample: remove mips edgerouter machine
Date: Thu, 26 Oct 2023 16:44:08 +0200
Message-Id: <20231026144408.1944899-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 26 Oct 2023 14:44:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13193

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

No longer supported since
https://git.yoctoproject.org/poky/commit/?id=0c64d0e4317e3749f7f7ed9ecd5d08bbb0cedc9e

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/templates/default/local.conf.sample | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-poky/conf/templates/default/local.conf.sample
index 44b851b..5fb6944 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -33,7 +33,6 @@
 #MACHINE ?= "beaglebone-yocto"
 #MACHINE ?= "genericx86"
 #MACHINE ?= "genericx86-64"
-#MACHINE ?= "edgerouter"
 #
 # This sets the default machine to be qemux86-64 if no other machine is selected:
 MACHINE ??= "qemux86-64"
-- 
2.34.1


