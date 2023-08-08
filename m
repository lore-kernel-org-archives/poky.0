Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE4F3C001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:46:21 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.71731.1691523976638928221
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:46:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dOzX24dd;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 2C1AA20002;
	Tue,  8 Aug 2023 19:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691523974;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=iX4rNZtS4c/HkU1xZ5RH7M4zwrHgRzyJHcdt6/Q+PSA=;
	b=dOzX24ddVXUyY/COd3mc69hFVEqSZ1dei5QXnPQ2NwicsqFk1gtQww6RPfC1qleY3M4cKZ
	0DDKl6fCakrz7/iTvf0QCE7OkdA3wWkBaCNwMEk907KgjTb3O6ueMxiRYRwfCZ/uGLQJv1
	+ouwv8oJr/6T/5cjSSkPItO9uf0myesDyObM6QRkziztiI7KkJk6gZeu6bec+zUZBgggRr
	ihnjvg6OwdsWQIGHFV3C8Kc2b37oJhd9QuyF53G3JqDzAXAVlRDa76f78g3Zskr4vDAIZL
	iKn0JymmUAfBpRPhmf7sEVBd3deTAjG9YjFP9U7q8KCxiajvYbREitgfkvJocQ==
From: michael.opdenacker@bootlin.com
To: poky@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: [PATCH] [dunfell] poky.conf: update SANITY_TESTED_DISTROS to match autobuilder
Date: Tue,  8 Aug 2023 21:46:08 +0200
Message-Id: <20230808194608.188250-1-michael.opdenacker@bootlin.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:46:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13120

From: Michael Opdenacker <michael.opdenacker@bootlin.com>

From the intersection of the list of allowed workers
on https://git.yoctoproject.org/yocto-autobuilder2/tree/config.py
and the active workers on
https://autobuilder.yoctoproject.org/typhoon/#/workers

Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 20 ++------------------
 1 file changed, 2 insertions(+), 18 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 6d0412f..5874969 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -43,29 +43,13 @@ SANITY_TESTED_DISTROS ?= " \
             poky-2.7 \n \
             poky-3.0 \n \
             poky-3.1 \n \
-            ubuntu-16.04 \n \
             ubuntu-18.04 \n \
-            ubuntu-19.04 \n \
             ubuntu-20.04 \n \
             ubuntu-22.04 \n \
-            fedora-30 \n \
-            fedora-31 \n \
-            fedora-32 \n \
-            fedora-33 \n \
-            fedora-34 \n \
-            fedora-35 \n \
-            fedora-36 \n \
-            centos-7 \n \
-            centos-8 \n \
-            debian-8 \n \
-            debian-9 \n \
-            debian-10 \n \
+            fedora-37 \n \
             debian-11 \n \
-            opensuseleap-15.1 \n \
-            opensuseleap-15.2 \n \
             opensuseleap-15.3 \n \
-            almalinux-8.5 \n \
-            almalinux-8.7 \n \
+            almalinux-8.8 \n \
             "
 # add poky sanity bbclass
 INHERIT += "poky-sanity"
-- 
2.34.1


