Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1614E77188
	for <webhook@archiver.kernel.org>; Tue, 24 Dec 2024 13:12:33 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.32966.1735045951573498228
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Dec 2024 05:12:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=C9z6h0Gr;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: antonin.godard@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 68BFB1BF204;
	Tue, 24 Dec 2024 13:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735045949;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=vk/ZYdbLfEEQGZ9w45LHk78pYQ1DMIybJEjHy8zP9zI=;
	b=C9z6h0GrLSflQen8QPDqX9Xk/5qMDmf788ge9BrR76AOmCs/aftx2yZANrjggXLB8PaJkj
	JuMjToa+zVAsRP7O90DAUp6xJ+ve/GMJKJeVal15c95BJ/8DvcAxzIy/410YN4UX9Fl1TT
	sYacljajbT4grL6u3rkWB/TZIUveJHW/hpAHTX5WamyTQd5ZWdOkEQl3rp/kJrn1pUb2Si
	ThmEtJhYaKbvcgg3c9mQnsv8//VHJsInslLd+PKcU+ZlwrgtJrA+x+wMZj4ksCbXrAAzgK
	P9SkalwB7hhiZS/m8DoIykhr3g0IcZuxDyMs2HGF0t8IlORkzO3KXaH6AOzMvg==
From: Antonin Godard <antonin.godard@bootlin.com>
To: poky@lists.yoctoproject.org
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
	Steve Sakoman <steve@sakoman.com>,
	Antonin Godard <antonin.godard@bootlin.com>
Subject: [styhead][PATCH] poky.conf: add new tested distros
Date: Tue, 24 Dec 2024 14:09:27 +0100
Message-ID: <20241224130933.1810659-1-antonin.godard@bootlin.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: antonin.godard@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Dec 2024 13:12:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13499

These are currently tested on the autobuilder for Styhead.

Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
---
 meta-poky/conf/distro/poky.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index b17bee5..950ac22 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -47,7 +47,9 @@ SANITY_TESTED_DISTROS ?= " \
             opensuseleap-15.5 \n \
             opensuseleap-15.6 \n \
             almalinux-8.8 \n \
+            almalinux-8.10 \n \
             almalinux-9.2 \n \
+            almalinux-9.4 \n \
             rocky-9 \n \
             "
 # add poky sanity bbclass

