Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FB26C001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:51:42 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.71870.1691524300025761778
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:51:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=U8+g3TEX;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 006931BF204;
	Tue,  8 Aug 2023 19:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691524298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UaPYv/NdyZFwLv7tKkwsw9PkD4iJZw9tG0/6eVSKFu8=;
	b=U8+g3TEX5SIJoStPzI4j/UnxudTKCyjO8j0XO+5ZYdigV4Aj8QOeLZrfRP6/ix++jkik4U
	6BUwJLDGFVxxZaLaHfNtJwBG+260jYyk551hXW5PtTF85LuwnvQ7I+T99FSsMZFb73/W7D
	W30JqxS1fSzvSuV7XOZJDayCMgP4V6xCHgB8B+pzdW7+pprrq7QvlueXhNBok57TZ9S+pQ
	2EAVFYcosPVQHjB4wBUZPm3Rni8jNo52ZbuM5B9DZdiRMHZ4dubeepEhN35dJmnFKex2w+
	bFUBMEH+UJSkmYkUEk1GuXRF/qM8mgf+MEAR6mv7zMNbiVaOr9WAZZhbLO+4ww==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH v2] [mickledore] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue,  8 Aug 2023 21:51:35 +0200
Message-Id: <20230808195135.188828-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <17797FFBFB8C1BD8.10230@lists.yoctoproject.org>
References: <17797FFBFB8C1BD8.10230@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:51:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13121

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>

---

Changes in V2:
- Replace "make" by "match" in commit title
---
 meta-poky/conf/distro/poky.conf | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index d17e8bd..8101261 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -38,13 +38,16 @@ SANITY_TESTED_DISTROS ?= " \
             ubuntu-18.04 \n \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
-            fedora-36 \n \
+            ubuntu-22.10 \n \
             fedora-37 \n \
+            fedora-38 \n \
+            centosstream-8 \n \
             debian-11 \n \
+            debian-12 \n \
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


