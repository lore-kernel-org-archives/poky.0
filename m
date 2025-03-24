Return-Path: <ejo@pengutronix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2C4EC36005
	for <webhook@archiver.kernel.org>; Mon, 24 Mar 2025 10:41:51 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
 by mx.groups.io with SMTP id smtpd.web10.36364.1742812908038063911
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Mar 2025 03:41:48 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: pengutronix.de, ip: 185.203.201.7, mailfrom: ejo@pengutronix.de)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1twfFa-0002jG-DJ; Mon, 24 Mar 2025 11:41:46 +0100
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1twfFZ-001OX3-2H;
	Mon, 24 Mar 2025 11:41:46 +0100
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1twfFa-00G3OE-0G;
	Mon, 24 Mar 2025 11:41:46 +0100
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: poky@lists.yoctoproject.org
Cc: yocto@pengutronix.de
Subject: [PATCH] poky: fix remove/append override syntax in comment
Date: Mon, 24 Mar 2025 11:41:35 +0100
Message-Id: <20250324104135.3826255-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: poky@lists.yoctoproject.org
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Mar 2025 10:41:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13577

The examples for changing WARN_QA and ERROR_QA still use the old
('_'-style) override syntax.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 09c9f41..c3cc127 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -56,8 +56,8 @@ INHERIT += "poky-sanity"
 # QA check settings - a little stricter than the OE-Core defaults
 # (none currently necessary as we now match OE-Core)
 #WARN_TO_ERROR_QA = "X"
-#WARN_QA_remove = "${WARN_TO_ERROR_QA}"
-#ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
+#WARN_QA:remove = "${WARN_TO_ERROR_QA}"
+#ERROR_QA:append = " ${WARN_TO_ERROR_QA}"
 
 require conf/distro/include/poky-world-exclude.inc
 require conf/distro/include/no-static-libs.inc
-- 
2.39.5


